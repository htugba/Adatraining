package GenericTypeArray is

   generic
      type Subscript is (<>);
      type FloatType is digits <>;
      type ConstraintArray is array (Subscript) of FloatType;
      
   procedure sumOfArray(arr : ConstraintArray; sumOfElements : FloatType);
   
   generic
      type MyType is range <>;
      type MyArray is array (Positive range <>) of MyType;
      
   function addArray (arr : MyArray) return MyType;

end GenericTypeArray;
