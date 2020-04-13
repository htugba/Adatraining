with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Check_Positive is
   N : Integer;
   begin
      Put_Line("Enter an integer: ");
      Get(N);
      Put(N);
      declare
         S : String := (if N > 0 then " is positive" else " is not positive");
      begin
         Put_Line(S);
      end;
   end Check_Positive;