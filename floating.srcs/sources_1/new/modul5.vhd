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

entity modul5 is
    Port (
            mantissaIn : in std_logic_vector(24 downto 0);
            typ : in std_logic_vector(1 downto 0);
            semn: in std_logic_vector(1 downto 0);
            val2 : out std_logic_vector(7 downto 0);
            mantissaOut : out std_logic_vector(23 downto 0)
          );
end modul5;

architecture Behavioral of modul5 is

begin
    
    normalize: process(mantissaIn)
    begin
        
        mantissaOut(23) <= semn(1) xor semn(0);
        --if typ /= "00" then
         --    val2 <= "00000000";
         --    mantissaOut <= (others => '0');
        if mantissaIn(24) = '0' then
            val2 <= "00000000";
            mantissaOut(22 downto 0) <= mantissaIn(22 downto 0);
        else
            val2 <= "00000001";
            mantissaOut(22 downto 0) <= mantissaIn(23 downto 1);
        end if;
        
    end process normalize;

end Behavioral;