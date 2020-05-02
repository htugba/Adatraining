with Ada.Text_IO; use Ada.Text_IO;
procedure Display_Numbers (A, B : Integer) is

X , Y : Integer; 
begin
   if A > B then
      X := B;
      Y := A;
   else
      X := A;
      Y := B;
   end if;
   
   for I in X .. Y loop
      Put_Line(Integer'image(I));
   end loop;
end Display_Numbers;