with Inheritance, InheritanceWithPrivateSection, RealClassAndInheritance, InitializersFinalizersControlled, Abstraction;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   procedure useInheritance is
      use Inheritance;
      myAnimalObj : Animal;
      myCatObj : Cat;
   begin
      setValues(myAnimalObj, true, 40);
      printAnimalInfo(myAnimalObj);

      setValues(myCatObj, false, 4);
      printAnimalInfo(myCatObj);
      printCatInfo(myCatObj);
   end useInheritance;

   procedure useInheritanceWithPrivateSection is
      use InheritanceWithPrivateSection;
      myAnimalObj : Animal;
      myCatObj : Cat;
   begin
      setValues(myAnimalObj, true, 40);
      printAnimalInfo(myAnimalObj);

      setValues(myCatObj, false, 4);
      --printAnimalInfo(myCatObj); --Can not used bacause Animal is priva
      printCatInfo(myCatObj);
   end useInheritanceWithPrivateSection;

   procedure useRealClassAndInheritance is
      use RealClassAndInheritance;
      myAnimalObj : Animal;
      myBirdObj : Bird;
      myCatObj : Cat;
   begin
      setValues(myAnimalObj, true, 40);
      setValues(myBirdObj, false, 2, 10.4);
      setValues(myCatObj, false, 4);

      printAnimalInfo(myAnimalObj);
      printBirdInfo(myBirdObj);
      printAnimalInfo(myCatObj);

   end useRealClassAndInheritance;

   procedure useInitializersFinalizersControlled is
      use InitializersFinalizersControlled;
      paper : Widget;
      pencil : Widget;
   begin
      Put_Line("Beginning this simple program");
      paper.size := 11;
      paper.number := 25;
      Put_Line("Paper record filled with data");
      pencil := Paper;
      Put_Line("Paper copied to Pencil");
      paper := pencil;
      Put_Line("Pencil copied to Paper");
   end useInitializersFinalizersControlled;

begin
   --useInheritance;
   --useInheritanceWithPrivateSection;
   useRealClassAndInheritance;
   --useInitializersFinalizersControlled;
end Main;
