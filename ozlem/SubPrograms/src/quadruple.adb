with Ada.Text_IO; use Ada.Text_IO;

procedure Quadruple is

   function twoTimes(i : Integer) return Integer is
   begin
      return i * 2;
   end twoTimes;
   
   quadroNumber : Integer := twoTimes(twoTimes(3));
   quadroNumber2 : Integer;
   
begin
   Put(Integer'Image (quadroNumber));
   
   quadroNumber2 := twoTimes(5);
   Put(Integer'Image (quadroNumber2));
   
end Quadruple;
