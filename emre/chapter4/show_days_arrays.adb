with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Days_arrays is
   type Days is (Monday, Tuesday, Wednesday,
                 Thursday, Friday, Saturday, Sunday);
   subtype Day_Name is String (1 .. 2);
   -- Subtype of string with known size
   type Days_Name_Type
   is array (Days) of Day_Name;
   -- ^ Type of the index
   -- ^ Type of the element. Must be
   -- definite
   Names : constant Days_Name_Type :=
     ("Mo", "Tu", "We", "Th", "Fr", "Sa", "Su");
   -- Initial value given by aggregate
begin
   for I in Names'Range loop
      Put_Line (Names (I));
   end loop;
   
end Show_Days_arrays;
