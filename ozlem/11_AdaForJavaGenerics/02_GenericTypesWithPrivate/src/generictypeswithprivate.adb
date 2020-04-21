with Ada.Text_IO; use Ada.Text_IO;

package body GenericTypesWithPrivate is

   procedure exchangeData(x, y : in out T1) is
      temp : T1;
   begin
      temp := x;
      x := y;
      y := temp;  
   end;
   
   function findAverage(x, y : in out T2) return T2 is
      result : T2;
   begin
      result := (x+y) / 2;
      return result;
   end findAverage;
   
   procedure print(beforeOrAfter, data1, data2 : String) is
   begin
      Put(" " & beforeOrAfter & " " & data1 & " " & data2);
   end print;
   
end GenericTypesWithPrivate;
