with Ada.Text_IO; 
use Ada.Text_IO;

procedure Mode_Int_Example is
   --  Signed Integer tanimlama ve aralik verme
   type My_Int is range -1 .. 20;

begin
   for I in My_Int loop
      Put_Line (My_Int'Image (I));
   end loop;
end Mode_Int_Example;