----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2023 09:10:56 AM
-- Design Name: 
-- Module Name: TB_Decoder_2_to_4 - Behavioral
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

entity TB_Decoder_2_to_4 is
--  Port ( );
end TB_Decoder_2_to_4;

architecture Behavioral of TB_Decoder_2_to_4 is
component Decoder_2_to_4 port(
    I : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    EN : IN STD_LOGIC;
    Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END COMPONENT;

signal i : std_logic_vector(1 downto 0);
signal en : std_logic;
signal y : std_logic_vector(3 downto 0);

begin
    UUT : Decoder_2_to_4 port map(
        I => i,
        EN => en,
        Y => y
    );
    
    process
      begin 
        en <= '0';
        wait for 100ns;
        
        en <= '1';
        i(0) <= '0';
        i(1) <= '0';
        wait for 100ns;
        
        i(0) <= '1';
        wait for 100ns;
        
        i(0) <= '0';
        i(1) <= '1';
        wait for 100ns;
        
        i(0) <= '1';
        wait;
        
        end process;

end Behavioral;