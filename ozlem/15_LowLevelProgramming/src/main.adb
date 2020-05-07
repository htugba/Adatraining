with Ada.Text_IO; use Ada.Text_IO;
with Interfaces;  use Interfaces;
with System.Machine_Code; use System.Machine_Code;
--          ^ Provides the (overloaded) Asm function


procedure Main is

   function Get_Processor_Cycles return Unsigned_64 is
      Low, High : Unsigned_32;
      Counter   : Unsigned_64;
   begin
      Asm ("rdtsc", --refer the number of cycles since the last processor reset
           Outputs =>
             (Unsigned_32'Asm_Output ("=a", High), --refer to eax
              Unsigned_32'Asm_Output ("=d", Low)), --refer to edx
           Volatile => True);

      Counter := Unsigned_64 (High) * 2 ** 32 + Unsigned_64 (Low);

      return Counter;
   end Get_Processor_Cycles;

   cycles : Unsigned_64;
begin
   cycles := Get_Processor_Cycles;

   Put(Unsigned_64'Image(cycles));
end Main;
