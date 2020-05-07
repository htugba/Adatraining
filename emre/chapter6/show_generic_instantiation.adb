with Ada.Text_IO; use Ada.Text_IO;
procedure Show_Generic_Instantiation is
   generic
      type T is private;
      X : in out T;
      -- X can be used in the Set procedure
   procedure Set (E : T);
   procedure Set (E : T) is
   begin
      X := E;
   end Set;
   Main : Integer := 0;
   Current : Integer;
   procedure Set_Main is new Set (T => Integer,
                                  X => Main);
   -- Here, we map the formal parameters to actual types and objects.
   --
   -- The same approach can be used to instantiate functions or
   -- packages, e.g.:
   -- function Get_Main is new ...
   -- package Integer_Queue is new ...
begin
   Current := 10;
   Set_Main (Current);
   Put_Line ("Value of Main is " & Integer'Image (Main));
end Show_Generic_Instantiation;
