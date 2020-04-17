with Ada.Text_IO; use Ada.Text_IO;

procedure Enumeration_Example is
   type Aylar is (Ocak, Subat, Mart,
                 Nisan, Mayis, Haziran, Temmuz,Agustos,Eylul,Ekim,Kasim,Aralik);
begin
   for I in Aylar loop
      case I is

         when Ocak .. Aralik =>
            Put_Line ("Hello from Month " & Aylar'Image (I));
      end case;
   end loop;
end Enumeration_Example;