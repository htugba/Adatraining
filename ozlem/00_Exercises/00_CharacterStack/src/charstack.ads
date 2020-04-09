package CharStack is

   procedure push (inChar : Character);
   procedure pop;
   function isEmpty return Boolean;
   function isFull return Boolean;
   function getCurrentSize return Integer;
   procedure clearStack;
   procedure printCharStackValues;

end CharStack;
