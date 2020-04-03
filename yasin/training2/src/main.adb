with Ada.Text_IO; use Ada.Text_IO;
with Operations; use Operations;

procedure Main is
   A, B, C, R : Integer;
   I : Integer := 0;


   ----- Modular Programming Example ---------------
   function Increment_By
     (I    : Integer := 0;
      Incr : Integer := 1) return Integer is
   begin
      return I + Incr;
   end Increment_By;


   procedure Display_Result is
   begin
      Put_Line ("Increment of " & Integer'Image (A)
                & " with "      & Integer'Image (B)
                & " is "        & Integer'Image (C));
   end Display_Result;

   procedure Compute_A (V : Natural);
   --  Forward declaration of Compute_A

   procedure Compute_B (V : Natural) is
   begin
      if V > 5 then
         Compute_A (V - 1);
         --  Call to Compute_A
      end if;
   end Compute_B;

   procedure Compute_A (V : Natural) is
   begin
      if V > 2 then
         Compute_B (V - 1);
         --  Call to Compute_B
      end if;
      Put_Line ("Compute value : " & Integer'Image (V));
   end Compute_A;

   ----- Modular Programming Example ---------------------

   -- PACKAGE USE EXAMPLE---------------------------
  procedure Display_Update_Values is
      Incr : constant Integer := Get_Increment_Value;
   begin
      Put_Line (Integer'Image (I)
                & " incremented by " & Integer'Image (Incr)
                & " is "             & Integer'Image (R));
      I := R;
   end Display_Update_Values;
   -- PACKAGE USE EXAMPLE---------------------------

begin
   -- Modular Programming Example
   A := 10;
   B := 3;
   C := Increment_By (A, B);
   Display_Result;
   Put_Line ("Compute value start with: " & Integer'Image (C));
   Compute_B(C);


   -- PACKAGE USE EXAMPLE
   R := Increment_By_Operations (I, 5);
   Display_Update_Values;

end Main;
