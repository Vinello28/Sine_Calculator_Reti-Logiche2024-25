library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_less_than_comparator is
--  Port ( );
end TB_less_than_comparator;

architecture Behavioral of TB_less_than_comparator is

    -- Dichiarazione componenti
    component less_than_comparator is
        generic (
            WIDTH : integer := 9
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               result : out STD_LOGIC);
    end component;
    
    -- Segnali interni
    signal a_tb, b_tb : STD_LOGIC_VECTOR(8 downto 0);
    signal res_tb : STD_LOGIC;

begin

    DUT: less_than_comparator 
        generic map (WIDTH => 9)
        port map (
            a => a_tb,
            b => b_tb,       
            result => res_tb
        );
        
     Test_process: process
     begin
        
        a_tb <= "101100110"; -- 358
        b_tb <= "101101000"; -- 360
        wait for 5 ns;
        
        a_tb <= "101101111"; -- 367
        b_tb <= "101101000"; -- 360
        wait for 5 ns;
        
        a_tb <= "000000011"; -- 3
        b_tb <= "111111111"; -- 511
        wait for 5 ns;
        
        a_tb <= "000000011"; -- 3
        b_tb <= "000000111"; -- 7
        wait for 5 ns;
     end process;


end Behavioral;
