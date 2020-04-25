with Ada.Text_IO; use Ada.Text_IO;

procedure Hanoi(N : in Natural; From, To, Spare : in Character) is
begin
   if N > 0 then
      Hanoi(N - 1, From, Spare, To);
      Put_Line(From & " to " & To);
      Hanoi(N - 1, Spare, To, From);
   end if;
end Hanoi;
