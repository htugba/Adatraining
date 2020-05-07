with Ada.Text_IO; use Ada.Text_IO;
procedure Show_Generic_Package is
   generic
      type T is private;
   package Element is
      procedure Set (E : T);
      procedure Reset;
      function Get return T;
      function Is_Valid return Boolean;
      Invalid_Element : exception;
      private
      Value : T;
      Valid : Boolean := False;
   end Element;
   package body Element is
      procedure Set (E : T) is
      begin
         Value := E;
         Valid := True;
      end Set;
      procedure Reset is
      begin
         Valid := False;
      end Reset;
      function Get return T is
      begin
         if not Valid then
            raise Invalid_Element;
         end if;
         return Value;
      end Get;
      function Is_Valid return Boolean is (Valid);
   end Element;
   package I is new Element (T => Integer);
   procedure Display_Initialized is
   begin
      if I.Is_Valid then
         Put_Line ("Value is initialized");
      else
         Put_Line ("Value is not initialized");
      end if;
   end Display_Initialized;
begin
   Display_Initialized;
   Put_Line ("Initializing...");
   I.Set (5);
   Display_Initialized;
   Put_Line ("Value is now set to " & Integer'Image (I.Get));
   Put_Line ("Reseting...");
   I.Reset;
   Display_Initialized;
end Show_Generic_Package;
