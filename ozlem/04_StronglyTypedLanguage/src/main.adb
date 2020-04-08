with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics;

--gprbuild -d -PE:\ProgrammingWorkspace\Adatraining\ozlem\04_StronglyTypedLanguage\stronglytypedlanguage.gpr E:\ProgrammingWorkspace\Adatraining\ozlem\04_StronglyTypedLanguage\src\main.adb
--E:\ProgrammingWorkspace\Adatraining\ozlem\04_StronglyTypedLanguage\obj\main.exe

procedure Main is

   --------------------------Custom Integer Type Example------------------------
   procedure CustomIntegerType is
      type MySignedIntegerType is range -10..10;
      type MyModeIntegerType is mod 3 ** 2;
      --A : MySignedIntegerType;
   begin
      for i in MySignedIntegerType loop
         Put(MySignedIntegerType'Image(i) & " ");
      end loop;

      Put_Line("");

      for i in MyModeIntegerType loop
         Put(MyModeIntegerType'Image(i) & " ");
      end loop;

      --Overflow
      --A := 34; --raised CONSTRAINT_ERROR : main.adb:14 range check failed.
      --Put_Line(MySignedIntegerType'Image(A) & " ");
   end CustomIntegerType;

   --------------------------Custom Floating Point Type Example-----------------
   procedure CustomFloatType is
      use Ada.Numerics;
      type MyFloatingPointNumber is new Float range -1.0 .. 1.0;

      type MyFloatingPointNumber2  is digits 6 range -Pi / 2.0 .. Pi / 2.0;
      type T3 is digits 5;   --the compiler allocates 32 bits for T3
      type T10 is digits 10; --the compiler allocates 64 bits for T10

      D : MyFloatingPointNumber;
      C : constant := 2.0;
      A : T3 := C;
      B : T10 := C;
   begin
      D := 1.0;
      Put_Line ("D " & MyFloatingPointNumber'Image(D));

      Put_Line ("T3  requires" & Integer'Image (T3'Size) & " bits. "
                & "A=" & T3'Image(A));
      Put_Line ("T10 requires" & Integer'Image (T10'Size) & " bits. "
                & "B=" & T10'Image(B));


   end CustomFloatType;

   --------------------------Integer,Float Example------------------------------
   procedure DrawLastAndFirstItemsOfTypes is
      A_I : Integer := Integer'First;
      B_I : Integer := Integer'Last;
      A_F : Float := Float'First;
      B_F : Float := Float'Last;
   begin
      Put_Line("Integer first: " & Integer'Image(A_I));
      Put_Line("Integer last: " & Integer'Image(B_I));
      Put_Line("Float first: " & Float'Image(A_F));
      Put_Line("Float last: " & Float'Image(B_F));
   end DrawLastAndFirstItemsOfTypes;


   --------------------------Enumaration Example--------------------------------
   procedure EnumarationExample is
   --  An enumeration type
   type Days is (Monday, Tuesday, Wednesday,
                 Thursday, Friday, Saturday, Sunday);

   type Weekend_Days is new Days range Saturday .. Sunday;
   begin
      for day in Days loop
         case day is
           when Monday .. Friday => Put_Line(Days'Image(day) & " is Weekday");
           when Saturday .. Sunday => Put_Line(Days'Image(day) & " is Weekend");
         end case;
      end loop;

      for weekendDay in Weekend_Days loop
         Put_Line(Weekend_Days'Image(weekendDay));
      end loop;
   end EnumarationExample;

   -----------------------------------------------------------------------------

begin
   --CustomIntegerType;
   --DrawLastAndFirstItemsOfTypes;
   EnumarationExample;
   --CustomFloatType;

end Main;






