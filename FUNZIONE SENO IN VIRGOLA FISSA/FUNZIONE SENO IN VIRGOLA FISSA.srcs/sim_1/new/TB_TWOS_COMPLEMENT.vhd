library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_twos_complement is
--  Port ( );
end TB_twos_complement; 

architecture Behavioral of TB_twos_complement is

    -- Dichiarazione componenti
    component twos_complement is
        Port ( a : in STD_LOGIC_VECTOR(9 downto 0);
               result : out STD_LOGIC_VECTOR(9 downto 0));
    end component;
    
    -- Segnali interni
    signal a_tb, res_tb: STD_LOGIC_VECTOR(9 downto 0);
    

begin

    DUT: twos_complement port map (
        a => a_tb,
        result => res_tb
    );
        
        -- Test vero e proprio del componente
        Test_process: process
        begin	
            
            a_tb <= "0010111110";
            wait for 5ns;
            
            a_tb <= "0010101110";
            wait for 5ns;
            
            a_tb <= "0100000000";
            wait for 5ns;
        
        end process;

end Behavioral;
