package body ProtectedType is

   protected body ObjType is 
      procedure set(val : Integer) is 
      begin 
         local := val;
      end set;
         
      function get return Integer is
      begin 
         return local;
      end get;
   end ObjType;
   
end ProtectedType;
