with Ada.Text_IO; use Ada.Text_IO;

package body PrePostConditions is

   procedure addToDB(name : String; age : Natural) is
   begin
      Put_Line(name & " is added to DB.");
   end addToDB;
   
   function square(number : Integer) return Integer is
   begin
      return number * number;
   end square;
   
   function calculate(number : Integer) return Integer is
   begin
      return number + 10;
   end calculate;
   
end PrePostConditions;
