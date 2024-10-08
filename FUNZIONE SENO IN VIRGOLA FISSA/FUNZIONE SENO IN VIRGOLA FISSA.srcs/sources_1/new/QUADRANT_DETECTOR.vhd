-- QUADRANT_DETECTOR

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity quadrant_detector is
    Port ( angle : in STD_LOGIC_VECTOR(8 downto 0);
           quadrant : out STD_LOGIC_VECTOR(1 downto 0));
end quadrant_detector;

architecture RTL of quadrant_detector is
    
    -- Dichiarazione componenti
    component less_than_comparator is
        generic (
            WIDTH : integer := 9
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               result : out STD_LOGIC);
    end component;
    
    -- Segnali interni
    signal less_than_90, less_than_180, less_than_270 : STD_LOGIC;
    
begin

    comp_90: less_than_comparator   -- controlla se si trova nel primo quadrante
        generic map (WIDTH => 9)
        port map (
            a => angle,
            b => "001011010", -- 90
            result => less_than_90
        );

    comp_180: less_than_comparator  -- controlla se si trova nel secondo quadrante
        generic map (WIDTH => 9)
        port map (
            a => angle,
            b => "010110100", -- 180
            result => less_than_180
        );

    comp_270: less_than_comparator  -- controlla se si trova nel terzo quadrante
        generic map (WIDTH => 9)
        port map (
            a => angle,
            b => "100001110", -- 270
            result => less_than_270
        );

    process(less_than_90, less_than_180, less_than_270)
    begin
        if less_than_90 = '1' then
            quadrant <= "00";
        elsif less_than_180 = '1' then
            quadrant <= "01";
        elsif less_than_270 = '1' then
            quadrant <= "10";
        else
            quadrant <= "11";  -- se l'angolo è maggiore di 270 gradi viene assegnato il quarto quadrante
        end if;
    end process;

end RTL;
