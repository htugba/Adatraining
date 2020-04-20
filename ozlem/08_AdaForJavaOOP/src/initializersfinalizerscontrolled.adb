with Ada.Text_IO; use Ada.Text_IO;

package body InitializersFinalizersControlled is
   
   procedure initialize(item : in out Widget) is
   begin
      Put_Line("   This is from Initialize");
   end initialize;
   
   procedure adjust(item : in out Widget) is
   begin
      Put_Line("   This is from Adjust");
   end adjust;
   
   procedure finalize(item : in out Widget) is
   begin
      Put_Line("   This is from Finalize");
   end finalize;
   
end InitializersFinalizersControlled;
