with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Sum_Two is
      A : Integer := 0;
   begin
      Put_Line("-- The Program exits when total sum exceeds 10 --");
      Put_Line("A = " & Integer'Image(A));
         loop
         declare B : Integer := 0 ;
         begin
            Put_Line("Enter an integer : ");
            Get(B);
            if B >= 10 then
              Put_Line("Enter an integer again: ");
            Get(B);
         end if;
            --Put(B);
            A := A + B;
            Put_Line("The Sum = " & Integer'Image(A));
            exit when A > 10;  
         end;
         end loop;
   end Sum_Two;