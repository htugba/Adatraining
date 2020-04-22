package ProtectedObjectsWithEntriesPackage is

   protected Obj is
      --Operations in there
      procedure set(val : Integer);
      entry get(val : out Integer); --entry
   private
      --Data in there
      local : Integer := 0;
      isSet : Boolean := false;
   end Obj;

end ProtectedObjectsWithEntriesPackage;
