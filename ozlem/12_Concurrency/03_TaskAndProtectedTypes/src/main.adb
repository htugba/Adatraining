with Ada.Text_IO;use Ada.Text_IO;
with TaskAndTaskType, TaskTypeExampleWithArray, ProtectedType;

procedure Main is

   procedure useTaskAndTaskTypes is
      use TaskAndTaskType;

      myTask : T2;
   begin
      Put_Line("We declared a task myTask based on the task type TT."
             & "If you dont declare it, T2 dont start.");
   end useTaskAndTaskTypes;

   procedure useTaskTypeExampleWithArray is
      use TaskTypeExampleWithArray;

      myTasks : array(1..5) of TT;
   begin
      for i  in 1..5 loop
         myTasks(i).start(i);
      end loop;
   end useTaskTypeExampleWithArray;

   procedure useProtectedType is
      use ProtectedType;
      obj : ObjType;
   begin
      obj.set(5);
      Put_Line("Object local value is " & Integer'Image(obj.get));
   end useProtectedType;

begin
   --useTaskAndTaskTypes;
   useTaskTypeExampleWithArray;
   --useProtectedType;
end Main;
