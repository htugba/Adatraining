with Ada.Text_IO; use Ada.Text_IO;

package body TaskTypeExampleWithArray is

   task body TT is
      taskNumber : Integer;
   begin
      accept start (val : in Integer) do
         taskNumber := val;
      end start;
      Put_Line ("In task T: " & Integer'Image (taskNumber));
   end TT;
   
end TaskTypeExampleWithArray;
