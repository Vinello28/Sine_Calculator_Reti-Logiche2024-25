-- ANGLE_NORMALIZER

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity angle_normalizer is
    Port ( angle_in : in STD_LOGIC_VECTOR(8 downto 0);
           quadrant : out STD_LOGIC_VECTOR(1 downto 0);
           normalized_angle : out STD_LOGIC_VECTOR(6 downto 0));
end angle_normalizer;

architecture RTL of angle_normalizer is

    -- Dichiarazione componenti
    component less_than_comparator is
        generic (
            WIDTH : integer := 9
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               result : out STD_LOGIC);
    end component;

    component quadrant_detector is
        Port ( angle : in STD_LOGIC_VECTOR(8 downto 0);
               quadrant : out STD_LOGIC_VECTOR(1 downto 0));
    end component;

    component angle_adjuster is
        Port ( angle : in STD_LOGIC_VECTOR(8 downto 0);
               quadrant : in STD_LOGIC_VECTOR(1 downto 0);
               adjusted_angle : out STD_LOGIC_VECTOR(6 downto 0));
    end component;

    component mux2 is
        generic (
            WIDTH : integer := 1
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sel : in STD_LOGIC;
               output : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    -- Segnali interni
    signal angle_valid : STD_LOGIC;
    signal temp_quadrant : STD_LOGIC_VECTOR(1 downto 0);
    signal temp_adjusted_angle : STD_LOGIC_VECTOR(6 downto 0);

begin
    -- Sotto-moduli
    comp_less: less_than_comparator  -- utilizzato per validare l'input
        generic map (WIDTH => 9)
        port map (
            a => angle_in,
            b => "101101000",       -- "360"
            result => angle_valid
        );

    quad_detect: quadrant_detector  -- determina quadrante d'appartenenza dell'angolo
        port map (
            angle => angle_in,
            quadrant => temp_quadrant
        );

    angle_adj: angle_adjuster       -- componente che riduce l'angolo al primo quadrante
        port map (
            angle => angle_in,
            quadrant => temp_quadrant,
            adjusted_angle => temp_adjusted_angle
        );

    -- Output
    out_assign: mux2
    generic map (WIDTH => 7)
    port map (
        a => "0000000",
        b => temp_adjusted_angle,
        sel => angle_valid,
        output => normalized_angle
    );
    
    quad_assign: mux2
    generic map (WIDTH => 2)
    port map (
        a => "00",
        b => temp_quadrant,
        sel => angle_valid,
        output => quadrant
    );

end RTL;

