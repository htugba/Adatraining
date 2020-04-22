with Ada.Text_IO; use Ada.Text_IO;

package body cyclingTasks is

   procedure showElapsedTimeOfTask is
      nowTime : Time;
      elapsedTime : Time_Span;
   begin
      nowTime := Clock;
      elapsedTime := nowTime - startTime;
      Put_Line ("Elapsed time " & Duration'Image (To_Duration (elapsedTime))
                & " seconds");
      
   end showElapsedTimeOfTask;
   
   procedure computationalIntensiveApp is
   begin
      delay 1.0;
   end computationalIntensiveApp;
   
end cyclingTasks;
