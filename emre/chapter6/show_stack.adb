with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Stack is
   generic
      Max : Positive;
      type T is private;
   package Stacks is
      type Stack is limited private;
      Stack_Underflow, Stack_Overflow : exception;
      function Is_Empty (S : Stack) return Boolean;
      function Pop (S : in out Stack) return T;
      procedure Push (S : in out Stack; V : T);
   private
      type Stack_Array is array (Natural range <>) of T;
      Min : constant := 1;
      type Stack is record
         Container : Stack_Array (Min .. Max);
         Top : Natural := Min - 1;
      end record;
   end Stacks;
   package body Stacks is
      function Is_Empty (S : Stack) return Boolean is
        (S.Top < S.Container'First);
      function Is_Full (S : Stack) return Boolean is
        (S.Top >= S.Container'Last);
      function Pop (S : in out Stack) return T is
      begin
         if Is_Empty (S) then
            raise Stack_Underflow;
         else
            return X : T do
               X := S.Container (S.Top);
               S.Top := S.Top - 1;
            end return;
         end if;
      end Pop;
      procedure Push (S : in out Stack; V : T) is
      begin
         if Is_Full (S) then
            raise Stack_Overflow;
         else
            S.Top := S.Top + 1;
            S.Container (S.Top) := V;
         end if;
      end Push;
   end Stacks;
   package Integer_Stacks is new Stacks (Max => 10,
                                         T => Integer);
   use Integer_Stacks;
   Values : Integer_Stacks.Stack;
begin
   Push (Values, 10);
   Push (Values, 20);
   Put_Line ("Last value was " & Integer'Image (Pop (Values)));
end Show_Stack;
