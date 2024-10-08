-- RIPPLE_CARRY_ADDER RCA
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ripple_carry_adder is
    generic (
        WIDTH : integer := 10
    );
    Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           sum : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end ripple_carry_adder;

architecture RTL of ripple_carry_adder is

    -- Dichiarazione componenti
    component full_adder is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               sum : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;
    
    -- Segnali interni
    signal carry : STD_LOGIC_VECTOR(WIDTH downto 0);
begin
    carry(0) <= '0';

    gen_adders: for i in 0 to WIDTH-1 generate
        fa: full_adder port map (
            a => a(i),
            b => b(i),
            cin => carry(i),
            sum => sum(i),
            cout => carry(i+1)
        );
    end generate;
end RTL;
