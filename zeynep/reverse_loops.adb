with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Reverse_Loops is
   begin
      for I in reverse 1 .. 8 loop
         Put_Line("Counting .. " & Integer'Image(I) );
      end loop;
   end Reverse_Loops;