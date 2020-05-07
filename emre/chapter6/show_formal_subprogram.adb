with Ada.Text_IO; use Ada.Text_IO;
procedure Show_Formal_Subprogram is
   generic
      Description : String;
type T is private;
      with function Comparison (X, Y : T) return Boolean;
   procedure Check (X, Y : T);
   procedure Check (X, Y : T) is
      Result : Boolean;
   begin
      Result := Comparison (X, Y);
      if Result then
         Put_Line ("Comparison (" & Description &
                     ") between arguments is OK!");
      else
         Put_Line ("Comparison (" & Description &
                     ") between arguments is not OK!");
      end if;
   end Check;
   A, B : Integer;
   procedure Check_Is_Equal is new Check (Description => "equality",
                                          T => Integer,
                                          Comparison => Standard."=");
   -- Here, we are mapping the standard equality operator for Integer
   -- types to the Comparison formal function
begin
   A := 0;
   B := 1;
   Check_Is_Equal (A, B);
end Show_Formal_Subprogram
