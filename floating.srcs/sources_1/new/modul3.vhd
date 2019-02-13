----------------------------------------------------------------------------------
-- Nume : Niculescu
-- Prenume : Mihai Alexandru
-- Grupa : 335CB
--
-- Project : floating point multiplication
-- File : modul3.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modul3 is
    Port (
            ein : in std_logic_vector(7 downto 0);
            val2 : in std_logic_vector(7 downto 0);
            eout : out std_logic_vector(7 downto 0)
         );
end modul3;

architecture Behavioral of modul3 is

    component cla8bit is
    Port ( 
            a    : in std_logic_vector(7 downto 0);
            b    : in std_logic_vector(7 downto 0);
            cin  : in std_logic;
            sum  : out std_logic_vector(7 downto 0);
            cout : out std_logic
          );
    end component cla8bit;

begin

    adder: cla8bit port map(
                            a => ein,
                            b => val2,
                            cin => '0',
                            sum => eout,
                            cout => open
                            );

end Behavioral;
