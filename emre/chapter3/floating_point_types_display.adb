with Ada.Text_IO; use Ada.Text_IO;

procedure floating_point_types_display is
   type T3 is digits 3;
   type T18 is digits 18;
   C1 : constant := 1.0e-4;
   A : T3 := 1.0 + C1;
   B : T18 := 1.0 + C1;
begin
   Put_Line ("The value of A is " & T3'Image (A));
   Put_Line ("The value of B is " & T18'Image (B));
   
end floating_point_types_display;
