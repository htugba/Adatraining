with Ada.Text_IO; use Ada.Text_IO; 

package body Recursion is
   
   procedure printAndDecrement(value : Integer) is
   begin
      Put_Line("Value is: " & Integer'Image(value));
      if value>0 then
         PrintAndDecrement(value-1);
      end if;
   end PrintAndDecrement;
      
end Recursion;
