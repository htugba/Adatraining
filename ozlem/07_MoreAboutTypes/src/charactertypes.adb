with Ada.Text_IO; use Ada.Text_IO;

package body CharacterTypes is

   procedure charExample is
      char1 : Character;
      char2 : Character := 'D';
      char3 : Character;
   begin
      char1 := 'A';
      
      if char1<char2 then 
         Put_Line(char2 & " is bigger than " & char1);
      end if;
      
      char3 := Character'Succ(char1);
      Put_Line(Character'Image(char3));
      char3 := Character'First;
      Put_Line(Character'Image(char3));
      char3 := Character'Last;
      Put_Line(Character'Image(char3));
      
   end charExample;
   
end CharacterTypes;
