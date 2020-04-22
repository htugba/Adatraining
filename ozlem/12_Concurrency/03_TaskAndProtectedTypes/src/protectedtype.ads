package ProtectedType is

   protected type ObjType is --Defined as type
      --Operations in there
      procedure set(val : Integer);
      function get return Integer;
      
   private 
      --Data in there
      local : Integer := 0;
   end ObjType;
end ProtectedType;
