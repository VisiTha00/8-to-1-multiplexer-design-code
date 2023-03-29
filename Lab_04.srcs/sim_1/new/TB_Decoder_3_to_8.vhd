----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2023 09:14:18 AM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
component Decoder_3_to_8 port(
        I : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        EN : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
    end component;
    
    signal i : std_logic_vector(2 downto 0);
    signal en : std_logic;
    signal y : std_logic_vector(7 downto 0);
    
begin
    UUT : Decoder_3_to_8 port map(
        I => i,
        EN => en,
        Y => y
    );
    
    process                  
        begin 
          en <= '0';
          wait for 100ns;
          
          en <= '1';               -- Index Number 110 011 011 100 010 110
          i(0) <= '0';
          i(1) <= '1';
          i(2) <= '1';
          wait for 100ns;
          
          i(0) <= '0';
          i(1) <= '1';
          i(2) <= '0';
          wait for 100ns;
          
          i(0) <= '0';
          i(1) <= '0';
          i(2) <= '1';
          wait for 100ns;
                   
          i(0) <= '1';
          i(1) <= '1';
          i(2) <= '0';
          wait;
             
    end process;
    
end Behavioral;