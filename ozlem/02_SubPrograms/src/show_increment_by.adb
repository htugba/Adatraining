with Ada.Text_IO; use Ada.Text_IO;
with Increment_by;

procedure Show_increment_by is
   A, B, C : Integer;
begin
   ------------------------Parameterless call-------------------------------
   C := Increment_By;
   Put_Line ("Result with default Parameter " & Integer'Image (C));
   
   ------------------------Regular parameter passing------------------------
   A := 10;
   B := 3;
   C := Increment_by(A, B);
   Put_Line ("Increment of " & Integer'Image (A)
             & " with "      & Integer'Image (B)
             & " is "        & Integer'Image (C));
   
   ------------------------Named parameter passing--------------------------
   A := 20;
   B := 8;
   C := Increment_by(number => A, i => B);
      Put_Line ("Increment of " & Integer'Image (A)
             & " with "      & Integer'Image (B)
             & " is "        & Integer'Image (C));
    
end Show_increment_by;
