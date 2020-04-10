package Overloading is

   procedure calculateSum(a : in Integer; b : in Integer);
   procedure calculateSum(a : Float; b : Float);

   function doSomethingWithInteger(n : Integer) return String;
   function doSomethingWithInteger(n : Integer) return Integer;

end Overloading;
