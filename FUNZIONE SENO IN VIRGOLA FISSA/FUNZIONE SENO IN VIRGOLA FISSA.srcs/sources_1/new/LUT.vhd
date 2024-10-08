-- LOOK-UP TABLE


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lookup_table is
    Port ( angle : in STD_LOGIC_VECTOR(6 downto 0);
           sine_value : out STD_LOGIC_VECTOR(9 downto 0));
end lookup_table;

architecture RTL of lookup_table is
    
    -- Dichiarazione componenti
    component mux3 is
        generic (
            WIDTH : integer := 9
        );
        Port ( input0 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               input1 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               input2 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sel : in STD_LOGIC_VECTOR(1 downto 0);
               output : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;
    
    component shifter_right is
        generic (
            INPUT_WIDTH : integer := 7;
            SHIFT_AMOUNT : integer := 3;
            OUTPUT_WIDTH : integer := 4
        );
        Port ( 
            input : in STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0);
            output : out STD_LOGIC_VECTOR(OUTPUT_WIDTH-1 downto 0)
        );
    end component;
    
    -- Segnali interni
    type sine_table_type is array (0 to 13) of STD_LOGIC_VECTOR(9 downto 0);
    constant sine_table : sine_table_type := (
        "0000000000", -- sin(0) = 0.00000000
        "0000100011", -- sin(8) ≈ 0.13 
        "0001000101", -- sin(16) ≈ 0.27
        "0001101000", -- sin(24) ≈ 0.40
        "0010000111", -- sin(32) ≈ 0.52
        "0010100100", -- sin(40) ≈ 0.64
        "0010111110", -- sin(48) ≈ 0.74
        "0011010100", -- sin(56) ≈ 0.82
        "0011100110", -- sin(64) ≈ 0.89
        "0011110011", -- sin(72) ≈ 0.95
        "0011111100", -- sin(80) ≈ 0.98
        "0011111111", -- sin(88) ≈ 0.9993
        "0011111111", -- sin(89) ≈ 0.9998
        "0100000000"  -- sin(90) = 1.00
    );
    
    -- Segnali interni
    signal angle_index, angle_index_temp : STD_LOGIC_VECTOR(3 downto 0);
    signal selector : STD_LOGIC_VECTOR(1 downto 0);
    

begin

    shifterR: shifter_right
        generic map (
            INPUT_WIDTH => 7,
            SHIFT_AMOUNT => 3,
            OUTPUT_WIDTH => 4
        )
        port map (
            input => angle,
            output => angle_index_temp
        );

    index: mux3 
    generic map (
        WIDTH => 4
    )
    port map (
        input0 => angle_index_temp,
        input1 => "1100",
        input2 => "1101",
        sel => selector,
        output => angle_index
    );

    -- RC per gestire i casi speciali (89 e 90)
    process(angle)
    begin
        if angle = "1011001" then  -- 89 in binario
            selector <= "01";  -- 12 in binario
        elsif angle = "1011010" then  -- 90 in binario
            selector <= "10";  -- 13 in binario
        else
            selector <= "00";
        end if;
    end process;

    -- RC di Look-up
    process(angle_index)
    begin
        case angle_index is
            when "0000" => sine_value <= sine_table(0);
            when "0001" => sine_value <= sine_table(1);
            when "0010" => sine_value <= sine_table(2);
            when "0011" => sine_value <= sine_table(3);
            when "0100" => sine_value <= sine_table(4);
            when "0101" => sine_value <= sine_table(5);
            when "0110" => sine_value <= sine_table(6);
            when "0111" => sine_value <= sine_table(7);
            when "1000" => sine_value <= sine_table(8);
            when "1001" => sine_value <= sine_table(9);
            when "1010" => sine_value <= sine_table(10);
            when "1011" => sine_value <= sine_table(11);
            when "1100" => sine_value <= sine_table(12);
            when "1101" => sine_value <= sine_table(13);
            when others => sine_value <= (others => '0');
        end case;
    end process;

end RTL;