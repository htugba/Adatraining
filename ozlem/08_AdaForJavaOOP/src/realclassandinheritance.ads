package RealClassAndInheritance is

   type Animal is tagged private;
   
   procedure setValues(animalObj : in out Animal;
                       vegetarian : Boolean;
                       noOfLegs : Integer);
   
   procedure printAnimalInfo(animalObj : Animal);
   
   type Bird is new Animal with private;
   
   procedure setValues(birdObj : in out Bird;
                       vegetarian : Boolean;
                       noOfLegs : Integer;
                       wingSize : Float);
   
   procedure printBirdInfo(myBirdObj : Bird);
   
   type Cat is new Animal with private;
   
private 
   
   type Animal is tagged
      record
         vegetarian : Boolean;
         noOfLegs : Integer;
      end record;
   
   type Bird is new Animal with
      record
         wingSize : Float;
      end record;
   
   type Cat is new Animal with null record;

end RealClassAndInheritance;
