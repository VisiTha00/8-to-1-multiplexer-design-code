----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2023 09:18:01 AM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
    COMPONENT Decoder_3_to_8 PORT(
        I : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        EN : IN STD_LOGIC;
        Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
    END COMPONENT;
    
    SIGNAL DEC_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
    
begin
   Decoder_3_to_8_0 : Decoder_3_to_8 port map(
    I => S,
    EN => EN,
    Y => DEC_OUT
   );
   
   Y <= (DEC_OUT(0) AND D(0)) OR (DEC_OUT(1) AND D(1)) OR (DEC_OUT(2) AND D(2)) 
         OR (DEC_OUT(3) AND D(3)) OR (DEC_OUT(4) AND D(4)) OR (DEC_OUT(5) AND D(5))
         OR (DEC_OUT(6) AND D(6)) OR (DEC_OUT(7) AND D(7));
          
end Behavioral;
