package body Int_Types is

   function To_I_100 (V : U_100) return I_100 is
   begin
     return I_100(V);
   end To_I_100;

   function To_U_100 (V : I_100) return U_100 is
   begin
      return U_100(V);
   end To_U_100;

   function To_D_50 (V : I_100) return D_50 is
      Min : constant I_100 := I_100 (D_50'First);
      Max : constant I_100 := I_100 (D_50'Last);
   begin
        
      if V > Max then
         return D_50(50);
      elsif V < Min then
         return D_50'First; 
      else  return D_50(V);
      end if;
      
   end To_D_50;

   function To_S_50 (V : I_100) return S_50 is
   begin
      
      if V > S_50'Last then
         return S_50'Last;
      elsif V < S_50'First then
         return S_50'First;
      else 
         return V;
      end if;
      
   end To_S_50;

   function To_I_100 (V : D_50) return I_100 is
   begin
      return I_100(V);
   end To_I_100;

end Int_Types;