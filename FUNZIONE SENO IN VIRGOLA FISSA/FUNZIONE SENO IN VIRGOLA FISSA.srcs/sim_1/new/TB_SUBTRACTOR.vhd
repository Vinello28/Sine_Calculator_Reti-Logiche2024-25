library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_subtractor is
--  Port ( );
end TB_subtractor; 

architecture Behavioral of TB_subtractor is

    -- Dichiarazione componenti
    component subtractor is
        generic (
            WIDTH : integer := 9
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               diff : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;
    
        
    -- Segnali interni
    signal a_tb, b_tb, res_tb: STD_LOGIC_VECTOR(8 downto 0);
    

begin

    DUT: subtractor
        generic map (WIDTH => 9)
        port map (
            a => a_tb,
            b => b_tb,
            diff => res_tb
        );
        
        -- Test vero e proprio del componente
    Test_process: process
    begin	
        
        a_tb <= "010110100";  -- 180
        b_tb <= "010110010";  -- 178
        wait for 5 ns;
        
        a_tb <= "010110100";  -- 180
        b_tb <= "010110100";  -- 180
        wait for 5 ns;
        
        a_tb <= "101101000"; -- 360
        b_tb <= "100101010";  -- 298
        wait for 10 ns;
        
        a_tb <= "101101000"; -- 360
        b_tb <= "100001110";  -- 270
        wait for 10 ns;
        
    end process;

end Behavioral;
