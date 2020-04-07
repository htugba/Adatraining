with Ada.Text_IO; use Ada.Text_IO;
procedure DeclarationOfSubprograms is
   
   --a subprogram can be declared without being fully defined, 
   --This is possible in general, and can be useful if you need 
   --subprograms to be mutually recursive
   
   procedure Compute_A (V : Natural); --  Declaration of Compute_A
      
   procedure Compute_B (V : Natural) is 
   begin
      if V > 5 then
            Put_Line("Call Compute_A " & Integer'Image(V-1));
            Compute_A(V - 1); -- Call Compute_A
         end if;
   end Compute_B;
         
   procedure Compute_A (V : Natural) is 
   begin
      if V > 2 then
            Put_Line("Call Compute_B " & Integer'Image(V-1));
            Compute_B(V - 1); -- Call Compute_B
         end if;
   end Compute_A;
     
begin
   Compute_A(15);
end DeclarationOfSubprograms;
