with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   -------------------If/Then/Else-------------------
   procedure checkNumberSign is
      number : Integer;
   begin
      Put("Enter Number: ");
      Get(number);

      if number > 0 then
         Put_Line(Integer'Image(number) & " is Positive");
      elsif number < 0 then
         Put_Line(Integer'Image(number) & " is Negative");
      else
         Put_Line("Number is zero");
      end if;

   end checkNumberSign;


   -------------------If/Then/Else Declare-------------------
   procedure checkNumberSignDeclare is
      number : Integer;
   begin
      Put("Enter Number: ");
      Get(number);
      Put(number);
      declare
         log : String := (if number > 0 then " is positive" else " is negative");
      begin
         Put(log);
      end;

   end checkNumberSignDeclare;


  -------------------If Expression-------------------
   procedure isEvenOrOdd is
      number : Integer := 20;
   begin
      Put_Line(if number mod 2 = 0 then "Even" else "Odd");
   end isEvenOrOdd;


   -------------------Case Expression-------------------
   procedure isEvenOrOddCaseExpression is
   begin
      for number in 1..10 loop
         Put_Line(case number is
                     when 1|3|5|7|9 => "Odd",
                     when 2|4|6|8|10 => "Even");
      end loop;
   end isEvenOrOddCaseExpression;


   -------------------For Loop-------------------
   procedure writeGivenNumbers is
   begin
      Put("Given numbers are: ");
      for number in 2..8 loop
         Put(Integer'Image(number) & " ");
      end loop;
   end writeGivenNumbers;


   -------------------Bare Loop-------------------
   procedure multiplyAndWrite is
      number : Integer :=1;
   begin
      loop
         number := number * 2;
         Put(Integer'Image(number) & " ");
         exit when number < 50;
      end loop;
   end multiplyAndWrite;


   -------------------While Loop-------------------
   procedure decrementAndWrite is
      number : Integer := 30;
   begin
      while number > 10  loop
         Put(Integer'Image(number) & " ");
         number := number - 1;
      end loop;
   end decrementAndWrite;
   

   -------------------Read String Line-------------------
   procedure readStringLine is
   begin
      Put_Line("Enter name: ");

      declare
         name : String := Get_Line;
      begin
         Put_Line("Hello " & name);
      end;

   end readStringLine;
   
   
    -------------------Case Statement-------------------
   procedure checkNumberRange is
     number: Integer;

   begin
      Put("Enter Number: ");
      Get(number);
      case number is
         when 0 | 360 =>
           Put_Line("Number is 0|360");
         when 1..180 =>
           Put_Line("Number between 0 - 180");
         when 181..359 =>
           Put_Line("Number between 181 - 360");
         when others =>
           Put_Line("Exceptional case");
      end case;
   end checkNumberRange;

begin isEvenOrOddCaseExpression; --procedure call

end Main;