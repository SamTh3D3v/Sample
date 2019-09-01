    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    
    use IEEE.NUMERIC_STD.ALL;
    
    entity Sample_Tb is    
    end Sample_Tb;
    
    
    architecture Behavioral of Sample_Tb is
    
    component Sample is
        Port ( Input : in Integer;
               Output : out Integer;
               Clk : in STD_LOGIC;
               Reset : in STD_LOGIC);
    end component;
    
    signal ClkSignal: std_logic := '0';
    signal ResetSignal: std_logic := '0';
    
    signal InputSignal: Integer := 4;
    signal OutputSignal: Integer;
    
    begin
    uut: Sample
    port map(
    Input =>InputSignal,
    Output=>OutputSignal,
    Clk=>ClkSignal,
    Reset=>ResetSignal);
    CLOCK: ClkSignal <= not ClkSignal after 0.5 ns;
    
    compression_process:  process (ResetSignal, ClkSignal)
    begin 
        ResetSignal <= '1' after 50ns ;
        
    end process compression_process;
    
    
    end Behavioral;
