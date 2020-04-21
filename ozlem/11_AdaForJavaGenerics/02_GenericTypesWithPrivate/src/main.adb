with GenericTypesWithPrivate, Ada.Text_IO;
use GenericTypesWithPrivate;

procedure Main is

   procedure useGenericTypesWithPrivate is
      type MyCustomInt is new Integer range 1..100;

      type MyRecord is
         record
            grade : Integer range 1..5;
            class : Character;
         end record;

      procedure swap is new exchangeData(MyRecord);
      procedure swap is new exchangeData(MyCustomInt);
      procedure swap is new exchangeData(Float);
      procedure swap is new exchangeData(Character);
      procedure exhangeInt is new exchangeData(Integer);

      function average is new findAverage(MyCustomInt);
      function average is new findAverage(Integer);
      function getAverage is new findAverage(MyCustomInt);

      customInt1 : MyCustomInt := 25;
      customInt2 : MyCustomInt := 78;
      int1 : Integer := -38;
      int2 : Integer := -11;
      float1 : Float := 8.745;
      float2 : Float := 1.45;
      recordData1 : MyRecord := (3, 'A');
      recordData2 : MyRecord := (5, 'B');

   begin
      print("Before", Integer'Image(recordData1.grade), Integer'Image(recordData2.grade));
      swap(recordData1, recordData2);
      print("After", Integer'Image(recordData1.grade), Integer'Image(recordData2.grade));

      Ada.Text_IO.New_Line;

      print("Before", Float'Image(float1), Float'Image(float2));
      swap(float1, float2);
      print("After", Float'Image(float1), Float'Image(float2));

      Ada.Text_IO.New_Line;

      Ada.Text_IO.Put_Line("Average:" & MyCustomInt'Image(average(customInt1, customInt2)));

      Ada.Text_IO.Put_Line("Average:" & MyCustomInt'Image(getAverage(customInt1, customInt2)));

   end useGenericTypesWithPrivate;



begin
   useGenericTypesWithPrivate;
end Main;














