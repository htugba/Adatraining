package Int_Types is

    type I_100 is new Integer range 0 .. 100;
    type U_100 is mod 101;   -- (0,100) modular type
  

   function To_I_100 (V : U_100) return I_100;

   function To_U_100 (V : I_100) return U_100;


   type D_50 is new I_100 range 10 .. 50;
   subtype S_50 is I_100 range 10 .. 50;

   function To_D_50 (V : I_100) return D_50;

   function To_S_50 (V : I_100) return S_50;

   function To_I_100 (V : D_50) return I_100;

end Int_Types;