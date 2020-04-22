with Ada.Text_IO;
use Ada.Text_IO;

package body showRendezvousLoop is

   task body T is
      count : Integer := 0;
   begin
      loop --Prevents finishing of task
         select
            accept reset do
               count := 0;
            end reset;
            Put_Line("Reset");
         or
            accept increment do
               count := count + 1;
            end increment;
            Put_Line("Incremented count:" & Integer'Image(count));
         or
            terminate;
         end select;
      end loop;
   end T;
   
end showRendezvousLoop;
