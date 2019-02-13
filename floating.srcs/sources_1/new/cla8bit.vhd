----------------------------------------------------------------------------------
-- Nume : Niculescu
-- Prenume : Mihai Alexandru
-- Grupa : 335CB
--
-- Project : floating point multiplication
-- File : cla8bit.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cla8bit is
    Port ( 
            a    : in std_logic_vector(7 downto 0);
            b    : in std_logic_vector(7 downto 0);
            cin  : in std_logic;
            sum  : out std_logic_vector(7 downto 0);
            cout : out std_logic
          );
end cla8bit;

architecture Behavioral of cla8bit is

    component cla4bit is
        Port ( 
                a    : in std_logic_vector(3 downto 0);
                b    : in std_logic_vector(3 downto 0);
                cin  : in std_logic; 
                sum  : out std_logic_vector(3 downto 0);
                cout : out std_logic
             );
    end component cla4bit;

    signal p : STD_LOGIC_VECTOR(7 downto 0);
    signal g : STD_LOGIC_VECTOR(7 downto 0);
    signal c : STD_LOGIC_VECTOR(2 downto 0);
    signal p_aux : STD_LOGIC_VECTOR(1 downto 0);
    signal g_aux : STD_LOGIC_VECTOR(1 downto 0);

begin

    adder_4bit1 : cla4bit PORT MAP(
                                   a => a(3 downto 0),
                                   b => b(3 downto 0),
                                   cin => c(0),
                                   sum => sum(3 downto 0),
                                   cout => open
                                   );
                                                 
    adder_4bit2 : cla4bit PORT MAP(
                                   a => a(7 downto 4),
                                   b => b(7 downto 4),
                                   cin => c(1),
                                   sum => sum(7 downto 4),
                                   cout => open
                                   );
                                   
    p <= a or b;
    g <= a and b;
                                  
    p_aux(0) <= p(0) and p(1) and p(2) and p(3);
    p_aux(1) <= p(4) and p(5) and p(6) and p(7);
                                      
    g_aux(0) <= g(3) or ( p(3) and g(2) ) or ( p(3) and p(2) and g(1) ) or ( p(3) and p(2) and p(1) and g(0) );
    g_aux(1) <= g(7) or ( p(7) and g(6) ) or ( p(7) and p(6) and g(5) ) or ( p(7) and p(6) and p(5) and g(4) );
                                      
    c(0) <= cin;
    c(1) <= g_aux(0) or ( p_aux(0) and c(0) );
    c(2) <= g_aux(1) or ( p_aux(1) and c(1) );
                                      
    cout <= c(2);
                                    
end Behavioral;