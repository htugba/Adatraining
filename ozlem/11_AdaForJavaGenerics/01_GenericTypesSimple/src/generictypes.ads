package genericTypes is

   generic 
      type T is range <>; --only integer type
   
   procedure exchangeValues(x, y : in out T);

end genericTypes;
