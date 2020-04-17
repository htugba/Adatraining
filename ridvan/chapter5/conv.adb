with Ada.Text_IO; use Ada.Text_IO;
procedure Conv is
   type Meters is new Float;
   type Miles is new Float;
   Dist_Imperial : Miles;
   Dist_Metric : constant Meters := 100.0;
begin
   Dist_Imperial := (Miles (Dist_Metric) * 1609.0) / 1000.0;
   --                ^ Type conversion, from Meters to Miles
   --  Now the code is correct

   Put_Line (Miles'Image (Dist_Imperial));
end Conv;