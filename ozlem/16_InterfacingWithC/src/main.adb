with Interfaces.C; use Interfaces.C;
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   procedure Show_C_Func is

      --  Imports function 'my_func' from C and rename it to 'Get_Value'
      function getMaximum(num1 : int; num2 : int) return int
        with
          Import        => True,
          Convention    => C,
          External_Name => "getMax";

      function getMinimum(num1 : int; num2 : int) return int
        with
          Import        => True,
          Convention    => C,
          External_Name => "getMin";

      result : int;
   begin
      result := getMaximum(8, 7);
      Put_Line(int'Image(result));

      result := getMinimum(8, 7);
      Put_Line(int'Image(result));

   end Show_C_Func;
begin
  Show_C_Func;
end Main;
