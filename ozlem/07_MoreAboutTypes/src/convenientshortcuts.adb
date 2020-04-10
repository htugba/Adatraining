with Ada.Text_IO; use Ada.Text_IO;

package body ConvenientShortcuts is
  
 --------------Shortcuts to make the notation more convenient-----------------
   procedure shortcutsForConvenience is
      type Point is
         record
            X, Y : Integer := 5;
         end record;
      
      type PointArray is array (Positive range<>) of Point;
      
      origin1 : Point := (X | Y => <>);
      origin2 : Point := (others => <>);
      
      points1 : PointArray := ((1, 2), (3, 4));
      points2 : PointArray := (1=>(9, 10), 2=>(11, 12), 3..20=><>);
   begin
   
      Put_Line("Origin1:" & Integer'Image(origin1.X) & " " & Integer'Image(origin1.Y));
      Put_Line("Origin2:" & Integer'Image(origin2.X) & " " & Integer'Image(origin2.Y));
      
      Put_Line("**************Point1 Array**************");
      for i  in points1'Range loop
         Put_Line("Point1" & Integer'Image(i)  & ".element: "& Integer'Image(points1(i).X) & " " & Integer'Image(points1(i).Y));
      end loop;
      
      Put_Line("**************Point2 Array**************");
      for i  in points2'Range loop
         Put_Line("Point2" & Integer'Image(i)  & ".element: "& Integer'Image(points2(i).X) & " " & Integer'Image(points2(i).Y));
      end loop;
      
   end shortcutsForConvenience;
end ConvenientShortcuts;
