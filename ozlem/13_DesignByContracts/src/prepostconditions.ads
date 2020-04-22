package PrePostConditions is

   pragma Assertion_Policy (Pre => Check);
   procedure addToDB(name : String; age : Natural) 
     with Pre => name'Length > 0;
   
   pragma Assertion_Policy (Post => Check);
   function square(number : Integer) return Integer 
     with Post => square'Result > number;
   
   pragma Assertion_Policy (Pre => Check, Post => Check);
   function calculate(number : Integer) return Integer 
     with Pre => number > 5, Post => calculate'Result > 20;
   
end PrePostConditions;
