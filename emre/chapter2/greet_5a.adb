with Ada.Text_IO; use Ada.Text_IO;
procedure Greet_5a is
begin
   for I in 1 .. 5 loop
      Put_Line ("Hello, World!" & Integer'Image (I)); -- Procedure call
                                                      -- ^ Procedure parameter
   end loop;
end Greet_5a;
