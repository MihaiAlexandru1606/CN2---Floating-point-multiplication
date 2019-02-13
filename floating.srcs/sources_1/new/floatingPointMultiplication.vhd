----------------------------------------------------------------------------------
-- Nume : Niculescu
-- Prenume : Mihai Alexandru
-- Grupa : 335CB
--
-- Project : floating point multiplication
-- File : flatingPointMultiplication.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity floatingPointMultiplication is
    Port (
            a : in std_logic_vector(31 downto 0);
            b : in std_logic_vector(31 downto 0);
            clk : in std_logic;
            load : in std_logic;
            clear : in std_logic;
            mult : out std_logic_vector(31 downto 0)
           );
end floatingPointMultiplication;

architecture Behavioral of floatingPointMultiplication is

-- componetele necesare

    -- registrul
    component registrer is
        generic(DataWidth : integer);   -- lungimea unui registru

        Port (
                d : in std_logic_vector(DataWidth - 1 downto 0);
                clk : in  std_logic;
                load : in std_logic;
                reset : in std_logic;
                q : out std_logic_vector(DataWidth - 1 downto 0)
               );
    end component registrer;

    -- modul 1 : adunarea exponentilor
    component modul1 is
        Port (
               e1  : in std_logic_vector(7 downto 0);
               e2  : in std_logic_vector(7 downto 0);
               e   : out std_logic_vector(7 downto 0);
               typ : out std_logic_vector(1 downto 0)
              );
    end component modul1;
    
    -- modul 3 : ajustarea exponentilor
    component modul3 is
        Port (
                ein : in std_logic_vector(7 downto 0);
                val2 : in std_logic_vector(7 downto 0);
                eout : out std_logic_vector(7 downto 0)
             );
    end component modul3;
    
    -- modul 4 : inmultirea mantiselor
    component modul4 is
        Port (
                mantissaNo1 : in std_logic_vector(23 downto 0);
                mantissaNo2 : in std_logic_vector(23 downto 0);
                mantissaOut : out std_logic_vector(24 downto 0)
               );
    end component modul4;
    
    -- modul 5 : normalizarea mantisei
    component modul5 is
        Port (
                mantissaIn : in std_logic_vector(24 downto 0);
                typ : in std_logic_vector(1 downto 0);
                semn: in std_logic_vector(1 downto 0);
                val2 : out std_logic_vector(7 downto 0);
                mantissaOut : out std_logic_vector(23 downto 0)
              );
    end component modul5;
    
    signal buss1 : std_logic_vector(63 downto 0);   
    signal buss2 : std_logic_vector(36 downto 0);
    signal buss4 : std_logic_vector(31 downto 0);
        
    signal exponent_mod1 : std_logic_vector(7 downto 0);    
    signal typ : std_logic_vector(1 downto 0);
    signal mantissaOut_modul4 : std_logic_vector(24 downto 0);
    
    signal exponent_mod2 : std_logic_vector(7 downto 0);
    signal val2 : std_logic_vector(7 downto 0);
    signal mantissaOut_modul5 : std_logic_vector(23 downto 0);
    
    signal exponent_mod3 : std_logic_vector(7 downto 0);
    
begin
    
    reg1: registrer generic map(DataWidth => 64) port map(
                                                          d(22 downto 0) => a(22 downto 0), -- mantisa a 
                                                          d(45 downto 23) => b(22 downto 0), -- mantisa b
                                                          d(53 downto 46) => a(30 downto 23), -- exponent a
                                                          d(61 downto 54) => b(30 downto 23), -- exponent b
                                                          d(62) => a(31),    -- semnul lui a
                                                          d(63) => b(31),    -- semnul lui b
                                                          clk => clk,
                                                          load => load,
                                                          reset => clear,
                                                          q => buss1
                                                          );
    
    -- module 1 si 4
    mod1: modul1 port map(
                          e1 => buss1(53 downto 46), -- exponent a
                          e2 => buss1(61 downto 54), -- exponent b
                          e => exponent_mod1, -- suma celor 2 exponenti
                          typ => typ
                          );
    
    mod4: modul4 port map(
                          mantissaNo1(22 downto 0) => buss1(22 downto 0), -- mantisa a
                          mantissaNo1(23) => '1', -- bitul ascuns
                          mantissaNo2(22 downto 0) => buss1(45 downto 23), -- mantisa b
                          mantissaNo2(23) => '1', -- bitul ascuns
                          mantissaOut => mantissaOut_modul4
                          );
                          
    reg2: registrer generic map(DataWidth => 37) port map(
                                                          d(24 downto 0) => mantissaOut_modul4, -- rezultat mantisa dupa modul 4
                                                          d(32 downto 25) => exponent_mod1, -- exponentul dupa modul 1
                                                          d(33) => buss1(62), -- semnul lui a
                                                          d(34) => buss1(62), -- semnul lui b
                                                          d(36 downto 35) => typ,
                                                          clk => clk,
                                                          load => load,
                                                          reset => clear,
                                                          q => buss2 
                                                          );
                                                          
    mod5 : modul5 port map(
                          mantissaIn => buss2(24 downto 0),
                          typ => buss2(36 downto 35),
                          semn => buss2(34 downto 33),
                          val2 => val2,
                          mantissaOut => mantissaOut_modul5 
                          );    
                                                          
    mod3: modul3 port map(
                          ein => buss2(32 downto 25),
                          val2 => val2,
                          eout => exponent_mod3
                          );                                                          
    
    reg3:  registrer generic map(DataWidth => 32) port map(
                                                            d(23 downto 0) => mantissaOut_modul5,
                                                            d(31 downto 24) => exponent_mod3,
                                                            clk => clk,
                                                            load => load,
                                                            reset => clear,
                                                            q => buss4 
                                                           );
    
                                                           
    mult(22 downto 0) <= buss4(22 downto 0);
    mult(31) <= buss4(23);
    mult(30 downto 23) <= buss4(31 downto 24);                                    
end Behavioral;
