procedure Show_Simple_Generic is
   generic
      type T is private;
      -- Declaration of formal types and objects
   procedure Operator (X : in out T);
   -- This could be one of the following:
   -- <procedure | function | package>
   procedure Operator (X : in out T) is null;
begin
   null;
end Show_Simple_Generic;
