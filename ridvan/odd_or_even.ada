with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO; 
use Ada.Integer_Text_IO;

procedure Odd_or_Even is
   N : Integer;
begin
   Put ("Enter an integer value: ");  -- Put a String
   Get (N);  --  Reads in an integer value
   Put (N);  --  Put an Integer
   if N rem 2 = 0 then
      Put_Line (" is a even number");
   elsif N rem 2 /= 0 then
      Put_Line (" is a odd number");    
   else
      Put_Line ("You entered wrong value!!");
   end if;
end Odd_or_Even;