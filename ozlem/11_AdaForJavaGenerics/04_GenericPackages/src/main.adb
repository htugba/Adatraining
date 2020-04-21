with Ada.Text_IO, EasyPkg;
use Ada.Text_IO;

procedure Main is

   type MyNewType is new Integer range -12..123;
   type MyNewFloatType is new Float digits 6;

   package myPackage1 is new EasyPkg(MyNewType, MyNewFloatType);
   use myPackage1;

   package myPackage2 is new EasyPkg(Integer, Float);
   use myPackage2;

   int1 : Integer := 12;
   int2 : Integer := 35;
   customInt1 : MyNewType := 1;
   customInt2 : MyNewType := 14;
   float1 : Float;
   customFloat1 : MyNewFloatType;

begin
   tradeValues(int1, int2);             -- Uses myPackage2.tradeValues
   tradeValues(customInt1, customInt2); -- Uses myPackage1.tradeValues
   myPackage2.tradeValues(int1, int2);
   myPackage1.tradeValues(customInt1, customInt2);
-- myPackage2.tradeValues(customInt1, customInt2); -- Illegal
-- myPackage1.tradeValues(int1, int2);             -- Illegal

   float1 := averageValues(2.71828, 3.141592);
   float1 := averageValues(float1, 2.0 * 3.141592);
   customFloat1 := averageValues(12.3, 27.345);
   customFloat1 := averageValues(customFloat1, 2.0 * 3.141592);
   customFloat1 := myPackage1.averageValues(12.3, 27.345);
end Main;
