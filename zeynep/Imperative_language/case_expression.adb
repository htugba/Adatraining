with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Case_expression is
   begin
      for I in 1 .. 6 loop
         Put_Line(case I is
                     when 1 | 3 | 5 => "Odd",
                     when 2 | 4 | 6 => "Even");
      end loop;
   end Case_expression;