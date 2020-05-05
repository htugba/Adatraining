with Ada.Text_IO; use Ada.Text_IO;

package body Vectors is

   procedure showVectorInstantiation is      
      use integerVectors;
      V : Vector := 20 & 10 & 0 & 13;
   begin
      Put_Line("Vector has " & Count_Type'Image(V.Length) & " elements.");
      New_Line;
   end showVectorInstantiation;
   
   procedure showVectorAppend is
      use integerVectors;
      
      V : Vector;
   begin
      Put_Line ("Appending some elements to the vector...");
      V.Append (20);
      V.Append (10);
      V.Append (0);
      V.Append (13);
      Put_Line ("Finished appending.");

      Put_Line ("Prepending some elements to the vector...");
      V.Prepend (30);
      V.Prepend (40);
      V.Prepend (100);
      Put_Line ("Finished prepending.");      
      --Puts elements in the following order : (100, 40, 30, 20, 10, 0, 13)

      Put_Line ("Vector has " & Count_Type'Image (V.Length) & " elements.");
      New_Line;
   end showVectorAppend;
   
   procedure accessFirstAndLastElement is
      use integerVectors;
      
      function img (I : Integer) return String renames Integer'Image;
      function img (I : Count_Type) return String renames Count_Type'Image;
      
      V : Vector := 20 & 10 & 0 & 13;
      
   begin
      Put_Line ("Vector has " & img(V.Length) & " elements.");

      Put_Line ("First element:" & img(V.First_Element));

      Put_Line ("Last element:" & img(V.Last_Element));
      
      New_Line;
   end accessFirstAndLastElement;
   
   procedure showAllElementsOfVector is
      use integerVectors;
      V : Vector := 20 & 10 & 0 & 13;
   begin
      -----1. Way
      for i  in V.First_Index..V.Last_Index loop
         Put(Integer'Image(V(i)) & " ");
      end loop;
      
      New_Line;
      -----2. Way
      for i  in V.Iterate loop
         Put(Integer'Image(V(i)) & " ");
      end loop;
      
      New_Line;
      
      -----3. Way
     declare
          i : Cursor := V.First;
      begin
         while i /= No_Element loop
            Put(Integer'Image(V(i)) & " ");
            i := Next(i);
         end loop;
     end;
   end showAllElementsOfVector;
   
   procedure findAndChangeElement is
      use integerVectors;
      V : Vector := 50 & 40 & 1 & 80;
      index : Extended_Index;
      C : Cursor;
   begin
      index := V.Find_Index(40); --index of element 40
      
      C := V.Find(80);
      index := To_Index(C);
      
      V.Replace_Element(C, 70); --it is equal to V(C) := 70;
      
      V.Insert(C, 9);
      
      V.Delete(C);
            
   end findAndChangeElement;
end Vectors;
