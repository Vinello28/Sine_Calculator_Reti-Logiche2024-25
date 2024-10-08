-- COMPARATORE '<'

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity less_than_comparator is
    generic (
        WIDTH : integer := 9
    );
    Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           result : out STD_LOGIC);
end less_than_comparator;

architecture RTL of less_than_comparator is
    signal equal_so_far : STD_LOGIC_VECTOR(WIDTH downto 0);
    signal less_than_so_far : STD_LOGIC_VECTOR(WIDTH downto 0);
begin
    equal_so_far(WIDTH) <= '1';
    less_than_so_far(WIDTH) <= '0';

    gen_comp: for i in WIDTH-1 downto 0 generate
        equal_so_far(i) <= equal_so_far(i+1) and (a(i) xnor b(i)); -- verifica se tutti i bit da i+1 in su sono uguali e se il bit corrente è uguale
        less_than_so_far(i) <= less_than_so_far(i+1) or (equal_so_far(i+1) and (not a(i)) and b(i)); -- verifica se a è minore di b considerando i bit da i in su
    end generate;

    result <= less_than_so_far(0);
end RTL;