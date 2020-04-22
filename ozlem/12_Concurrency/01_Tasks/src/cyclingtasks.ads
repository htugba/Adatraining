with Ada.Real_Time; use Ada.Real_Time;

package cyclingTasks is

   function getStartTimeOfTask return Time with Inline;
   
   procedure showElapsedTimeOfTask;
   
   procedure computationalIntensiveApp;
   
private 
   startTime : Time := Clock;
   
   function getStartTimeOfTask return Time is (startTime);
   
end cyclingTasks;
