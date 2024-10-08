library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_ripple_carry_adder is
--  Port ( );
end TB_ripple_carry_adder; 

architecture Behavioral of TB_ripple_carry_adder is

    -- Dichiarazione componenti
    component ripple_carry_adder is
        generic (
            WIDTH : integer := 7
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sum : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;
    
        
    -- Segnali interni
    signal a_tb, b_tb, res_tb: STD_LOGIC_VECTOR(6 downto 0);
    

begin

    DUT: ripple_carry_adder
        generic map (WIDTH => 7)
        port map (
            a => a_tb,
            b => b_tb,
            sum => res_tb
        );
        
        -- Test vero e proprio del componente
    Test_process: process
    begin	
        b_tb <= "0001000";
        
        a_tb <= "0000000";  -- 0°
        wait for 5 ns;
       
        a_tb <= "0011111";  -- 31°
        wait for 5 ns;
        
        a_tb <= "0011100";  -- 28°
        wait for 5 ns;
        
        a_tb <= "0001000";   -- 8°
        wait for 5 ns;

        a_tb <= "0111000";  -- 56°
        wait for 5 ns;
        
    end process;

end Behavioral;
