package Stacks is
   type Stack is limited private; --Limited type. Cannot assign nor compare.

   procedure push (s : in out Stack; value : Integer);
   procedure pop (s : in out Stack; values : out Integer);
   
private
   subtype StackIndexType is Natural range 1 .. 10;
   type ContentType is array (StackIndexType) of Natural;

   type Stack is limited record
      top     : StackIndexType;
      contentArr : ContentType;
   end record;
end Stacks;
