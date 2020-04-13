with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Boolean_if_expression is
      N : Integer;
   begin
      Put_Line("Enter an integer: ");
      Get(N);
      Put(N);
      declare
         B : Boolean := (if N < 10 then False ); 
      begin
        -- Put_Line("B = " & Boolean'Image(B));
            if B = TRUE then
               Put_Line(" is greater than 10");
            else
               Put_Line(" is smaller than 10");
            end if;
         end;
      end Boolean_if_expression;
