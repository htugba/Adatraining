with StandardAndCustomExceptions;
use StandardAndCustomExceptions;

procedure Main is

begin
   --divideByZeroException;
   --divideByZeroExceptionHandling;

   for i in -2..4 loop
      divideWithCustomException(40, i);
   end loop;
end Main;
