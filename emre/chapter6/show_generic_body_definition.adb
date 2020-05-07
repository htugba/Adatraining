procedure Show_Generic_Body_Definition is
   generic
      type T is private;
      X : in out T;
   procedure Set (E : T);
   procedure Set (E : T) is
      -- Body definition: "generic" keyword is not used
   begin
      X := E;
   end Set;
begin
   null;
end Show_Generic_Body_Definition;
