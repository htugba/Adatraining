package body ProtectedObjectsPackage is

   protected body Obj is 
      procedure set(val : Integer) is 
      begin 
         local := val;
      end set;
         
      function get return Integer is
      begin 
         return local;
      end get;
   end Obj;
   
end ProtectedObjectsPackage;
