with Ada.Text_IO; use Ada.Text_IO;

package body genericTypes is

   procedure exchangeValues(x, y : in out T) is
      temp : T;
   begin
      Put("Before exchange x:" & T'Image(x) & " y:" & T'Image(y));
      
      temp := x;
      x := y;
      y := temp;  
      
      Put_Line(" After exchange x:" & T'Image(x) & " y:" & T'Image(y));

   end exchangeValues;
   
end genericTypes;
