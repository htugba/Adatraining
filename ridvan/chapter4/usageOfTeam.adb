with Ada.Text_IO; use Ada.Text_IO;
with Team;
--  References the Team package, and adds a dependency from Main
--  to Team

procedure UsageOfTeam is
begin
   Put_Line ("Biggest team of Turkey is " & Team.Gs);
end UsageOfTeam;