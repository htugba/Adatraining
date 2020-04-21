generic
   type MyIntType is (<>);
   type MyRealType is digits <>;
   
package EasyPkg is
   procedure tradeValues (X, Y : in out MyIntType);
   function averageValues (X, Y : MyRealType) return MyRealType;
end EasyPkg;
