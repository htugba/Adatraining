with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO; 
procedure Switch_Case is
      A : Integer;
   begin
      loop
         Put("Enter an integer value: ");
         Get(A);
         Put(A);
         case A is
            when 0 | 100 =>
               Put_Line(" WELL DONE");
            when 10 .. 50 =>
               Put_Line(" TRY AGAIN");
            when others =>
               Put_Line(" EXITS..");
               exit;
         end case;
      end loop;
      Put_Line("PROGRAM WILL BE TERMINATED");
   end Switch_Case;