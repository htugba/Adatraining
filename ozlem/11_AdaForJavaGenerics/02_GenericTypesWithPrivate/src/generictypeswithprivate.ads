package GenericTypesWithPrivate is

   generic
      type T1 is private;      
   procedure exchangeData(x, y : in out T1);
   
   generic
      type T2 is range <>;   
   function findAverage(x, y : in out T2) return T2;
   
   procedure print(beforeOrAfter, data1, data2 : String);

end GenericTypesWithPrivate;
