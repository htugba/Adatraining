with Ada.Text_IO; use Ada.Text_IO; 

package body Overloading is
   
   -------------------Name is same, different parameters------------------------
   procedure calculateSum(a : in Integer; b : in Integer) is
      sum : Integer;
   begin
      sum := a + b;
      Put_Line(Integer'Image(sum));
   end calculateSum;
   
   procedure calculateSum(a : Float; b : Float) is 
      sum : Float := a + b;
   begin
      Put_Line(Float'Image(sum));
   end calculateSum;
   
   ------------------Name is same, different return types-----------------------
   function doSomethingWithInteger(n : Integer) return String is 
   begin
      return "This integer is : " & Integer'Image(n);
   end doSomethingWithInteger;
   
   function doSomethingWithInteger(n : Integer) return Integer is
   begin
      return n*2;
   end doSomethingWithInteger;
   
end Overloading;
