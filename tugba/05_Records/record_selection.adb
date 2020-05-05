with Ada.Text_IO;use Ada.Text_IO;
procedure record_selection is
type Month_Type is
     (January, February, March, April, May, June, July,
      August, September, October, November, December);

   type Date is record
      Day   : Integer range 1 .. 31;
      Month : Month_Type;
      Year  : Integer range 1 .. 3000 := 2032;
   end record;

   Some_Day : Date := (1, January, 2000);

begin
   Some_Day.Year := 2001;
   Some_Day.Day := 5;
   Put_Line ("Day:" & Integer'Image (Some_Day.Day)
             & ", Month: " & Month_Type'Image (Some_Day.Month)
             & ", Year:" & Integer'Image (Some_Day.Year));
end record_selection;
