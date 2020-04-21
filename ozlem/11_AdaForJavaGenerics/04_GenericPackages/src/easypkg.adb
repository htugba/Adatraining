package body EasyPkg is
   procedure tradeValues (x, y : in out MyIntType) is
   temp : MyIntType;
   begin
      temp := x;
      x := y;
      y := temp;
   end tradeValues;

   function averageValues (x, y : MyRealType) return MyRealType is
   begin
      return (x + y) / 2.0;
   end averageValues;
end EasyPkg;
