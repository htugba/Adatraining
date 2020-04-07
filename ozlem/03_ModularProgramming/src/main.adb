with Ada.Text_IO;
with Week; --  References the Week package,adds a dependency from Main to Week
with Operations;

procedure Main is
   use Ada.Text_IO;
   use Operations;
   --If you use "use Week", instead of Week.Mon, only Mon can be used.

   result : Integer;
   number : Integer := 0;

   procedure displayUpdatedValues is
      incr : constant Integer := getIncrementedValue;
   begin
      Put_Line (Integer'Image (number)
                & " incremented by " & Integer'Image (incr)
                & " is "             & Integer'Image (result));
      number := result;
   end displayUpdatedValues;

begin
   Put_Line("First day of the week is " & Week.Mon);

   result := incrementNumber (number);
   displayUpdatedValues;
   result := incrementNumber (number);
   displayUpdatedValues;
   result := incrementNumber (number, 6);
   displayUpdatedValues;

end Main;
