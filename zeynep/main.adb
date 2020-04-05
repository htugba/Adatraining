with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   procedure Hi is
   begin
      loop
         Put_Line("Please enter name: ");
         declare Name : String := Get_Line;
         begin
            exit when Name = "";
            Put_Line("Hi " & Name & " ?");
         end;
      end loop;
      Put_Line("Bye bye^!");
   end Hi;

   procedure Caller is
      begin
      -- Calls a procedure
      Hi;
   end Caller;

begin
   Caller;
end Main;
