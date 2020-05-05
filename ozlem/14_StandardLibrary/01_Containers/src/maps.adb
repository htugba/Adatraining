with Ada.Text_IO; use Ada.Text_IO;

package body Maps is

   procedure hashMapOperations is
      use integerHashMaps;
      M : Map;
   begin
      M.Include ("Alice", 24);
      M.Include ("John",  40);
      M.Include ("Bob",   28);

      if M.Contains ("Alice") then
         Put_Line ("Alice's age is: " & Integer'Image(M ("Alice")));
      end if;

      M ("Alice") := 25; --  Update Alice's age

      New_Line; 
      Put("Name( Age ): ");
      for C in M.Iterate loop
         Put(Key (C) & "(" & Integer'Image(M (C)) & " ) ");
      end loop;
      New_Line;New_Line;
   end hashMapOperations;
   
   procedure orderedMapOperations is
      use integerOrderedMaps;
      M : Map;
   begin
      M.Include ("Alice", 24);
      M.Include ("John",  40);
      M.Include ("Bob",   28);

      if M.Contains ("Alice") then
         Put_Line ("Alice's age is: " & Integer'Image(M ("Alice")));
      end if;

      M ("Alice") := 25; --  Update Alice's age

      New_Line; 
      Put("Name( Age ): ");
      for C in M.Iterate loop
         Put(Key (C) & "(" & Integer'Image(M (C)) & " ) ");
      end loop;
   end orderedMapOperations;
   
end Maps;
