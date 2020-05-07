with Ada.Text_IO; use Ada.Text_IO;


procedure Illegal_Example is
   -- Declare two different floating point types
   type Meters is new Float;
   type Miles is new Float;
   Dist_Imperial : Miles;
   -- Declare a constant
   Dist_Metric : constant Meters := 100.0;
begin
