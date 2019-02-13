----------------------------------------------------------------------------------
-- Nume : Niculescu
-- Prenume : Mihai Alexandru
-- Grupa : 335CB
--
-- Project : floating point multiplication
-- File : modul4.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modul4 is
    Port (
            mantissaNo1 : in std_logic_vector(23 downto 0);
            mantissaNo2 : in std_logic_vector(23 downto 0);
            mantissaOut : out std_logic_vector(24 downto 0)
           );
end modul4;

architecture Behavioral of modul4 is

    component multiplication is
        Port (
                a : in std_logic_vector(23 downto 0);    -- al doilea numar
                b : in std_logic_vector(23 downto 0);    -- primul numar
                mult : out std_logic_vector(47 downto 0) -- rezulatatul inmultirii 
             );
    end component multiplication;
    
    signal rez: std_logic_vector(47 downto 0);
        
begin

    mult: multiplication port map(
                                    a => mantissaNo1,
                                    b => mantissaNo2,
                                    mult => rez
                                  );
                                  
    mantissaOut <= rez(47 downto 23);
   
end Behavioral;
