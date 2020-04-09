with CharStack; use CharStack;
procedure Main is

   procedure useCharacterStack is
   begin
      clearStack;
      push('S');
      push('T');
      push('A');
      push('C');
      push('K');
      push('X');
      push('Y');
      pop;
      pop;
      push('D');
      push('E');
      push('F');
      printCharStackValues;

   end useCharacterStack ;

   procedure fillTheStack is
      testString : String := "Test Message.";
   begin
      clearStack;
      for i in testString'Range loop
         push(testString(i));
      end loop;
   end fillTheStack;

begin
  fillTheStack;
  useCharacterStack;
end Main;
