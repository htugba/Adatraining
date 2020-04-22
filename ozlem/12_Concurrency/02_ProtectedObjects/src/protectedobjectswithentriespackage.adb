package body ProtectedObjectsWithEntriesPackage is
   
   protected body Obj is
      procedure set(val : Integer) is
      begin
         local := val;
         isSet := true;
      end set;
   
      entry get(val : out Integer) when isSet is
      begin
         val := local;
         isSet := false;
      end get;
   end Obj; 
end ProtectedObjectsWithEntriesPackage;
