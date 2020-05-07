procedure Show_Formal_Type_Declaration is
   generic
      type T is private;
      -- T is a formal type that indicates that any type can be used,
      -- possibly a numeric type or possibly even a record type.
   procedure Set (E : T);
   procedure Set (E : T) is null;
begin
   null;
end Show_Formal_Type_Declaration;
