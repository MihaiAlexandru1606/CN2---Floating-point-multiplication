----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.10.2018 19:29:51
-- Design Name: 
-- Module Name: TEST - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TEST is
--  Port ( );
end TEST;

architecture Behavioral of TEST is


    component floatingPointMultiplication is
        Port (
                a : in std_logic_vector(31 downto 0);
                b : in std_logic_vector(31 downto 0);
                clk : in std_logic;
                load : in std_logic;
                clear : in std_logic;
                mult : out std_logic_vector(31 downto 0)
              );
    end component floatingPointMultiplication;

    signal clk : std_logic := '0';
    constant clk_period : time := 1 ns;

    signal a : std_logic_vector(31 downto 0)  := "00000000000000000000000000000000";
    signal b : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
    signal rez : std_logic_vector(31 downto 0);    

begin

    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;  
        clk <= '1';
        wait for clk_period/2;  
    end process;

    uutl: floatingPointMultiplication port map(
                                                a => a,
                                                b => b,
                                                clk => clk,
                                                load => clk,
                                                clear => '0',
                                                mult => rez
                                               );

    generate_number: process
    begin
        a <= "01000000000000000000000000000000"; -- 2  0x40000000
        b <= "01000000000000000000000000000000"; -- 2  0x40000000
        wait for clk_period; -- rezultat 4 : 01000000100000000000000000000000  0x40800000
        
        
        a <= "01000000010000000000000000000000"; -- 3 0x40400000
        b <= "00111111100000000000000000000000"; -- 1 0x3f800000
        wait for clk_period; -- rezultat 3 : 01000000010000000000000000000000 0x40400000
        
        a <= "01000000101000000000000000000000"; -- 5  0x40a00000
        b <= "01000000001000000000000000000000"; -- 2.5 0x40200000
        wait for clk_period;  -- rezultat 12.5 : 01000001010010000000000000000000 0x41480000
    
    end process;
end Behavioral;
