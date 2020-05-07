procedure Show_Formal_Object_Declaration is
   generic
      type T is private;
      X : in out T;
      -- X can be used in the Set procedure
   procedure Set (E : T);
   procedure Set (E : T) is null;
begin
   null;
end Show_Formal_Object_Declaration;
