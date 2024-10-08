-- sine_calculator (top_level)


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sine_calculator is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           angle : in STD_LOGIC_VECTOR(8 downto 0);  -- 0 to 359 degrees
           sine_value : out STD_LOGIC_VECTOR(9 downto 0));  -- 2.8 fixed point
end sine_calculator;

architecture RTL of sine_calculator is
 
    -- Dichiarazione componenti
    component angle_normalizer is
        Port ( angle_in : in STD_LOGIC_VECTOR(8 downto 0);
               quadrant : out STD_LOGIC_VECTOR(1 downto 0);
               normalized_angle : out STD_LOGIC_VECTOR(6 downto 0));
    end component;

    component lookup_table is
        Port ( angle : in STD_LOGIC_VECTOR(6 downto 0);
               sine_value : out STD_LOGIC_VECTOR(9 downto 0));
    end component;

    component quadrant_adjuster is
        Port ( sine_value : in STD_LOGIC_VECTOR(9 downto 0);
               quadrant : in STD_LOGIC_VECTOR(1 downto 0);
               adjusted_sine : out STD_LOGIC_VECTOR(9 downto 0));
    end component;

    component ripple_carry_adder is
        generic (
            WIDTH : integer := 7
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sum : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    component bypass_logic is
        Port ( normalized_angle : in STD_LOGIC_VECTOR(6 downto 0);
               bypass : out STD_LOGIC);
    end component;

    component interpolator is
        Port ( lower_angle_sine : in STD_LOGIC_VECTOR(9 downto 0);
               upper_angle_sine : in STD_LOGIC_VECTOR(9 downto 0);
               fraction : in STD_LOGIC_VECTOR(2 downto 0);
               interpolated_sine : out STD_LOGIC_VECTOR(9 downto 0));
    end component;

    -- Segnali interni
    signal angle_reg: STD_LOGIC_VECTOR(8 downto 0);
    signal quadrant: STD_LOGIC_VECTOR(1 downto 0);
    signal normalized_angle : STD_LOGIC_VECTOR(6 downto 0);
    
    signal lower_angle_sine, upper_angle_sine : STD_LOGIC_VECTOR(9 downto 0);
    signal interpolated_sine : STD_LOGIC_VECTOR(9 downto 0);
    signal fraction: STD_LOGIC_VECTOR(2 downto 0);
    signal upper_angle : STD_LOGIC_VECTOR(6 downto 0);
    signal eight : STD_LOGIC_VECTOR(6 downto 0) := "0001000";
    signal bypass_interpolation : STD_LOGIC;
    signal final_sine, sine_value_temp : STD_LOGIC_VECTOR(9 downto 0);
    
begin
    
    -- Registro di INPUT
    process(clk, reset)
    begin
        if reset = '1' then
            angle_reg <= (others => '0');
        elsif rising_edge(clk) then
            angle_reg <= angle;
        end if;
    end process;
    
    -- Normalizzazione dell'angolo in ingresso
    norm: angle_normalizer port map (
        angle_in => angle_reg,
        quadrant => quadrant,
        normalized_angle => normalized_angle
    );
    
    -- Verifica se effettuare il bypass dell'interpolazione
    bypass: bypass_logic port map (
        normalized_angle => normalized_angle,
        bypass => bypass_interpolation
    );
    
    -- Estrazione valore seno dell'angolo basso
    LUT_lower: lookup_table port map (
        angle => normalized_angle, 
        sine_value => lower_angle_sine
    );
    
    -- Calcola l'angolo superiore
    PLUS8: ripple_carry_adder
        generic map (WIDTH => 7)
        port map (
            a => normalized_angle,
            b => eight,
            sum => upper_angle
        );
    
    -- Preleva il seno dell'angolo superiore
    LUT_upper: lookup_table port map (
        angle => upper_angle, 
        sine_value => upper_angle_sine
    );
        
    fraction <= normalized_angle(2 downto 0);
    
    -- Interpolazione lineare
    interp: interpolator port map (
        lower_angle_sine => lower_angle_sine,
        upper_angle_sine => upper_angle_sine,
        fraction => fraction,
        interpolated_sine => interpolated_sine
    );
    
    -- Eventuale bypass
    final_sine <= lower_angle_sine when bypass_interpolation = '1' else interpolated_sine;
    
    -- Correzione del quadrante
    Adj: quadrant_adjuster port map (
           sine_value => final_sine,
           quadrant => quadrant,
           adjusted_sine => sine_value_temp
        );
    
    -- Registro di OUTPUT
    process(clk, reset)
    begin
        if reset = '1' then
            sine_value <= (others => '0');
        elsif falling_edge(clk) then
            sine_value <= sine_value_temp;
        end if;
    end process;

end RTL;
