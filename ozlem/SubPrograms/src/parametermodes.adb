with Ada.Text_IO; use Ada.Text_IO;

procedure ParameterModes is
   
   -------------------------------In Mode--------------------------------------
   procedure SwapIn (A, B : Integer) is
      temp : Integer;
   begin
      temp := A;
      -- A := B; --Execption assignment to "in" mode parameter not allowed
      -- B := temp; --Execption assignment to "in" mode parameter not allowed
   
   end SwapIn;
   
   -------------------------------In Out Mode----------------------------------
   procedure SwapInOut (A, B : in out Integer) is
      temp : Integer;
   begin
      temp := A;
      A := B; --Execption assignment to "in" mode parameter not allowed
      B := temp; --Execption assignment to "in" mode parameter not allowed
   end SwapInOut;
   
   -------------------------------Out Mode-------------------------------------
   
   procedure OutMode(A : out Integer) is
      -- B : Integer := A; --warning: "A" may be referenced before it has a value
   begin
      A := 46;
   end OutMode; 
   
   ----------------------------------------------------------------------------
     
   A : Integer := 5;
   B : Integer := 3;
   
begin 
   --SwapIn(5, 3);
   
   --SwapInOut(5, 3); --Can not used like that
   
   --SwapInOut(A, B);
   --Put_Line ("A: " & Integer'Image (A) & " B: " & Integer'Image (B));
   
   OutMode(A);
   Put_Line ("A: " & Integer'Image (A));
   
end ParameterModes;
