with Ada.Text_IO; use Ada.Text_IO;

procedure Main is


   type Phone_Number is range 530_000_00_00 .. 538_999_99_99;
   type Months is (Dec, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sept, Oct, Nov);
   IsPhoneNumber : Boolean;

   --------------------------Derived Types Example--------------------------------
   function NumberCheck(I : Phone_Number) return Boolean is
      --  ID card number type, incompatible with Integer.

      SSN : Phone_Number;

   begin
      SSN := I;
      Put_Line("Valid phone Number is: " & Phone_Number'Image(SSN));
      return True;
   end NumberCheck;
   -----------------------------------------------------------------------------


   --------------------------Enumaration Example--------------------------------
   procedure EnumarationExample is
      --  An enumeration type

      type Winter_Months is new Months range Dec .. Feb;
      type Spring_Months is new Months range Mar .. May;
      type Summer_Months is new Months range Jun .. Aug;
      type Autumn_Months is new Months range Sept .. Nov;

   begin
      Put(" Winter Months: ");
      for wMonths in Winter_Months loop
         Put(Winter_Months'Image(wMonths) & " ");
      end loop;
      Put_Line("");

      Put(" Spring Months: ");
      for spMonths in Spring_Months loop
         Put(Spring_Months'Image(spMonths)& " ");
      end loop;
      Put_Line("");

      Put(" Summer Months: ");
      for smMonths in Summer_Months loop
         Put(Summer_Months'Image(smMonths)& " ");
      end loop;
      Put_Line("");

      Put(" Autumn Months: ");
      for aMonths in Autumn_Months loop
         Put(Autumn_Months'Image(aMonths)& " ");
      end loop;
      Put_Line("");

   end EnumarationExample;

   ---------------------------------------------------------------------------

begin
   IsPhoneNumber :=  NumberCheck(534_875_24_44);
   EnumarationExample;

end Main;
