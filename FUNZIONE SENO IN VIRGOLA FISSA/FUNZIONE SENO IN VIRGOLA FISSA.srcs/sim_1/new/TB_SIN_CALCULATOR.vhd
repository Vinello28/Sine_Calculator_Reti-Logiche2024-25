library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_sine_calculator is
-- Port();
end TB_sine_calculator;

architecture Behavioral of TB_sine_calculator is

     -- Dichiarazione componenti
    component sine_calculator
        Port ( 
            clk : in STD_LOGIC;
            reset : in STD_LOGIC;
            angle : in STD_LOGIC_VECTOR(8 downto 0);
            sine_value : out STD_LOGIC_VECTOR(9 downto 0)
        );
    end component;

    -- Segnali interni
    signal clk_tb : STD_LOGIC := '0';
    signal reset_tb : STD_LOGIC := '0';
    signal angle_tb : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
    signal sine_value_tb : STD_LOGIC_VECTOR(9 downto 0);

    -- Periodo di Clock
    constant clk_period : time := 40 ns;

begin

    -- Clock process
    clk_process : process
    begin
        clk_tb <= '0';
        wait for clk_period / 2;
        clk_tb <= '1';
        wait for clk_period / 2;
    end process;

  
    DUT: sine_calculator
        port map (
            clk => clk_tb,
            reset => reset_tb,
            angle => angle_tb,
            sine_value => sine_value_tb
        );

    -- Test vero e proprio del componente
    Test_process: process
    begin	
        
        reset_tb <= '1';
        wait for clk_period;
        
        reset_tb <= '0';

        -- angoli in input
        angle_tb <= "000000000";  -- 0°
        wait for clk_period;
        
        angle_tb <= "001011000";  -- 88°
        wait for clk_period;

        angle_tb <= "001011001";  -- 89°
        wait for clk_period;
       
        angle_tb <= "000011111";  -- 31°
        wait for clk_period;
        
        angle_tb <= "010110010";  -- 178°
        wait for clk_period;
        
        angle_tb <= "010110100";  -- 180°
        wait for clk_period;

        angle_tb <= "100001010";  -- 266°
        wait for clk_period;
        
        angle_tb <= "100001110";  -- 270°
        wait for clk_period;
        
        angle_tb <= "111000000";  -- ERR (448)°
        wait for clk_period;
        
        angle_tb <= "000011100";  -- 28°
        wait for clk_period;
        
        angle_tb <= "100001000";  -- 264°
        wait for clk_period;
        
        angle_tb <= "000000010";  -- 2°
        wait for clk_period;
        
        angle_tb <= "001011010";  -- 90°
        wait for clk_period;
        
        angle_tb <= "000001000";   -- 8°
        wait for clk_period;
        
        angle_tb <= "100101110";  -- 302°
        wait for clk_period;
        
        angle_tb <= "000111000";  -- 56°
        wait for clk_period;
        
         angle_tb <= "000001111";   -- 15°
        wait for clk_period;
        
        angle_tb <= "100101100";  -- 300°
        wait for clk_period;
        
        angle_tb <= "111111111";  -- ERR (511°)
        wait for clk_period;

        angle_tb <= "101100111";  -- 359°
        wait for clk_period;
        
        wait;
    end process;

end Behavioral;