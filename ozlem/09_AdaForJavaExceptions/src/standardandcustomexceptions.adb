with Ada.Text_IO; use Ada.Text_IO;

package body StandardAndCustomExceptions is

   procedure divideByZeroException is
      result : Integer;
   begin
      for number in reverse 0..4 loop
         result := 4 / number; 
         --            ^ number == 0 raised CONSTRAINT_ERROR : standardexceptions.adb:7 divide by zero
      end loop;            
   end divideByZeroException;
   
   procedure divideByZeroExceptionHandling is
      result : Integer;
   begin
      for number in reverse 0..4 loop
         result := 4 / number; 
         --            ^ number == 0 raised CONSTRAINT_ERROR : standardexceptions.adb:7 divide by zero
      end loop;
   exception
      when Constraint_Error => Put_Line("Exception: Divide by zero.");
      
      Put_Line("End of program.");
         
   end divideByZeroExceptionHandling;
   
   procedure divideWithCustomException(number : Integer; divideBy : Integer) is
      myCustomException : exception;
   begin
      if divideBy=0 then
         raise myCustomException;
      end if;
      
      Put_Line(Integer'Image(number) & " is divided by " & Integer'Image(divideBy) & ". Result " & Integer'Image(number/divideBy));
      
   exception
      when myCustomException => Put_Line("My Custom Exception");
      when Constraint_Error => Put_Line("Constraint Error");
      when others => Put_Line("Other Exception");
         
   end divideWithCustomException;
   
   
end StandardAndCustomExceptions;
