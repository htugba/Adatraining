with Ada.Text_IO; use Ada.Text_IO;


procedure Show_Protected_Objects is
   protected Obj is
      -- Operations go here (only subprograms)
      procedure Set (V : Integer);
      function Get return Integer;
   private
      -- Data goes here
      Local : Integer := 0;
   end Obj;
   protected body Obj is
      -- procedures can modify the data
      procedure Set (V : Integer) is
      begin
         Local := V;
      end Set;
      -- functions cannot modify the data
      function Get return Integer is
      begin
         return Local;
      end Get;
   end Obj;
begin
   Obj.Set (5);
   Put_Line ("Number is: " & Integer'Image (Obj.Get));
end Show_Protected_Objects;
