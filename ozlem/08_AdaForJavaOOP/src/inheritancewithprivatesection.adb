with Ada.Text_IO; use Ada.Text_IO;

package body InheritanceWithPrivateSection is
   
   procedure setValues(animalObj : in out Animal;
                       vegetarian : Boolean;
                       noOfLegs : Integer) is
   begin
      animalObj.vegetarian := vegetarian;
      animalObj.noOfLegs := noOfLegs;
   end setValues;
   
   function getVegetarian(animalObj : Animal) return Boolean is
   begin
      return animalObj.vegetarian;
   end getVegetarian;
   
   function getNumberOfLegs(animalObj : Animal) return Integer is
   begin
      return animalObj.noOfLegs;
   end getNumberOfLegs;
         
   procedure printAnimalInfo(animalObj : Animal) is
   begin
      Put_Line("Printing animal info:" & Boolean'Image(animalObj.vegetarian) & " " & Integer'Image(animalObj.noOfLegs));
   end printAnimalInfo;
   
   procedure setValues(catObj : in out Cat;
                       vegetarian : Boolean;
                       noOfLegs : Integer) is
   begin
      catObj.vegetarian := vegetarian;
      catObj.noOfLegs := noOfLegs;
   end setValues;
   
   function getVegetarian(catObj : Cat) return Boolean is
   begin
      return catObj.vegetarian;
   end getVegetarian;
   
   function getNumberOfLegs(catObj : Cat) return Integer is
   begin
      return catObj.noOfLegs;
   end getNumberOfLegs;
      
   
  procedure printCatInfo(catObj : Cat) is
  begin
      Put_Line("Printing cat info:" & Boolean'Image(catObj.vegetarian) & " " & Integer'Image(catObj.noOfLegs));
  end printCatInfo;
   
end InheritanceWithPrivateSection;
