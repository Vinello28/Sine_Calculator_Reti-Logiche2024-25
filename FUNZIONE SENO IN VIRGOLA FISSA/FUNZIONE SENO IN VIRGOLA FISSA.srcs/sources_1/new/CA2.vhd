-- TWOS_COMPLEMENT


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twos_complement is
    generic (
        WIDTH : integer := 10
    );
    Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           result : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end twos_complement;

architecture RTL of twos_complement is

    -- Dichiarazione componenti
    component ripple_carry_adder is
        generic (
            WIDTH : integer := 10
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sum : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    -- Segnali interni
    signal not_a : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal one : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
begin
    not_a <= not a;
    one <= (0 => '1', others => '0');

    add: ripple_carry_adder
        generic map (WIDTH => WIDTH)
        port map (
            a => not_a,
            b => one,
            sum => result
        );
end RTL;
