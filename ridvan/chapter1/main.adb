with Ada.Text_IO;
use  Ada.Text_IO;
with Ada.Integer_Text_IO;
use  Ada.Integer_Text_IO;

procedure Main is

   -----------------Donguler ile ilgili ornekler-----------------
   procedure oddOrEven is
      N : Integer;
   begin
      Put("Enter Number: ");
      Get(N);

      if N rem 2 = 0 then
         Put_Line(Integer'Image(N) & " is Even");
      elsif N rem 2 /= 0 then
         Put_Line(Integer'Image(N) & " is Odd");
      else
         Put_Line("You entered wrong value");
      end if;

   end oddOrEven;

   -------------------For Dongusu ilgili ornek-------------------
   procedure forLoopExample is
   begin
      for I in 1 .. 10 loop
         Put_Line(Integer'Image(I));
      end loop;
   end forLoopExample;

   -------------------Input ile ilgili ornek-------------------
   procedure userInputExample is
      i: Integer:= 2;
   begin
      Put("Enter an integer: ");
      Get(i);
      Put(i);

   end userInputExample;

begin forLoopExample;

end Main;
