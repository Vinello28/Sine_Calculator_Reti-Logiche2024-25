-- ANGLE_ADJUSTER

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity angle_adjuster is
    Port ( angle : in STD_LOGIC_VECTOR(8 downto 0);
           quadrant : in STD_LOGIC_VECTOR(1 downto 0);
           adjusted_angle : out STD_LOGIC_VECTOR(6 downto 0));
end angle_adjuster;

architecture RTL of angle_adjuster is

    -- Dichiarazione componenti
    component subtractor is
        generic (
            WIDTH : integer := 9
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               diff : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    component mux4 is
        generic (
            WIDTH : integer := 7
        );
        Port ( input0 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               input1 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               input2 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               input3 : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sel : in STD_LOGIC_VECTOR(1 downto 0);
               output : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    -- Segnali interni
    signal quad_1, quad_2, quad_3, quad_4 : STD_LOGIC_VECTOR(8 downto 0);

    
begin
    -- Quadrante 1 (0-90°): nessuna modifica
    quad_1 <= angle;

    -- Quadrante 2 (91-180°): 180 - (angle - 90)
    sub_q2: subtractor
        generic map (WIDTH => 9)
        port map (
            a => "010110100", -- 180
            b => angle,
            diff => quad_2
        );

    -- Quadrante 3 (181-270°): angle - 180
    sub_q3: subtractor
        generic map (WIDTH => 9)
        port map (
            a => angle,
            b => "010110100", -- 180
            diff => quad_3
        );

    -- Quadrante 4 (271-359°): 360 - angle
    sub_q4: subtractor
        generic map (WIDTH => 9)
        port map (
            a => "101101000", -- 360
            b => angle,
            diff => quad_4
        );

    -- Selezione del valore corretto utilizzando il segnale 'quadrant'
    mux_4way: mux4
        generic map (WIDTH => 7)
        port map (
            input0 => quad_1 (6 downto 0),
            input1 => quad_2 (6 downto 0),
            input2 => quad_3 (6 downto 0),
            input3 => quad_4 (6 downto 0),
            sel => quadrant,
            output => adjusted_angle
        );
end RTL;
