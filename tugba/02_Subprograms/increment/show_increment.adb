with Ada.Text_IO; use Ada.Text_IO;
with Increment_By;


procedure show_increment is
   A, B, C : Integer;
   
 -- nested subprograms
 procedure Display_Result is
   begin
      Put_Line ("Increment of " & Integer'Image (A)
                & " with "      & Integer'Image (B)
                & " is "        & Integer'Image (C));
   end Display_Result;
 -- end nested subprograms
begin
   -- Subprograms calls
   C := Increment_By;

   Put_Line ("Using defaults for Increment_By is " & Integer'Image (C));

   A := 10;
   B := 32;
   C := Increment_By (A, B);

   Put_Line ("Increment of " & Integer'Image (A)
             & " with "      & Integer'Image (B)
             & " is "        & Integer'Image (C));

   A := 12;
   B := 5;
   C := Increment_By (I    => A,
                      Incr => B);

   Put_Line ("Increment of " & Integer'Image (A)
             & " with "      & Integer'Image (B)
             & " is "        & Integer'Image (C));
   -- ################################################
   
   -- Nested subprograms
   Put_Line("Nested subprograms");
   A := 10;
   B := 3;
   C := Increment_By (A, B);
   Display_Result;
   
   
end show_increment;
