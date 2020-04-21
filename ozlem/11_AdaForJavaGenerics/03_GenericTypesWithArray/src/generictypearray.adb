package body GenericTypeArray is
   
   procedure sumOfArray(arr : ConstraintArray; sumOfElements : FloatType) is
   begin
      sumOfElements := 0.0;
      for i in arr'First..arr'Last loop
         sumOfElements := sumOfElements + arr(i);
      end loop;
   end sumOfArray;
   
   function addArray (arr : MyArray) return MyType is 
      sumOfElements : MyType := 0;
   begin
      for i in arr'First..arr'Last loop
         sumOfElements := sumOfElements + arr(i);
      end loop;
      
      return sumOfElements;
   end addArray;
