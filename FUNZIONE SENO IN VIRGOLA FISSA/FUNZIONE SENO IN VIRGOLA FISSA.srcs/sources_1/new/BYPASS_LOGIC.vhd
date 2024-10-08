-- BYPASS_LOGIC

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bypass_logic is
    Port ( normalized_angle : in STD_LOGIC_VECTOR(6 downto 0);
           bypass : out STD_LOGIC);
end bypass_logic;

architecture RTL of bypass_logic is

begin
    -- RC per determinare il segnale di selezione
    bypass <= '1' when (normalized_angle(2 downto 0) = "000") or 
                    (normalized_angle = "1011001") or 
                    (normalized_angle = "1011010") else '0';

end RTL;
