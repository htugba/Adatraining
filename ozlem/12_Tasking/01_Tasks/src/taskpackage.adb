with Ada.Text_IO;
use Ada.Text_IO;

package body taskPackage is

   task body T is
   begin
      for i  in 1..15 loop
         Put_Line("In other package " & Integer'Image(i));
      end loop;
   end T;
   
end taskPackage;
