procedure Main is

   type ArrayIndexes is new Integer range 1..5;
   type MyFloat is new Float digits 5;
   type FloatArray is array (arrayIndexes) of MyFloat;

   total : MyFloat;
   floatArrayData : FloatArray := (1.0, 2.2, 4.3, 3.1, 5.4);

   procedure getSum is new sumOfArray(FloatArray, MyFloat);


begin
   --!!Not finished. Will be continued.
   null;
end Main;






