with Ada.Text_IO; use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;


--When you add this packages with "with", thread automatically starts

--with TaskPackage;
--with delayPackage;

with showRendezvousLoop;

with cyclingTasks;

procedure Main is

   procedure createSimpleTasks is
      task T1;
      task T2;

      task body T1 is
      begin
         Put_Line("In Task T1."); --Task starts automatically when application starts
      end T1;

      task body T2 is
      begin
         Put_Line("In Task T2.");
      end T2;
   begin
      Put_Line("In main task.");
   end createSimpleTasks;

   procedure notSynchronized is
      task T;

      task body T is
      begin
         for i  in 1..10 loop
            Put(Integer'Image(i) & " ");
         end loop;
      end T;
   begin
      Put(" In main task. ");
   end notSynchronized;

   procedure showRendezvous is
      task T is
         entry startTask; --Waiting for sbd to call entry
      end T;

      task body T is
      begin
         accept startTask;
         Put_Line("Task T is started.");
      end T;
   begin
      Put_line("In main.");
      T.startTask; --Calling T's entry.

   end showRendezvous;

   procedure useShowRendezvousLoop is
   begin
      for i  in 1..5 loop
         showRendezvousLoop.T.increment;
      end loop;

      showRendezvousLoop.T.reset;

      for i  in 1..2 loop
         showRendezvousLoop.T.increment;
      end loop;

   end useShowRendezvousLoop;

   procedure useCyclingTasks is
      package cycTask renames cyclingTasks;

      task T;

      task body T is
         cycle : constant Time_Span := Milliseconds(1000);
         next : Time := cycTask.getStartTimeOfTask + cycle;
         count : Integer := 1;
      begin
         for i  in 1..5 loop
            delay until next;

            cycTask.showElapsedTimeOfTask;
            cycTask.computationalIntensiveApp;

            --Calculate next execution time using a cycle of one second.
            next := next + cycle;

            Put_Line ("Cycle # " & Integer'Image (count));
            count  := count + 1;
         end loop;
         Put_Line ("Finished cycling");
      end T;

   begin
      null;
   end useCyclingTasks;
begin
   --createSimpleTasks;
   --simpleSynchronization;
   --Put_Line("When with taskPackage is used, task starts automatically");

   --delay 5.0; --Wait 5 seconds
   --Put_Line("Hello from main"); --Main task is waiting for 5 seconds before putline

   --showRendezvous;

   --useShowRendezvousLoop;

   useCyclingTasks;

end Main;






















