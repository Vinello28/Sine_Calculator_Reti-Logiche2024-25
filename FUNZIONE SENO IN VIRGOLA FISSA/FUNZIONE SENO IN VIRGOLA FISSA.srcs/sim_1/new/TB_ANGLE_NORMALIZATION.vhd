library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_angle_normalizer is
--  Port ( );
end TB_angle_normalizer;

architecture Behavioral of TB_angle_normalizer is

    -- Dichiarazione componenti
    component angle_normalizer is
        Port ( angle_in : in STD_LOGIC_VECTOR(8 downto 0);
               quadrant : out STD_LOGIC_VECTOR(1 downto 0);
               normalized_angle : out STD_LOGIC_VECTOR(6 downto 0));
    end component;
    
    signal angle_tb : STD_LOGIC_VECTOR(8 downto 0);
    signal quad_tb : STD_LOGIC_VECTOR(1 downto 0);
    signal normalized_angle_tb : STD_LOGIC_VECTOR(6 downto 0);

begin

    DUT: angle_normalizer port map (
        angle_in => angle_tb,
        quadrant => quad_tb,
        normalized_angle => normalized_angle_tb
    );
    
    -- Test vero e proprio del componente
    Test_process: process
    begin	
        -- angoli in input
        angle_tb <= "000000000";  -- 0 degrees
        wait for 10 ns;
        
        angle_tb <= "001011000";  -- 88 degrees
        wait for 10 ns;

        angle_tb <= "001011001";  -- 89 degrees
        wait for 10 ns;
       
        angle_tb <= "000011111";  -- 31 degrees
        wait for 10 ns;
        
        angle_tb <= "010110010";  -- 178 degrees
        wait for 10 ns;
        
        angle_tb <= "010110100";  -- 180 degrees
        wait for 10 ns;

        angle_tb <= "100101010";  -- 298 degrees
        wait for 10 ns;
        
        angle_tb <= "100001110";  -- 270 degrees
        wait for 10 ns;
        
        angle_tb <= "111000000";  -- ERR (448)degrees
        wait for 10 ns;
        
        angle_tb <= "000011100";  -- 28 degrees
        wait for 10 ns;
        
        angle_tb <= "100001000";  -- 264 degrees
        wait for 10 ns;
        
   end process;
   
end Behavioral;
