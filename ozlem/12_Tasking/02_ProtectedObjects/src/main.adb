with Ada.Text_IO; use Ada.Text_IO;
with ProtectedObjectsPackage; use ProtectedObjectsPackage;

procedure Main is

   procedure useProtectedObjectsPackage is
   begin
      obj.set(5);
      --Obj.local cannot be used. Invisible selector local for Obj.
      Put_Line("Object local value is " & Integer'Image(Obj.get));

   end useProtectedObjectsPackage ;

begin
   useProtectedObjectsPackage;
end Main;
