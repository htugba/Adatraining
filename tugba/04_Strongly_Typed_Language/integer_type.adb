with Ada.Text_IO;use Ada.Text_IO;

procedure integer_type is
type My_Int is range 1 .. 20;
   --                         ^ High bound
   --                   ^ Low bound
 
   -- # Unsigned types --
 type Mod_Int is mod 2 ** 5;
   --              ^ Range is 0 .. 31
   
   -- # An enumeration type --
 type Days is (Monday, Tuesday, Wednesday,
               Thursday, Friday, Saturday, Sunday);
   
   -- # Range of floating-point types --
 type T_Norm  is new Float range -1.0 .. 1.0;
   A_TNorm  : T_Norm;
   
    -- Strong typing --
  type Meters is new Float;
  type Miles is new Float;
  Dist_Imperial : Miles;
  Dist_Metric : constant Meters := 100.0;
  
  function To_Miles (M : Meters) return Miles is
   --                             ^ Return type
  begin
     return (Miles (M) * 1609.0) / 1000.0;
  end To_Miles;
 
   A : My_Int := 12;
   B : My_Int := 15;
   M : My_Int := (A + B) / 2;
   
   A_mod : Mod_Int := 20;
   B_mod: Mod_Int := 15;
   M_mod : Mod_Int := A_mod + B_mod;
begin
   -- Integers --
   for I in My_Int loop
      Put (My_Int'Image (I));
   end loop;
   
   --  Mainly for efficiency reasons, while machine level overflow always results in an exception,
   -- type level overflows will only be checked at specific boundaries, like assignment;
   Put_Line("");
   Put_Line("2. example");
   for I in 1 .. M loop
      Put (My_Int'Image (I));
   end loop;
   
   -- Unsigned types --
   
   Put_Line("");
   Put_Line("3. example");
   for I in 1 .. M_mod loop
      Put (Mod_Int'Image (I));
   end loop;
   
   
   -- Enumerations --
   Put_Line("");
   Put_Line("4. example");
      for I in Days loop
      case I is
         when Saturday .. Sunday =>
            Put_Line ("Week end!");

         when Monday .. Friday =>
            Put_Line ("Hello on " & Days'Image (I));
            --  'Image attribute, works on enums too
      end case;
   end loop;
   
   -- Range of floating-point types --
   Put_Line("");
   Put_Line("5. example");
   A_TNorm := 1.0;
   Put_Line ("The value of A is " & T_Norm'Image (A_TNorm));
   
   -- Strong typing --
   
   Put_Line("");
   Put_Line("6. example");
   Dist_Imperial := (Miles (Dist_Metric) * 1609.0) / 1000.0;
   --                ^ Type conversion, from Meters to Miles

   Put_Line (Miles'Image (Dist_Imperial));
   
   -- Of course, we probably do not want to write the conversion code every time we convert
   -- from meters to miles. The idiomatic Ada way in that case would be to introduce conversion functions along with the types.
   Put_Line("with function");
   Dist_Imperial := To_Miles (Dist_Metric);
   Put_Line (Miles'Image (Dist_Imperial));

   
   
   
   
end integer_type;
