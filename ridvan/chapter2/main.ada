with Ada.Text_IO;
use  Ada.Text_IO;
with Ada.Integer_Text_IO;
use  Ada.Integer_Text_IO;

procedure Main is

   --Tek-Cift kontrolu dongu ile
   procedure printOddAndEvenNumbers is
   begin
      for I in 0 .. 9 loop
         Put_Line(if I mod 2 = 0 then "Even" else "Odd");           
         end loop;
   end printOddAndEvenNumbers;
   
   
   --Yon Kontrolu (lear.adacore)
   
   procedure Check_Direction is
      N : Integer;
   begin
      Put ("Enter an integer value: ");
      Get(N);
      Put(N);
      if N = 0 or N = 360 then
         Put_Line(" is due to East");
      elsif N = 90 then
         Put_Line(" is due to North");
      elsif N = 180 then
         Put_Line(" is due to West");
      elsif N = 270 then
         Put_Line(" is due to South");
      else
         Put_Line(" is not in certain range");
      end if;
   end Check_Direction;
   
   --Yukaridaki ornegin Case yapisi kullanilmis hali.
   
   procedure Check_DirectionWithCase is
      N : Integer;
   begin
      loop
         Put ("Enter an integer value: ");
         Get(N);
         Put(N);
         case N is
         when 0 | 360 =>
            Put_Line(" is due to East");
         when 90 =>
            Put_Line(" is due to North");
         when 180 =>
            Put_Line(" is due to West");
         when 270 =>
            Put_Line(" is due to South");
         when others =>
            Put_Line(" is not in certain range");
            exit;
         end case;   
      end loop;
         
   end Check_DirectionWithCase;
   
   -- Case ve dongu kullanilarak gelisitirlen ornek
   
   procedure ucgenCiz is
   begin
      for I in 1 .. 5 loop
         case I is
            when 5 => Put_Line("*****");
            when 4 => Put_Line(" ****");
            when 3 => Put_Line("  ***");
            when 2 => Put_Line("   **");
            when 1 => Put_Line("    *");               
            when others => null;
         end case;
      end loop;
   end ucgenCiz;
   
   --Hafta ici ya da haftasonu gun ornegi
   procedure gunSec is
      type Days is (Monday, Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday);
      Today : Days;
   begin
      case Today  is
         when Monday | Tuesday | Wednesday | Thursday | Friday =>
            Put_Line("Weekdays");
         when Saturday | Sunday =>
            Put_Line("Weekend");
         when others =>
            null;
      end case;
   
   end gunSec; 

   

begin gunSec;

end Main;
