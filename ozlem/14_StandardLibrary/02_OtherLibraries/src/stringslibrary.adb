with Ada.Strings;       
with Ada.Strings.Fixed; 
with Ada.Strings.Maps; 
with Ada.Strings.Bounded;
with Ada.Strings.Unbounded;

with Ada.Text_IO;       
use Ada.Text_IO;

package body StringsLibrary is

   procedure findSubstring is
      use Ada.Strings.Fixed;
      sentence : String := "Hello" & 3 * " World"; --created: Hello World World World
      word : constant String := "World";
      idx : Natural;
      count : Natural;
   begin
      count := Ada.Strings.Fixed.Count(Source => sentence, Pattern => word);
      
      idx := 0;
      for i  in 1..count  loop
         idx := Index(Source  => sentence,
                      Pattern => word,
                      From    => idx + 1);
         Put_Line ("Found instance of '" & word & "' at position: "
                & Natural'Image (idx));
      end loop;
   end findSubstring;
   
   procedure findEachWords is
      use Ada.Strings;
      use Ada.Strings.Maps;
      use Ada.Strings.Fixed;
      S   : String := "Hello" & 3 * " World" & " String Types Example";
      F   : Positive;
      L   : Natural;
      I   : Natural := 1;

      Whitespace : constant Character_Set := To_Set (' ');
   begin
      while i in S'Range loop
         Find_Token(Source  => S,
                    Set     => Whitespace,
                    From    => I,
                    Test    => Outside,
                    First   => F,
                    Last    => L);
         
         exit when L = 0;
         
         Put_Line ("Word at position" & Natural'Image(F) & ": " & S(F .. L));
       
         I := L + 1;

      end loop;
   end findEachWords;
   
   procedure useStringOperations is
      use Ada.Strings.Fixed;
      use Ada.Strings;
      sentence   : String := "Hello World";
      word1   : constant String := "World";
      word2   : constant String := "Beautiful";

      procedure displayOperatedString(source:String; 
                                      before   : Positive;
                                      newItem : String;
                                      pattern  : String) is
         
         stringInsertedInPlace : String := source;
         stringOverritedInPlace : String := source;
         stringDeletedInPlace : String := source;

         stringInserted : String := Insert (source, before, newItem & " ");
         
         stringOverwrited : String := Overwrite (source, before, newItem);
         
         stringDeleted : String := Trim(Delete(source, before,
                                                   before + pattern'Length - 1),
                                                   Ada.Strings.Right);
      begin
         Put_Line ("Original:  '" & source & "'");

         Put_Line ("Insert:    '" & stringInserted  & "'");
         Put_Line ("Overwrite: '" & stringOverwrited  & "'");
         Put_Line ("Delete:    '" & stringDeleted  & "'");
         
         Insert(stringInsertedInPlace, before, newItem, Right);
         Overwrite(stringOverritedInPlace, before, newItem, Right);
         Delete(stringDeletedInPlace, before, before + pattern'Length - 1);
         
         Put_Line ("Insert    (in-place): '" & stringInsertedInPlace & "'");
         Put_Line ("Overwrite (in-place): '" & stringOverritedInPlace & "'");
         Put_Line ("Delete    (in-place): '" & stringDeletedInPlace & "'");
      end displayOperatedString;

   i : Natural;
   begin
      i := Index(source  => sentence, pattern => word1);

      if i > 0 then
         displayOperatedString (sentence, i, word2, word1);
      end if;
      
   end useStringOperations;
   
   procedure useBoundedStrings is
      use Ada.Strings.Bounded;
      use Ada.Strings;
      package pckgBoundedString is new Ada.Strings.Bounded.Generic_Bounded_Length(Max => 15);
      
      use pckgBoundedString;

      S1, S2 : Bounded_String;

      procedure displayStringInfo(S : Bounded_String) is
      begin
         Put_Line ("String: " & To_String(S));
         Put_Line ("String Length: " & Integer'Image(Length(S)));
         --  String:         S'Length => ok
         --  Bounded_String: S'Length => compilation error
         --                              bounded strings are not arrays!

         Put_Line ("Max.   Length: " & Integer'Image(Max_Length));
      end displayStringInfo;
   begin
      S1 := To_Bounded_String ("Hello");
      displayStringInfo (S1);
      New_Line;
      
      S2 := To_Bounded_String ("Hello World");
      displayStringInfo (S2);
      New_Line;

      S1 := To_Bounded_String ("Something longer to say here...", Right);
      displayStringInfo (S1);
      New_Line;
      
      S2 := To_Bounded_String("String");
      Append (S2, " appended");
      displayStringInfo(S2);
      New_Line;
            
   end useBoundedStrings;
   
   procedure useUnboundedStrings is
      use Ada.Strings.Unbounded;
      use Ada.Strings;
      S1, S2 : Unbounded_String;

      procedure displayStringInfo(S : Unbounded_String) is
      begin
         Put_Line ("String: " & To_String (S));
         Put_Line ("String Length: " & Integer'Image (Length (S)));
      end displayStringInfo;
   begin
      S1 := To_Unbounded_String("Hello");
      --  Alternatively: A := Null_Unbounded_String & "Hello";
      displayStringInfo(S1);
      New_Line;

      S2 := To_Unbounded_String("Hello World");
      displayStringInfo(S2);
      New_Line;

      S1 := To_Unbounded_String("Something longer to say here...");
      displayStringInfo(S1);
      New_Line;
      
      S2 := To_Unbounded_String("Word longer longeeeeeeeeeeeeeeeeeeeeeeeer");
      Append(S2, " appended");
      displayStringInfo(S2);
      New_Line;
      
   end useUnboundedStrings;
   
end StringsLibrary;
