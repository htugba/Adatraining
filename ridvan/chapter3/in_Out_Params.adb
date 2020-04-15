with Ada.Text_IO; use Ada.Text_IO;

procedure In_Out_Params is
   C : Integer;

   -- Ili integer degeri parametre olarak gecen kod ornegi		
   function Add (A, B : in out Integer) return Integer is
   begin
      return A + B;
   end Add;

   A : Integer := 12;
   B : Integer := 44;
begin
    C := Add (A, B);
    Put_Line (Integer'Image (C)); --  Prints 44
end In_Out_Params;