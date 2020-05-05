with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   -- Imperative language - If/Then/Else
   Number : Integer;
   N : Integer;
   K : Integer := 1;

   -- Imperative language - Declarative regions
   procedure Nested is
   begin
      Put_Line ("Hello World nested");
   end Nested;
begin
   -- Print hello world
   Ada.Text_IO.Put_Line("Hello world");
   -- printing using package Ada.Text_IO
   Put_Line("Hello word use package");

   -- ###################################

   -- Imperative language - If/Then/Else

   -- #Check_Positive
   Put ("Enter an integer value: ");
   Get(Number);
   if Number > 0 then
      Put (Number);
      Put_Line(" is a positive number");
   else
      Put_Line(" is a negative number ");
   end if;

   -- #Check_Direction
   Put ("Enter an integer value: ");
   Get(N);
   Put (N);
   if N = 0 or N = 360 then
      Put_Line (" is due east");
   elsif N in 1 .. 89 then
      Put_Line (" is in the northeast quadrant");
   elsif N = 90 then
      Put_Line (" is due north");
   elsif N in 91 .. 179 then
      Put_Line (" is in the northwest quadrant");
   elsif N = 180 then
      Put_Line (" is due west");
   elsif N in 181 .. 269 then
      Put_Line (" is in the southwest quadrant");
   elsif N = 270 then
      Put_Line (" is due south");
   elsif N in 271 .. 359 then
      Put_Line (" is in the southeast quadrant");
   else
      Put_Line (" is not in the range 0..360");
   end if;

   -- Imperative language - Loops

   -- 1. For loops
   for i in 1 .. 5 loop
      Put_Line ("Hello " & Integer'Image(i));
   end loop;

   -- reverse
   for I in reverse 1 .. 5 loop
      Put_Line ("Hello, World" & Integer'Image (I));
   end loop;
   -- The bounds of a for loop may be computed at run-time; they are evaluated once,
   -- before the loop body is executed. If the value of the upper bound is less than the
   -- value of the lower bound, then the loop is not executed at all. This is the case also for reverse loops.
   -- for I in reverse 5 .. 1 loop no operation.

   -- 2. Bare loops
   loop
      Put_Line("Hello" & Integer'Image (K));
      exit when K = 3;
      K := K+1;
   end loop;

   -- 3. While loops
   K := 1;
   while K <= 5 loop
      Put_Line ("Hello, World!" & Integer'Image (K));

      K := K + 1;
   end loop;

   -- Imperative language - Case statement
   -- # Check_Direction
   loop
      Put ("Enter an integer value: ");  -- Puts a String
      Get (N);  --  Reads an Integer
      Put (N);  --  Puts an Integer
      case N is
         when 0 | 360 =>
            Put_Line (" is due east");
         when 1 .. 89 =>
            Put_Line (" is in the northeast quadrant");
         when 90 =>
            Put_Line (" is due north");
         when 91 .. 179 =>
            Put_Line (" is in the northwest quadrant");
         when 180 =>
            Put_Line (" is due west");
         when 181 .. 269 =>
            Put_Line (" is in the southwest quadrant");
         when 270 =>
            Put_Line (" is due south");
         when 271 .. 359 =>
            Put_Line (" is in the southeast quadrant");
         when others =>
            Put_Line (" Au revoir");
            exit;
      end case;
   end loop;

   -- Imperative language - Declarative regions
   Nested;

   -- Imperative language - conditional expressions
   -- 1. If expressions
   Put ("Enter an integer value: ");  --  Put a String
   Get (N);  --  Reads in an integer value
   Put (N);  --  Put an Integer
   declare
      S : String :=
        (if N > 0 then " is a positive number"
         else " is not a positive number");
   begin
      Put_Line (S);
   end;

   -- even - odd
   for I in 1 .. 10 loop
      Put_Line (if I mod 2 = 0 then "Even" else "Odd");
   end loop;

   -- 2. Case expressions
   for I in 1 .. 10 loop
      Put_Line (case I is
                when 1 | 3 | 5 | 7 | 9 => "Odd case",
                when 2 | 4 | 6 | 8 | 10 => "Even case");
   end loop;

end Main;

