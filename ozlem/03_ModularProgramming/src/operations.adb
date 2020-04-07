package body Operations is
   
   --Body of the operation package and cannot used as a main module
   --So does not have begin
   
   lastIncrement : Integer := 1;
   
   function incrementNumber(number : Integer;
                            incr : Integer := 0) return Integer is
   begin
      if incr /=0 then 
         lastIncrement := incr;
      end if;
      
      return number + lastIncrement;
   end incrementNumber;
   
   function getIncrementedValue return Integer is 
   begin
      return lastIncrement;
   end getIncrementedValue;
   
end Operations;
