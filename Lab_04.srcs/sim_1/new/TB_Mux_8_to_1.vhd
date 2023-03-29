----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2023 09:35:17 AM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
component Mux_8_to_1 port(
    S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    EN : IN STD_LOGIC;
    Y : OUT STD_LOGIC
);
end component;

signal s : std_logic_vector(2 downto 0);
signal d : std_logic_vector(7 downto 0);
signal en : std_logic;
signal y : std_logic;

begin
    UUT : Mux_8_to_1 port map(
        S => s,
        D => d,
        EN => en,
        Y => y
    );
    
    process
        begin
           d(0) <= '0';
           d(1) <= '1';
           d(2) <= '1';
           d(3) <= '0';
           d(4) <= '1';
           d(5) <= '0';
           d(6) <= '0';
           d(7) <= '0';
           en <= '0';                  --index number 110 011 011 100 010 110
           wait for 100ns;
           
           en <= '1';
           s(0) <= '0';             
           s(1) <= '0';
           s(2) <= '0';
           
           wait for 100ns;
           
           s(0) <= '1';
           wait for 100ns;
           
           s(0) <= '0';
           s(1) <= '1';
           wait for 100ns;
           
           s(0) <= '1';
           wait for 100ns;
           
           s(0) <= '0';
           s(1) <= '0';
           s(2) <= '1';
           wait for 100ns;
           
           s(0) <= '1';
           wait for 100ns;
           
           s(0) <= '0';
           s(1) <= '1';
           wait for 100ns;
           
           s(0) <= '1';
           wait;
     end process;    
end Behavioral;
