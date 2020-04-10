with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with System.Address_To_Access_Conversions; with System.Address_Image;

package body AccessTypesPointers is
   
   procedure access1 is
      type PointSomewhere is access Integer;
      
      index, arrow, there : PointSomewhere;
      
   begin
      
      index := new Integer;
      index.all := 13; 
      --           ^ Variable named Index is pointing someplace in memory 
      --             which has no name, but contains the value of 13
      Put("The value is ");
      Put(Index.all);
      New_Line;
      
      arrow := new Integer;
      arrow.all := index.all + 16;
      --           ^ Take the value that is stored at the location to which Index points
      --             add 16 to it
      there := arrow;
      --       ^  Two of the access variables are pointing at the same piece of data. 
      Put("The values are now ");
      Put(index.all);
      Put(arrow.all);
      Put(there.all);
      New_Line;
      
      there.all := 21;
      Put("The values are now ");
      Put(index.all);
      Put(arrow.all);
      Put(there.all);
      New_Line;
      
      Put_Line("The address values ");
      Put_Line(System.Address_Image(index.all'address));
      Put_Line(System.Address_Image(arrow.all'address));
      Put_Line(System.Address_Image(there.all'address));
      New_Line;
   
   end access1;
   
end AccessTypesPointers;
