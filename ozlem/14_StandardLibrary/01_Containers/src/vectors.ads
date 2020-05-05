with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;

package Vectors is

   package integerVectors is new Ada.Containers.Vectors
        (Index_Type   => Natural, Element_Type => Integer); 
   -- You have to write exact parameter names Index_Type and Element_Type.
   
   procedure showVectorInstantiation;
   procedure showVectorAppend;
   procedure accessFirstAndLastElement;
   procedure showAllElementsOfVector;
   procedure findAndChangeElement;

end Vectors;
