with Ada.Text_IO; use Ada.Text_IO;

procedure Reverse_Example is
   Message : constant String := "dlroW olleH";
begin
   for I in reverse Message'Range loop
      Put (Message (I));
   end loop;
   New_Line;
end Reverse_Example;