with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   --Record is similar to struct in C.

   ------------------------Record Example 1-------------------------------------
   procedure Record_Selection is
      type Month_Type is
        (January, February, March, April, May, June, July,
         August, September, October, November, December);

      type DateStruct is record
         Day   : Integer range 1 .. 31;
         Month : Month_Type;
         Year  : Integer range 1 .. 3000 := 2032;
      end record;

      Some_Day : DateStruct := (1, January, 2000);

   begin
      Some_Day.Year := 2001;
      Put_Line ("Day:" & Integer'Image (Some_Day.Day)
                & ", Month: " & Month_Type'Image (Some_Day.Month)
                & ", Year:" & Integer'Image (Some_Day.Year));
   end Record_Selection;


   ------------------------Record Example 2-------------------------------------
   procedure Record_Example is
      type struct_device is
         record
            major_number : Integer;
            minor_number : Integer;
            name : String(1 .. 3); --String number must be same with the given string.
         end record;

      lp1 : struct_device := (1, 2, "lp1");
      lp2 : struct_device := (major_number => 1,
                              minor_number => 3,
                              name => "lp2");

      procedure printStructTypes (device : struct_device) is
      begin
         Put_Line(Integer'Image(device.major_number) & " "
                  & Integer'Image(device.minor_number) & " "
                  & device.name);
      end printStructTypes;

   begin
      printStructTypes(lp1);
      printStructTypes(lp2);
   end Record_Example;

--------------------------------------------------------------------------------
begin
   --RecordSelection
   Record_Example;

end Main;
