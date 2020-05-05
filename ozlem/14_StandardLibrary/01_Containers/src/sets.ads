with Ada.Containers; use Ada.Containers;
with Ada.Containers.Ordered_Sets;

package Sets is

   package integerSets is new Ada.Containers.Ordered_Sets
        (Element_Type => Integer); 
   -- You have to write exact parameter name as Element_Type.
   
   procedure setOperations;
   
end Sets;
