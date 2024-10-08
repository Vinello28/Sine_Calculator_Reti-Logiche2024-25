-- SHIFTER_RIGHT


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter_right is
    generic (
        INPUT_WIDTH : integer := 13;
        SHIFT_AMOUNT : integer := 3;
        OUTPUT_WIDTH : integer := 10
    );
    Port ( 
        input : in STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0);
        output : out STD_LOGIC_VECTOR(OUTPUT_WIDTH-1 downto 0)
    );
end shifter_right;

architecture RTL of shifter_right is
begin
    output <= input(INPUT_WIDTH-1 downto SHIFT_AMOUNT);
end RTL;