with Ada.Text_IO; use Ada.Text_IO;
with ProtectedObjectsPackage, ProtectedObjectsWithEntriesPackage;

procedure Main is

   procedure useProtectedObjects is
      use ProtectedObjectsPackage;
   begin
      obj.set(5);
      --Obj.local cannot be used. Invisible selector local for Obj.
      Put_Line("Object local value is " & Integer'Image(Obj.get));
   end useProtectedObjects ;

   procedure useProtectedObjectsWithEntries is
      use ProtectedObjectsWithEntriesPackage;

      number : Integer;
      task T;

      task body T is
      begin
         Put_Line ("Task T will delay for 4 seconds...");
         delay 4.0;
         Put_Line ("Task T will set Obj...");
         Obj.Set (5);
         Put_Line ("Task T has just set Obj...");
      end T;
   begin
      Put_Line ("Main application will get Obj...");
      Obj.get(number); --Main application waits until protected obj is set.
      Put_Line ("Main application has just retrieved Obj...");
      Put_Line ("Number is: " & Integer'Image (number));
   end useProtectedObjectsWithEntries;
begin
   --useProtectedObjects;
   useProtectedObjectsWithEntries;
end Main;
