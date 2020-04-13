with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Increment_By;

procedure Using_Inc is
      A, B, C: Integer;
      Var : Integer := Increment_By;
   begin
      C := Increment_By;
      Put_Line("Using default for Increment_By is " & Integer'image(C) );
      
      A := 5;
      B := 3;
      C := Increment_By(A,B);
      
      Put_Line ("Increment of " & Integer'Image (A)
                & " with " & Integer'Image (B)
                & " is " & Integer'Image (C));
      
      A := 2;
      for I in 1 .. 5 loop
         C := C + Increment_By(I,A);
         Put_Line("Value of C = " & Integer'image(C));
      end loop;
      
      A := 15;
      B := 5;
      C := Increment_By(I => A, Incr => B);
      Put_Line ("Increment of " & Integer'Image (A)
                & " with " & Integer'Image (B)
                & " is " & Integer'Image (C));
          
   end Using_Inc;