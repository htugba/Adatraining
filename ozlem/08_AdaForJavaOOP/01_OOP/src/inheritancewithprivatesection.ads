package InheritanceWithPrivateSection is

   type Animal is private;
   
   type Cat is private;
   
   procedure setValues(animalObj : in out Animal;
                       vegetarian : Boolean;
                       noOfLegs : Integer);
   
   function getVegetarian(animalObj : Animal) return Boolean;
   
   function getNumberOfLegs(animalObj : Animal) return Integer;
   
   procedure printAnimalInfo(animalObj : Animal);
   
   procedure setValues(catObj : in out Cat;
                       vegetarian : Boolean;
                       noOfLegs : Integer);
   
   function getVegetarian(catObj : Cat) return Boolean;
   
   function getNumberOfLegs(catObj : Cat) return Integer;
   
   procedure printCatInfo(catObj : Cat);
   
private
   
    type Animal is 
     record
         vegetarian : Boolean;
         noOfLegs : Integer;
      end record;
   
   type Cat is new Animal;

end InheritanceWithPrivateSection;
