with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Strings.Hash;
with Ada.Containers.Indefinite_Ordered_Maps;

package Maps is
   
   package integerHashMaps is new Ada.Containers.Indefinite_Hashed_Maps
       (Key_Type        => String,
        Element_Type    => Integer,
        Hash            => Ada.Strings.Hash,
        Equivalent_Keys => "=");
   
   package integerOrderedMaps is new Ada.Containers.Indefinite_Ordered_Maps
       (Key_Type        => String,
        Element_Type    => Integer);

   procedure hashMapOperations;
   
   procedure orderedMapOperations;

end Maps;
