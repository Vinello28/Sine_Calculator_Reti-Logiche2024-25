library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_multiplier is
--  Port ( );
end TB_multiplier; 

architecture Behavioral of TB_multiplier is

    -- Dichiarazione componenti
    component multiplier is
        generic (
            A_WIDTH : integer := 10;
            B_WIDTH : integer := 3
        );
        Port ( a : in STD_LOGIC_VECTOR(A_WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(B_WIDTH-1 downto 0);
               product : out STD_LOGIC_VECTOR(A_WIDTH+B_WIDTH-1 downto 0));
    end component;
    
    -- Segnali interni
    signal a_tb : STD_LOGIC_VECTOR(9 downto 0);
    signal b_tb : STD_LOGIC_VECTOR(2 downto 0);
    signal prod_tb : STD_LOGIC_VECTOR(12 downto 0);
    

begin

    DUT: multiplier
        generic map (A_WIDTH => 10, B_WIDTH => 3)
        port map (
            a => a_tb,
            b => b_tb,
            product => prod_tb
        );
        
        -- Test vero e proprio del componente
        Test_process: process
        begin	
            
            a_tb <= "0010111110";
            b_tb <= "001";
            wait for 5ns;
            
            a_tb <= "0010111110";
            b_tb <= "010";
            wait for 5ns;
            
            a_tb <= "0010111110";
            b_tb <= "100";
            wait for 5ns;
            
            a_tb <= "0010111110";
            b_tb <= "111";
            wait for 5ns;
            
            a_tb <= "1010101110";
            b_tb <= "110";
            wait for 5ns;
            
            a_tb <= "1010101110";
            b_tb <= "000";
            wait for 5ns;
        
        end process;

end Behavioral;
