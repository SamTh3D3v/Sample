library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity Sample is
    Port ( Input : in Integer;
           Output : out Integer;
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end Sample;

architecture Behavioral of Sample is
signal RoundSignal: integer := 0;
signal TmpSignal: integer := 0;
begin

process(Clk, Reset)
Begin   
    if(rising_edge(Clk)) then
        if (Reset = '1') then
            RoundSignal<= 0;
            TmpSignal <= Input;
        else
            if(RoundSignal < 16 ) then                
                RoundSignal <= RoundSignal + 1;  
                TmpSignal <= RoundSignal;                           
            end if;
        end if;
     end if;
end process;
Output <= TmpSignal;
end Behavioral;
