----------------------------------------------------------------------------------
-- Nume : Niculescu
-- Prenume : Mihai Alexandru
-- Grupa : 335CB
--
-- Project : floating point multiplication
-- File : multiplication.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplication is
    Port (
            a : in std_logic_vector(23 downto 0);    -- al doilea numar
            b : in std_logic_vector(23 downto 0);    -- primul numar
            mult : out std_logic_vector(47 downto 0) -- rezulatatul inmultirii 
           );
end multiplication;

architecture Behavioral of multiplication is

    component cla24bit is
        Port (
                a    : in std_logic_vector(23 downto 0);
                b    : in std_logic_vector(23 downto 0);
                cin  : in std_logic;
                sum  : out std_logic_vector(23 downto 0);
                cout : out std_logic
              );
    end component cla24bit;
   
   type MAT is array (0 to 23) of std_logic_vector(23 downto 0);
   type MAT1 is array (0 to 22) of std_logic_vector(23 downto 0);
   signal A_mat : MAT;
   signal And_mat : MAT;
   signal Sum_mat : MAT1;

begin

     -- extinderea fiecarui lui a(i) la un vector
     Init_A: for ii in 0 to 23 generate
        A_mat(ii) <= (others => a(ii));        
     end generate Init_A;    

    -- calcularea and pentru fiecare numar
    Init_and: for ii in 0 to 23 generate
        And_mat(ii) <= A_mat(ii) and b;
    end generate Init_and; 
    
    -- primul bit
    mult(0) <= a(0) and b(0);
    
    -- primul sumator caz special 
    sumator0: cla24bit PORT MAP(
                                a(22 downto 0) => And_mat(0)(23 downto 1),
                                a(23) => '0',
                                b => And_mat(1),
                                cin => '0',
                                sum(0) => mult(1),
                                sum(23 downto 1) => Sum_mat(0)(22 downto 0),
                                cout => Sum_mat(0)(23)
                                );
                                
    -- celelalte sumatoare
    Sum_generator: for ii in 1 to 22 generate
        Sumator: cla24bit PORT MAP (
                            a => And_mat(ii + 1),
                            b => Sum_mat(ii - 1),
                            cin => '0',
                            sum(0) => mult(ii + 1),
                            sum(23 downto 1) => Sum_mat(ii)(22 downto 0),
                            cout => Sum_mat(ii)(23)
                            );
    end generate Sum_generator; 
    
    -- ultimi bit
    mult(47 downto 24) <= Sum_mat(22);


end Behavioral;
