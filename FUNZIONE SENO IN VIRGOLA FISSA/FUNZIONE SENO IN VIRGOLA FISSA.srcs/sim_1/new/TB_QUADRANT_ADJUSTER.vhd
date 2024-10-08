library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_quadrant_adjuster is
--  Port ( );
end TB_quadrant_adjuster;

architecture Behavioral of TB_quadrant_adjuster is
    
    -- Dichiarazione componenti 
    component quadrant_adjuster is
        Port ( sine_value : in STD_LOGIC_VECTOR(9 downto 0);
               quadrant : in STD_LOGIC_VECTOR(1 downto 0);
               adjusted_sine : out STD_LOGIC_VECTOR(9 downto 0));
    end component;

    -- Segnali interni
    signal sine_value_tb, adjusted_sine_tb : STD_LOGIC_VECTOR(9 downto 0);
    signal quadrant_tb : STD_LOGIC_VECTOR(1 downto 0);
    
begin

    DUT: quadrant_adjuster port map (
           sine_value => sine_value_tb,
           quadrant => quadrant_tb,
           adjusted_sine => adjusted_sine_tb
        );
    
    -- Test vero e proprio del componente
    Test_process: process
    begin	
        -- angolo inserito = 0°
        sine_value_tb <= "0000000000";   -- sin(0°)
        quadrant_tb <= "00";
        wait for 10 ns;
        
        -- angolo inserito = 180°
        sine_value_tb <= "0000000000";   -- sin(0°)
        quadrant_tb <= "01";
        wait for 10 ns;

        
        -- angolo inserito = 352°
        sine_value_tb <= "0000100011";    -- sin(8°)
        quadrant_tb <= "11";
        wait for 10 ns;
        
        -- angolo inserito = 172°
        sine_value_tb <= "0000100011";    -- sin(8°)
        quadrant_tb <= "01";
        wait for 10 ns;
        
        -- angolo inserito = 236°
        sine_value_tb <= "0011010100";   -- sin(56°)
        quadrant_tb <= "10";
        wait for 10 ns;
        
    end process;

end Behavioral;
