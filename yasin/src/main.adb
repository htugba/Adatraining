with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   procedure If_Else_Procedure is
      N : Integer;
   begin
      Put_Line("");
      Put_Line ("------ IF ELSE EXAMPLE ---------");
      Put ("Enter an integer value: ");  -- Puts a String
      Get (N);  --  Reads an Integer
      Put (N);  --  Puts an Integer
      if N = 0 or N = 9 then
         Put_Line (" is a number");
      elsif N in 10 .. 99 then
         Put_Line (" is a two-digit number.");
      else
         Put_Line (" is not in the range 0..99");
      end if;
      Put_Line ("------ IF ELSE EXAMPLE END---------");
   end If_Else_Procedure;

   ------------------------------------------------------------------------------------


   procedure For_Loops_Procedure is
   begin
      Put_Line("");
      Put_Line ("------ FOR LOOP EXAMPLE ---------");
      for I in reverse 1 .. 3 loop
         Put_Line ("For ----> " & Integer'Image (I)); --  Procedure call
      end loop;
      Put_Line ("------ FOR LOOP EXAMPLE END---------");
   end For_Loops_Procedure;

   -----------------------------------------------------------------------------------

   procedure Bare_Loop_Procedure is
      K : Integer := 1;
   begin
      Put_Line("");
      Put_Line ("------ BARE LOOP EXAMPLE ---------");
      loop
         Put_Line ("Bare ---> " & Integer'Image (K));
         exit when K = 3; --  Exit statement
         K  :=  K  + 1; -- There is no I++ short form to increment a variable
      end loop;
      Put_Line ("------ BARE LOOP EXAMPLE END---------");
   end Bare_Loop_Procedure;

   --------------------------------------------------------------------------------------

   procedure While_Loop_Procedure is
      I : Integer := 1;
   begin
      Put_Line("");
      Put_Line ("------ WHILE LOOP EXAMPLE ---------");
      while I <= 5 loop
         Put_Line ("While --> " & Integer'Image (I));

         I := I + 1;
      end loop;
      Put_Line ("------ WHILE LOOP EXAMPLE END---------");
   end While_Loop_Procedure;

   -----------------------------------------------------------------------------------------

   procedure Loop_Procedures is
      N : Integer;
   begin
      loop
         Put_Line("");
         Put_Line ("Select one loop example from the menu. ");
         Put_Line ("2. for loop...");
         Put_Line ("3. bare loop...");
         Put_Line ("3. while loop...");
         Put_Line ("4. back to the main menu.");

         Get (N);  --  Reads an Integer
         case N is
         when 1 =>
            For_Loops_Procedure;
         when 2 =>
            Bare_Loop_Procedure;
         when 3 =>
            While_Loop_Procedure;
         when 4 =>
            exit;
         when others =>
            Put_Line ("Entered value is: " & Integer'Image (N) & " wrong");
            exit;
         end case;
      end loop;
   end Loop_Procedures;

   --------------------------------------------------------------------------------------

   procedure Switch_Case_Procedure is
      N : Integer;
   begin
      loop
         Put_Line("");
         Put_Line ("Select one from the menu. ");  -- Puts a String
         Put_Line ("1. if-else example");  -- Puts a String
         Put_Line ("2. loop example");  -- Puts a String
         Put_Line ("3. exit");  -- Puts a String

         Get (N);  --  Reads an Integer

         case N is
         when 1 =>
            If_Else_Procedure;
         when 2 =>
            Loop_Procedures;
         when 3 =>
            Put_Line ("END OF PROGRAM!");
            exit;
         when others =>
            Put_Line ("Entered value is: " & Integer'Image (N) & " wrong");
            exit;
         end case;
      end loop;
   end Switch_Case_Procedure;

   ----------------------------------------------------------------------------------

   procedure Nested is
   begin
      Put_Line ("Training program is starting.........");
      Switch_Case_Procedure;
   end Nested;

begin
   Nested;

end Main;
