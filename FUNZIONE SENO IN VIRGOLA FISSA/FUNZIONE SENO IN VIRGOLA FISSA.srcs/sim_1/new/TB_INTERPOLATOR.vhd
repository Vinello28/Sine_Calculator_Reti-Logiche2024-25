library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TB_interpolator is
--  Port ( );
end TB_interpolator;

architecture Behavioral of TB_interpolator is
    
    -- Dichiarazione componenti 
    component interpolator is
        Port ( lower_angle_sine : in STD_LOGIC_VECTOR(9 downto 0);
               upper_angle_sine : in STD_LOGIC_VECTOR(9 downto 0);
               fraction : in STD_LOGIC_VECTOR(2 downto 0);
               interpolated_sine : out STD_LOGIC_VECTOR(9 downto 0));
    end component;

    -- Segnali interni
    signal low_angle_tb, up_angle_tb, interpolated_sine_tb : STD_LOGIC_VECTOR(9 downto 0);
    signal fraction_tb : STD_LOGIC_VECTOR(2 downto 0);
    
begin

    DUT: interpolator port map (
        lower_angle_sine => low_angle_tb,
        upper_angle_sine => up_angle_tb,
        fraction => fraction_tb,
        interpolated_sine => interpolated_sine_tb
    );
    
    -- Test vero e proprio del componente
    Test_process: process
    begin	
        -- angolo inserito = 2°
        low_angle_tb <= "0000000000";   -- sin(0°)
        up_angle_tb <= "0000100011";    -- sin(8°)
        fraction_tb <= "010";
        wait for 10 ns;
        
        -- angolo inserito = 6°
        low_angle_tb <= "0000000000";   -- sin(0°)
        up_angle_tb <= "0000100011";    -- sin(8°)
        fraction_tb <= "110";
        wait for 10 ns;
        
        -- angolo inserito = 51°
        low_angle_tb <= "0010111110";   -- sin(48°)
        up_angle_tb <= "0011010100";    -- sin(56°)
        fraction_tb <= "011";
        wait for 10 ns;
        
        -- angolo inserito = 55°
        low_angle_tb <= "0010111110";   -- sin(48°)
        up_angle_tb <= "0011010100";    -- sin(56°)
        fraction_tb <= "111";
        wait for 10 ns;
        
        -- angolo inserito = 83°
        low_angle_tb <= "0011111100";   -- sin(80°)
        up_angle_tb <= "0011111111";    -- sin(88°)
        fraction_tb <= "011";
        wait for 10 ns;
        
        -- angolo inserito = 86°
        low_angle_tb <= "0011111100";   -- sin(80°)
        up_angle_tb <= "0011111111";    -- sin(88°)
        fraction_tb <= "110";
        wait for 10 ns;
        
    end process;

end Behavioral;
