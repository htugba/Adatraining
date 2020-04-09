with Ada.Text_IO; use Ada.Text_IO;

package body CharStack is
   
   maxSize : constant Integer := 5;
   charList : String(1..maxSize);
   topOfStack : Integer := 0;
   
   procedure push (inChar : Character) is
   begin
      if not isFull then
         topOfStack := topOfStack + 1;
         charList(topOfStack) := inChar;
         Put_Line(Character'Image(inChar) & " is added to stack.");
      else 
         Put_Line(Character'Image(inChar) & " can not added. Stack is full.");
      end if;   
   end push ;
   
   procedure pop is
   begin
      if not isEmpty then
         Put_Line(Character'Image(charList(topOfStack)) & " is removed from stack.");
         topOfStack := topOfStack -1;
      else 
         Put_Line("Stack is empty.");
      end if;
   end pop;
   
   function isEmpty return Boolean is
   begin
      return topOfStack = 0;
   end isEmpty;
   
   function isFull return Boolean is 
   begin
      return topOfStack = maxSize;
   end isFull;
   
   function getCurrentSize return Integer is
   begin
      return topOfStack;
   end getCurrentSize;
   
   procedure clearStack is
   begin
      topOfStack := 0;
   end clearStack;
   
   procedure printCharStackValues is
   begin
      Put_Line(charList);
   end printCharStackValues;
   
end CharStack;
