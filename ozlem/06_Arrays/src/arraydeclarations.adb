with Ada.Text_IO; use Ada.Text_IO;

package body ArrayDeclarations is

    -------------Array Declaration Without Index and Values Types---------------
   procedure arrayDeclarationWithoutIndexAndValuesDeclaration is
     type Int_Array is array (5..9) of Integer;
      
     numberArray : Int_Array := (1024, -8944, 14755, -4, 9654744);
      
   begin
      for i in 5..9 loop
         Put_Line(Integer'Image(numberArray(i)));
      end loop;
      
   end arrayDeclarationWithoutIndexAndValuesDeclaration;
   
   
    -----------------------Array Declaration Without Index-----------------------
   procedure arrayDeclarationWithoutIndexDeclaration is
     type Array_Values is range 1..100;
     type Int_Array is array (1..5) of Array_Values;
      
     numberArray : Int_Array := (75, 41, 19, 82, 38);
      
   begin
      for i in 1..5 loop
         Put_Line(Array_Values'Image(numberArray(i)));
      end loop;
      
   end arrayDeclarationWithoutIndexDeclaration;
   
      
   -----------------Array Declaration With Index and Values---------------------
   procedure arrayIndexBoundsExample is
      type arrayValues is range 0..10000;
      type arrayIndexes is range 3..8;
      --                         ^ Low bound can be any value
      type myIntArray is array (arrayIndexes) of arrayValues;
      
      numbersArray : myIntArray := (1, 2, 3, 4, 5, 6);
      
   begin
      for i in arrayIndexes loop
         Put(arrayValues'Image(numbersArray(i)));
      end loop;
   end arrayIndexBoundsExample;
   
   
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
   
   
   -----------------------------Range Attribute---------------------------------
   procedure rangeAttributeExample is
      type Array_Values is range 1..1000;
      type Array_Index_Range is range 4..10;
      
      type Integer_Array is array (Array_Index_Range) of Array_Values;
      
      numberArray : Integer_Array := (758, 741, 879, 523, 411, 7, 245);
      
   begin
      Put_Line("Size of arr:" & Integer'Image(numberArray'Length));
      for i  in numberArray'First..numberArray'Last-1 loop --Also can be used numberArray'Range
         Put(Array_Values'Image(numberArray(i)));
      end loop;
      
   end rangeAttributeExample;
   
   
   -----------------------------Unconstrained arrays-----------------------------
   procedure unconstraintArrayExample is
      type Integer_Array is array (Integer range<>) of Integer;
      
      numberArray : Integer_Array(100..102) := (9, 8, 74);
      --                                    ^ Index range can be defined there
   begin
      numberArray(101):= 45;
      
      Put_Line("Size of arr:" & Integer'Image(numberArray'Length));
      Put_Line("First Index:" & Integer'Image(numberArray'First));
      Put_Line("Last Index:" & Integer'Image(numberArray'Last));
      
      for i  in numberArray'Range loop
         Put_Line("Index:" & Integer'Image(i) &
                    " Value:" & Integer'Image(numberArray(i)));
      end loop;
   end unconstraintArrayExample;
   
   
end ArrayDeclarations;
