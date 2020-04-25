with Ada.Text_IO; use Ada.Text_IO;
with Factorial;
with Hanoi;


procedure recursion is
   A, B: Integer;
begin
    -- Factorial 
   Put_Line("Factorial");
   A := 5;
   B :=  Factorial(A);
   
   Put_Line(Integer'Image (A) & " factorial is " &Integer'Image (B));
   
   -- Hanoi
    Hanoi(3, 'A', 'B', 'C');
   
end recursion;
