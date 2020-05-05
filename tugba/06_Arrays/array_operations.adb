with Ada.Text_IO;use Ada.Text_IO;
procedure array_operations is
 type My_Int is range 0 .. 1000;
   type Index is range 1 .. 5;

   type My_Int_Array is array (Index) of My_Int;
   --                                    ^ Type of elements
   --                          ^ Bounds of the array
   Arr : My_Int_Array := (2, 3, 5, 7, 11);
   --                    ^ Array literal, called aggregate in Ada
   
   -- # month Example ----
   type Month_Duration is range 1 .. 31;
   type Month is (Jan, Feb, Mar, Apr, May, Jun,
                  Jul, Aug, Sep, Oct, Nov, Dec);

   type My_Int_Month_Array is array (Month) of Month_Duration;

   Tab : constant My_Int_Month_Array  :=
     (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

   Feb_Days : Month_Duration := Tab (Feb);
   --  Number of days in February
   
   -- #Simpler array declarations --
   type Simple_Int is range 0 .. 1000;
   type Simple_Int_Array is array (1 .. 5) of Simple_Int;
   --                          ^ Subtype of Integer
   Tab_Simple : Simple_Int_Array := (2, 3, 5, 7, 11);
   
   
   -- #Range attribute --
   type Range_Int is range 0 .. 1000;
   type Range_Int_Array is array (1 .. 5) of Range_Int;
   Tab_Range : Range_Int_Array := (2, 3, 5, 7, 11);
   
   -- #Array attributes --
   type Array_Attribute_Int is range 0 .. 1000;
   type Array_Attribute_Int_Array is array (1 .. 5) of Array_Attribute_Int;
   Tab_Array_Attributes : Array_Attribute_Int_Array := (2, 3, 5, 7, 11);
   
   
   -- # Unconstrained arrays--
   type Days is (Monday, Tuesday, Wednesday,
                 Thursday, Friday, Saturday, Sunday);

   type Workload_Type is array (Days range <>) of Natural;
   --  Indefinite array type
   --                           ^ Bounds are of type Days,
   --                             but not known

   Workload : constant Workload_Type (Monday .. Friday) := (Friday => 7, others => 8);
   
   -- # Reverse -- 
   Message : String (1 .. 11) := "dlroW olleH";
   
   -- You can omit the bounds when creating an instance of an unconstrained array type if you 
   -- supply an initialization, since the bounds can be deduced from the initialization expression.
   Message1 : constant String := "..dlroW olleH";
   
   
   -- # Returning unconstrained arrays --

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
   
   -- #Declaring arrays--
   subtype Day_Name is String (1 .. 2);
   --  Subtype of string with known size

   type Days_Name_Type
   is array (Days) of Day_Name;

   Names : constant Days_Name_Type :=
     ("Mo", "Tu", "We", "Th", "Fr", "Sa", "Su");

   
    -- #Array slices--
     Buf : String := "Hello ...";

    Full_Name : String := "John Smith";
   
begin
   for I in Index loop
      Put (My_Int'Image (Arr (I)));
      --                     ^ Take the Ith element
   end loop;
   New_Line;
   
   -- month example ---
   for M in Month loop
      Put_Line
        (Month'Image (M) & " has "
         & Month_Duration'Image (Tab (M))  & " days.");
   end loop;
   
   -- Simpler array declarations --
      for I in 1 .. 5 loop
      Put (Simple_Int'Image (Tab_Simple (I)));
   end loop;
   New_Line;
   
   -- Range attribute --
      for I in Tab_Range'Range loop
      Put (Range_Int'Image (Tab_Range (I)));
   end loop;
   New_Line;
   
   -- Array attributes --
   for I in Tab_Array_Attributes'First .. Tab_Array_Attributes'Last - 1 loop
      Put (Array_Attribute_Int'Image (Tab_Array_Attributes (I)));
   end loop;
   New_Line;
   
   -- Unconstrained arrays--
      for I in Workload'Range loop
      Put_Line (Integer'Image (Workload (I)));
   end loop;
   
   -- Reverse --
      for I in reverse Message'Range loop
      --    ^ Iterate in reverse order
      Put (Message (I));
   end loop;
   New_Line;
      for I in reverse Message1'Range loop
      Put (Message1 (I));
   end loop;
    New_Line;
   
   --Returning unconstrained arrays --
   Put_Line ("First day is " & Get_Day_Name (Days'First));
   Put_Line ("Last day is " & Get_Day_Name (Days'Last));
   
   
   -- Declaring arrays--
      for I in Names'Range loop
      Put_Line (Names (I));
   end loop;
   
   -- Array slices--
       Buf (7 .. 9) := "Bob";
    --  Careful! This works because the string on the right side is the
    --  same length as the replaced slice!

    Put_Line (Buf);  --  Prints "Hello Bob"

    Put_Line ("Hi " & Full_Name (1 .. 4)); --  Prints "Hi John"
   
   
   
end array_operations;
