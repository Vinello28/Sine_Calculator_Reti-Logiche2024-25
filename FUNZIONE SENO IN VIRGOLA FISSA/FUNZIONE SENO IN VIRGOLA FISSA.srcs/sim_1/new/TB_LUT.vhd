library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_lookup_table is
--  Port ( );
end TB_lookup_table;

architecture Behavioral of TB_lookup_table is

    -- Dichiarazione componenti
    component lookup_table is
        Port ( angle : in STD_LOGIC_VECTOR(6 downto 0);
               sine_value : out STD_LOGIC_VECTOR(9 downto 0));
    end component;
    
    -- Segnali interni
    signal sine_tb : STD_LOGIC_VECTOR(9 downto 0);
    signal angle_tb : STD_LOGIC_VECTOR(6 downto 0);

begin

    DUT: lookup_table port map (
        angle => angle_tb, 
        sine_value => sine_tb
    );
    
    -- Test vero e proprio del componente
    Test_process: process
    begin	
        -- angoli in input
        angle_tb <= "0000000";  -- 0°
        wait for 10 ns;
        
        angle_tb <= "1011010";  -- 90°
        wait for 10 ns;
        
        angle_tb <= "0110000";  -- 48°
        wait for 10 ns;
        
        angle_tb <= "1011000";  -- 88°
        wait for 10 ns;

        angle_tb <= "1011001";  -- 89°
        wait for 10 ns;
       
        angle_tb <= "0100000";  -- 32°
        wait for 10 ns;
        
   end process;
   
end Behavioral;
