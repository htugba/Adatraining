with Ada.Text_IO; use Ada.Text_IO;

package body EnumArrayIndexAndMap is
   
 ---------------Enum Index of Array/Mapping Mechanism in Ada------------------
   procedure enumIndexAndMap is
      type Month_Index is (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
      type Month_Duration_Values is range 1..31;
      
      type ArrayOfMonth is array (Month_Index) of Month_Duration_Values;
      
      durationOfEachMonthArr : constant ArrayOfMonth :=
           (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
         
      durationOfFeb : Month_Duration_Values := durationOfEachMonthArr(Feb);
         
   begin
      Put_Line(Month_Duration_Values'Image(durationOfFeb));
      
      for M in Month_Index loop
         Put_Line(Month_Index'Image(M) & " has "
                  & Month_Duration_Values'Image(durationOfEachMonthArr(M)) & " days.");
      end loop;
   end enumIndexAndMap;
   
end EnumArrayIndexAndMap;
