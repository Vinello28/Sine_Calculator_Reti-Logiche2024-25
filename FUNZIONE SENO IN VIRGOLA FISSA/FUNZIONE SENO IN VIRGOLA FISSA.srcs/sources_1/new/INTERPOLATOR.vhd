library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity interpolator is
    Port ( lower_angle_sine : in STD_LOGIC_VECTOR(9 downto 0);
           upper_angle_sine : in STD_LOGIC_VECTOR(9 downto 0);
           fraction : in STD_LOGIC_VECTOR(2 downto 0);
           interpolated_sine : out STD_LOGIC_VECTOR(9 downto 0));
end interpolator;

architecture RTL of interpolator is

    -- Dichiarazione componenti
    component subtractor is
        generic (
            WIDTH : integer := 10
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               diff : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    component multiplier is
        generic (
            A_WIDTH : integer := 10;
            B_WIDTH : integer := 3
        );
        Port ( a : in STD_LOGIC_VECTOR(A_WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(B_WIDTH-1 downto 0);
               product : out STD_LOGIC_VECTOR(A_WIDTH+B_WIDTH-1 downto 0));
    end component;
    
    component shifter_right is
        generic (
            INPUT_WIDTH : integer := 13;
            SHIFT_AMOUNT : integer := 3;
            OUTPUT_WIDTH : integer := 10
        );
        Port ( 
            input : in STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0);
            output : out STD_LOGIC_VECTOR(OUTPUT_WIDTH-1 downto 0)
        );
    end component;

    component ripple_carry_adder is
        generic (
            WIDTH : integer := 10
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sum : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    signal diff : STD_LOGIC_VECTOR(9 downto 0);
    signal product : STD_LOGIC_VECTOR(12 downto 0);
    signal scaled_diff : STD_LOGIC_VECTOR(9 downto 0);

begin
    sub: subtractor
        generic map (WIDTH => 10)
        port map (
            a => upper_angle_sine,
            b => lower_angle_sine,
            diff => diff
        );

    mul: multiplier
        generic map (A_WIDTH => 10, B_WIDTH => 3)
        port map (
            a => diff,
            b => fraction,
            product => product
        );

    shifter: shifter_right
        generic map (
            INPUT_WIDTH => 13,
            SHIFT_AMOUNT => 3,
            OUTPUT_WIDTH => 10
        )
        port map (
            input => product,
            output => scaled_diff
        );
    
    add: ripple_carry_adder
        generic map (WIDTH => 10)
        port map (
            a => lower_angle_sine,
            b => scaled_diff,
            sum => interpolated_sine
        );

end RTL;