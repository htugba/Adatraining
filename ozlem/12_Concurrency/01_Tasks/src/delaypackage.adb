with Ada.Text_IO;
use Ada.Text_IO;

package body delayPackage is

   task body T is
   begin
      for i in 1..10 loop
         Put_Line("Hello from task");
         delay 1.0; --Wait 1 second
      end loop;
   end T;
   
end delayPackage;
