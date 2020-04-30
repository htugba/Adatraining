with Ada.Text_IO; use Ada.Text_IO;

procedure Character_Example is
   type My_Char is ('a', 'b', 'c');

   C : Character;

   M : My_Char;
begin
   C := '?';

   M := 'a';

   C := 65;

   C := Character'Val (65);
   --  Assign the character at position 65 in the enumeration (which is 'A')

   M := C;
   --   ^ Invalid: C is of type Character, and M is a My_Char

   M := 'd';
   --   ^ Invalid: 'd' is not a valid literal for type My_Char
end Character_Example;