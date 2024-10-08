-- SUBTRACTOR


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor is
    generic (
        WIDTH : integer := 10
    );
    Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           diff : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end subtractor;

architecture RTL of subtractor is

    -- Dichiarazione componenti
    component full_adder is
        Port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               cin : in STD_LOGIC;
               sum : out STD_LOGIC;
               cout : out STD_LOGIC);
    end component;

    -- Segnali interni
    signal not_b : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal carry : STD_LOGIC_VECTOR(WIDTH downto 0);
begin
    not_b <= not b;
    carry(0) <= '1';

    gen_subtractors: for i in 0 to WIDTH-1 generate
        fa: full_adder port map (
            a => a(i),
            b => not_b(i),
            cin => carry(i),
            sum => diff(i),
            cout => carry(i+1)
        );
    end generate;
end RTL;
