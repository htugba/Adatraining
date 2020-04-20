package Inheritance is

   type Animal is 
      record
         vegetarian : Boolean;
         noOfLegs : Integer;
      end record;
   
   procedure setValues(animalObj : in out Animal;
                       vegetarian : Boolean;
                       noOfLegs : Integer);
   function getVegetarian(animalObj : Animal) return Boolean;
   function getNumberOfLegs(animalObj : Animal) return Integer;
   procedure printAnimalInfo(animalObj : Animal);
   
   type Cat is new Animal; -- This Cat type extends the functionality of the Animal type.

   procedure printCatInfo(catObj : Cat);

end Inheritance;
