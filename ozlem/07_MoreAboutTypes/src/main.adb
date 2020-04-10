with Ada.Text_IO; use Ada.Text_IO;
with ConvenientShortcuts;
with Overloading;
with AccessTypesPointers;

procedure Main is

   procedure useOverLoadingExample is
      use Overloading;
   begin
      calculateSum(2, 3);
      calculateSum(4.6, 8.2);

      declare
         stringResult : String := doSomethingWithInteger(4);
         integerResult :Integer := doSomethingWithInteger(4);
      begin
         Put_Line("String result:" & stringResult
                  & " Integer result:" & Integer'Image(integerResult));
      end;

   end useOverLoadingExample ;

   procedure useAccessTypesPointers is
      use AccessTypesPointers;
   begin
      access1;
   end useAccessTypesPointers ;

begin
   --ConvenientShortcuts.shortcutsForConvenience;
   --useOverLoadingExample;
   useAccessTypesPointers;
end Main;
