with Ada.Text_IO; use Ada.Text_IO;
with Pkg;         use Pkg;

procedure Pkg_Example is
   S : String := Convert (123_145_299);
   --            ^ Valid, will choose the proper Convert
begin
   Put_Line (S);
end Pkg_Example