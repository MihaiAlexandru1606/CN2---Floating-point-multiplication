----------------------------------------------------------------------------------
-- Nume : Niculescu
-- Prenume : Mihai Alexandru
-- Grupa : 335CB
--
-- Project : floating point multiplication
-- File : modul1.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modul1 is
    Port (
            e1  : in std_logic_vector(7 downto 0);
            e2  : in std_logic_vector(7 downto 0);
            e   : out std_logic_vector(7 downto 0);
            typ : out std_logic_vector(1 downto 0)
          );
end modul1;

architecture Behavioral of modul1 is
    
    component cla8bit is
    Port ( 
            a    : in std_logic_vector(7 downto 0);
            b    : in std_logic_vector(7 downto 0);
            cin  : in std_logic;
            sum  : out std_logic_vector(7 downto 0);
            cout : out std_logic
          );
    end component cla8bit;

    signal aux1 : std_logic_vector(1 downto 0);
    signal aux2 : std_logic_vector(1 downto 0);
    signal sumAux : std_logic_vector(7 downto 0);
    signal typAux : std_logic_vector(1 downto 0);
    signal sumAux1 : std_logic_vector(7 downto 0);
    
    constant bias : std_logic_vector(7 downto 0) := "10000001"; -- valuare lui -127

begin

    add: cla8bit port map(
                           a => e1,
                           b => e2,
                           cin => '0',
                           sum => sumAux,
                           cout => open 
                          );

    add1: cla8bit port map(
                           a => sumAux,
                           b => bias,
                           cin => '0',
                           sum => sumAux1,
                           cout => open 
                          );
    
    aux1 <= "01" when e1 = "00000000" else "11";                      
    aux2 <= "10" when e2 = "00000000" else "11";                      
    typAux <= aux1 and aux2;
    
    e <= sumAux1;
    --e <= sumAux when typAux = "00" else "01111111";      
    typ <= typAux;
    
end Behavioral;