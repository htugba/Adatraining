with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO; 
procedure While_Loop is
      A : Integer := 1;
   begin
      while A <= 10 loop
         Put_Line("Counting .. " &Integer'Image(A));
         A := A + 1;
      end loop;
   end While_Loop;