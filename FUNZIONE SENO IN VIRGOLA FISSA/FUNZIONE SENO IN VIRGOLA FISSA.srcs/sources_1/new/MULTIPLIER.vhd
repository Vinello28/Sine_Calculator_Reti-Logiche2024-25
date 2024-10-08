-- MULTIPLIER (prodotti parziali)


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier is
    generic (
        A_WIDTH : integer := 10;
        B_WIDTH : integer := 3
    );
    Port ( a : in STD_LOGIC_VECTOR(A_WIDTH-1 downto 0);
           b : in STD_LOGIC_VECTOR(B_WIDTH-1 downto 0);
           product : out STD_LOGIC_VECTOR(A_WIDTH+B_WIDTH-1 downto 0));
end multiplier;

architecture RTL of multiplier is

    -- Dichiarazione componenti
    component ripple_carry_adder is
        generic (
            WIDTH : integer := A_WIDTH+B_WIDTH
        );
        Port ( a : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               b : in STD_LOGIC_VECTOR(WIDTH-1 downto 0);
               sum : out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
    end component;

    --Segnali interni
    type partial_product_array is array (0 to B_WIDTH-1) of STD_LOGIC_VECTOR(A_WIDTH+B_WIDTH-1 downto 0);
    signal partial_products : partial_product_array;
    signal sum_array : partial_product_array;
begin
    -- Generazione dei prodotti parziali
    gen_partial_products: for i in 0 to B_WIDTH-1 generate
        partial_products(i) <= (A_WIDTH+B_WIDTH-1 downto A_WIDTH+i => '0') & 
                               (a and (A_WIDTH-1 downto 0 => b(i))) & 
                               (i-1 downto 0 => '0') when i > 0 else
                               (A_WIDTH+B_WIDTH-1 downto A_WIDTH => '0') & 
                               (a and (A_WIDTH-1 downto 0 => b(i)));
    end generate;

    -- Primo sommatore (RCA)
    first_adder: ripple_carry_adder
        generic map (WIDTH => A_WIDTH+B_WIDTH)
        port map (
            a => partial_products(0),
            b => partial_products(1),
            sum => sum_array(0)
        );

    -- Genera i restanti RCA
    gen_adders: for i in 1 to B_WIDTH-2 generate
        adder: ripple_carry_adder
            generic map (WIDTH => A_WIDTH+B_WIDTH)
            port map (
                a => sum_array(i-1),
                b => partial_products(i+1),
                sum => sum_array(i)
            );
    end generate;

    -- Assegnazione prodotto finale
    product <= sum_array(B_WIDTH-2) when B_WIDTH > 1 else partial_products(0);
end RTL;
