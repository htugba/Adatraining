with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   type Days is (Monday, Tuesday, Wednesday,Thursday, Friday, Saturday, Sunday);
   type Months is (Jan, Feb, Mar, Apr, May, Jun,Jul, Aug, Sep, Oct, Nov, Dec);

    --------------------------Array Examples--------------------------------
   function Get_Day_Name (Day : Days := Monday) return String is
   begin
      return
        (case Day is
            when Monday => "Monday",
            when Tuesday => "Tuesday",
            when Wednesday => "Wednesday",
            when Thursday => "Thursday",
            when Friday => "Friday",
            when Saturday => "Saturday",
            when Sunday => "Sunday");
   end Get_Day_Name;


   procedure Month_Example is
      type Month_Duration is range 1 .. 31;
      type Day_length_Array is array (Months) of Month_Duration;

      Tab : constant Day_length_Array :=(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
      --  Maps months to number of days (ignoring leap years)

      Feb_Days : Month_Duration := Tab (Feb);
      --  Number of days in February
   begin
      for M in Months loop
         Put_Line
           (Months'Image (M) & " has "
            & Month_Duration'Image (Tab (M))  & " days.");
      end loop;
   end Month_Example;
   ------------------------------------------------------------------------------

   --------------------------Record Example--------------------------------
   procedure Record_Ex is

      type Date is record
         Day   : Integer range 1 .. 31;
         Month : Months;
         Year  : Integer range 1 .. 3000 := 2032;
      end record;

      Some_Day : Date := (14, Mar, 2000);

   begin
      Some_Day.Year := 2020;
      Put_Line ("Day:" & Integer'Image (Some_Day.Day)
                & ", Month: " & Months'Image (Some_Day.Month)
                & ", Year:" & Integer'Image (Some_Day.Year));
   end Record_Ex;
   ------------------------------------------------------------------------------

begin
   Put_Line ("First day is " & Get_Day_Name (Days'First));
   Month_Example;
   Record_Ex;
end Main;
