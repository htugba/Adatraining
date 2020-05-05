with Ada.Calendar;            use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;
with Ada.Calendar.Time_Zones; use Ada.Calendar.Time_Zones;
with Ada.Text_IO;             use Ada.Text_IO;

package body DateAndTime is

   procedure displayCurrentTime is
      Now : Time := Clock;
   begin
      Put_Line ("Current time: " & Image(Now));
   end displayCurrentTime;
   
   procedure displayCurrentYear is
      Now         : Time := Clock;
      Now_Year    : Year_Number;
      Now_Month   : Month_Number;
      Now_Day     : Day_Number;
      Now_Seconds : Day_Duration;
   begin
      Split (Now, Now_Year, Now_Month, Now_Day, Now_Seconds);

      Put_Line ("Current year  is: " & Year_Number'Image (Now_Year));
      Put_Line ("Current month is: " & Month_Number'Image (Now_Month));
      Put_Line ("Current day   is: " & Day_Number'Image (Now_Day));
   end;
   
   procedure displayDelayNextSpecificTime is
      TZ   : Time_Offset := UTC_Time_Offset;
      
      Next : Time := Ada.Calendar.Formatting.Time_Of
        (Year        => 2018,
         Month       => 5,
         Day         => 1,
         Hour        => 15,
         Minute      => 0,
         Second      => 0,
         Sub_Second  => 0.0,
         Leap_Second => False,
         Time_Zone   => TZ); --Next = 2018-05-01 15:00:00.00 (local time-zone)
      
      --Next : Time := Ada.Calendar.Formatting.Value("2018-05-01 15:00:00.00", TZ);
   begin
      Put_Line ("Let's wait until...");
      Put_Line (Image (Next, True, TZ));

      delay until Next;
      
      Put_Line ("Enough waiting!");
   end displayDelayNextSpecificTime;
   
   procedure displayDelayNext is
      D    : Duration := 5.0; --seconds
      Now  : Time     := Clock;
      Next : Time     := Now + D; --use duration to specify next point in time
   begin
      Put_Line ("Let's wait " & Duration'Image (D) & " seconds...");
      delay until Next;
      Put_Line ("Enough waiting!"); displayDelayNext;
   end displayDelayNext;
   
   
   
end DateAndTime;
