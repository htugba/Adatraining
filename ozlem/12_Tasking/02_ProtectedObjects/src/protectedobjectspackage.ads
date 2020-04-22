package ProtectedObjectsPackage is

   protected Obj is
         --Operations in there
         procedure set(val : Integer);
         function get return Integer;
      private
         --Data in there
         local : Integer := 0;
      end Obj;
  

end ProtectedObjectsPackage;
