with Ada.Text_IO; use Ada.Text_IO;

package body RealClassAndInheritance is

   procedure setValues(animalObj : in out Animal;
                       vegetarian : Boolean;
                       noOfLegs : Integer) is
   begin
      animalObj.vegetarian := vegetarian;
      animalObj.noOfLegs := noOfLegs;
   end setValues;
   
   procedure setValues(birdObj : in out Bird;
                       vegetarian : Boolean;
                       noOfLegs : Integer;
                       wingSize : Float) is
   begin
      birdObj.vegetarian := vegetarian;
      birdObj.noOfLegs := noOfLegs;
      birdObj.wingSize := wingSize;
   end setValues;
   
   procedure printAnimalInfo(animalObj : Animal) is
   begin
      Put_Line("Printing animal info:" & Boolean'Image(animalObj.vegetarian) & " " & Integer'Image(animalObj.noOfLegs));
   end printAnimalInfo;
   
   procedure printBirdInfo(myBirdObj : Bird) is
   begin
      printAnimalInfo(myBirdObj);
      Put("Wing size:" & Float'Image(myBirdObj.wingSize) & " ");
   end printBirdInfo;
   
end RealClassAndInheritance;
