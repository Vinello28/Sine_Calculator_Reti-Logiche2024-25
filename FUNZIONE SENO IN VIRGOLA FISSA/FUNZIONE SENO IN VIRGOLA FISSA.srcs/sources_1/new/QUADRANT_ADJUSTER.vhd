-- QUADRANT_ADJUSTER


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity quadrant_adjuster is
    Port ( sine_value : in STD_LOGIC_VECTOR(9 downto 0);
           quadrant : in STD_LOGIC_VECTOR(1 downto 0);
           adjusted_sine : out STD_LOGIC_VECTOR(9 downto 0));
end quadrant_adjuster;

architecture RTL of quadrant_adjuster is

    -- Dichiarazione componenti
    component twos_complement is
        Port ( a : in STD_LOGIC_VECTOR(9 downto 0);
               result : out STD_LOGIC_VECTOR(9 downto 0));
    end component;

     component mux2 is
        generic (
            WIDTH : integer := 10
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sel : in STD_LOGIC;
               output : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;
    
    component shifter_right is
        generic (
            INPUT_WIDTH : integer := 2;
            SHIFT_AMOUNT : integer := 1;
            OUTPUT_WIDTH : integer := 1
        );
        Port ( 
            input : in STD_LOGIC_VECTOR(INPUT_WIDTH-1 downto 0);
            output : out STD_LOGIC_VECTOR(OUTPUT_WIDTH-1 downto 0)
        );
    end component;

    -- Segnali interni
    signal negated_sine : STD_LOGIC_VECTOR(9 downto 0);
    signal selector : STD_LOGIC_VECTOR(0 downto 0);
    
begin

    signalSel: shifter_right
        generic map (
            INPUT_WIDTH => 2,
            SHIFT_AMOUNT => 1,
            OUTPUT_WIDTH => 1
        )
        port map (
            input => quadrant,
            output => selector
        );
    
    
    neg: twos_complement port map (
        a => sine_value,
        result => negated_sine
    );

    mux: mux2
    generic map (WIDTH => 10)
    port map (
        a => sine_value,
        b => negated_sine,
        sel => selector(0),
        output => adjusted_sine
    );

end RTL;
