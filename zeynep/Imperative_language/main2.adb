with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main2 is
procedure Is_Double_Greater (A : Integer; B :in out Integer; C : out Boolean) is
   begin
      B := 2 * B;
      if B > A then
         C := True;
      else
         C := False;
       end if;  
   end Is_Double_Greater;
   
      procedure Print_Vars (A : Integer :=0 ; B : Integer :=0; C:Integer :=0) is
      begin

         declare
            S  : String := (if A /=0 then " A = " & Integer'image(A) else "");
            S2 : String := (if B /=0 then " B = " & Integer'image(B) else "");
            S3 : String := (if C /=0 then " C = " & Integer'image(C) else "");
         begin
            Put_Line(S & S2 & S3);
         end;
      end Print_Vars;

      A : Integer := 2;
      B : Integer := 1;
      C : Boolean; 
begin
      Print_Vars(A => A, B=> B);
      Is_Double_Greater(A,B,C);
      Print_Vars(A => A, B=> B);
      Put_Line("B Is greater ? " & Boolean'image(C));
end Main2;