library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
    generic (
        WIDTH : integer := 10
    );
    Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
           sel : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end mux2;

architecture RTL of mux2 is
begin
    process(a, b, sel)
    begin
        if sel = '0' then
            output <= a;
        else
            output <= b;
        end if;
    end process;
end RTL;
