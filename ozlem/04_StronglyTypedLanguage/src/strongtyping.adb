with Ada.Text_IO; use Ada.Text_IO;

--gprbuild -d -PE:\ProgrammingWorkspace\Adatraining\ozlem\04_StronglyTypedLanguage\stronglytypedlanguage.gpr E:\ProgrammingWorkspace\Adatraining\ozlem\04_StronglyTypedLanguage\src\strongtyping.adb
--E:\ProgrammingWorkspace\Adatraining\ozlem\04_StronglyTypedLanguage\obj\strongtyping.exe

procedure StrongTyping is

   
   --------------Example With Conversion Code Which is Not Suggested------------
   procedure Conv is
      type Meters is new Float;
      type Miles is new Float;
      DistanceInMiles : Miles;
      DistanceInMetric : constant Meters := 100.0;
      
   begin
      --  Not correct: types mismatch
      --DistanceInMiles := (DistanceInMetric * 1609.0) / 1000.0;
      --Put_Line (Miles'Image (DistanceInMiles));
      
      -- Correct Type conversion, from Meters to Miles
      DistanceInMiles := (Miles (DistanceInMetric) * 1609.0) / 1000.0;    
      Put_Line (Miles'Image (DistanceInMiles));
   end Conv;
   
   -------------------------Better Solution-------------------------------------
   procedure Conv2 is
      type Meters is new Float;
      type Miles is new Float;
      DistanceInMiles : Miles;
      DistanceInMetric : constant Meters := 100.0;
      
      function ConvertFromMetersToMiles(meter : Meters) return Miles is
      begin
         return (Miles (meter) * 1609.0) / 1000.0;
      end ConvertFromMetersToMiles;
      
   begin
      DistanceInMiles := ConvertFromMetersToMiles(DistanceInMetric);
      Put_Line("DistanceMiles:" & Miles'Image(DistanceInMiles));
   
   end Conv2;
   
begin
   Conv2;
end StrongTyping;
