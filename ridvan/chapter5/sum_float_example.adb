with Ada.Text_IO; use Ada.Text_IO;

procedure Sum_Float_Example is
   A : Float := 2.5;
   B : Float := 3.7;
   C : Float := A + B;
begin
   Put_Line ("The value of A is " & Float'Image (A));
end Sum_Float_Example;