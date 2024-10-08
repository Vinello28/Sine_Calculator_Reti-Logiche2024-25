library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_bypass_logic is
end TB_bypass_logic;

architecture Behavioral of TB_bypass_logic is

     -- Dichiarazione componenti
    component bypass_logic is
        Port ( normalized_angle : in STD_LOGIC_VECTOR(6 downto 0);
               bypass : out STD_LOGIC);
    end component;

    -- Segnali interni
    signal angle_tb : STD_LOGIC_VECTOR(6 downto 0);
    signal bypass_tb : STD_LOGIC;

begin

    DUT: bypass_logic port map (
        normalized_angle => angle_tb,
        bypass => bypass_tb
    );

    -- Test vero e proprio del componente
    Test_process: process
    begin	
        
        angle_tb <= "0000000";  -- 0°
        wait for 5 ns;
        
        angle_tb <= "1011000";  -- 88°
        wait for 5 ns;

        angle_tb <= "1011001";  -- 89°
        wait for 5 ns;
       
        angle_tb <= "0011111";  -- 31°
        wait for 5 ns;
        
        angle_tb <= "0011100";  -- 28°
        wait for 5 ns;
        
        angle_tb <= "0000010";  -- 2°
        wait for 5 ns;
        
        angle_tb <= "1011010";  -- 90°
        wait for 5 ns;
        
        angle_tb <= "0001000";   -- 8°
        wait for 5 ns;

        angle_tb <= "0111000";  -- 56°
        wait for 5 ns;
        
        angle_tb <= "0001111";   -- 15°
        wait for 5 ns;
        
    end process;

end Behavioral;