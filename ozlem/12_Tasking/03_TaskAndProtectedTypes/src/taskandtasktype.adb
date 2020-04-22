with Ada.Text_IO;use Ada.Text_IO;

package body TaskAndTaskType is

   task body T1 is
   begin
      Put_Line("Task T1");
   end T1;
   
   task body T2 is
   begin
      Put_Line("Task T2");
   end T2;
   
end TaskAndTaskType;
