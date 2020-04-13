with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
 procedure Swap (A, B: in out Integer) is
      Temp : Integer;
   begin
      Temp := A;
      A := B;
      B := Temp;
   end Swap;

A : Integer := 22;
B : Integer := 11;

begin
   Put_Line("Before Swap: A = " & Integer'image(A) & " B = " & Integer'image(B));
   Swap(A,B);
   Put_Line("After Swap: A = " & Integer'image(A) & " B = " & Integer'image(B));
   
end Main;