with Bank_Account_Package; use Bank_Account_Package;

package Savings_Account_Package is
   type Savings_Account_Type is new Bank_Account_Type with private;
   
   procedure Open (Account : in out Savings_Account_Type);
   procedure Close (Account : in out Savings_Account_Type);

private
   type Savings_Account_Type is new Bank_Account_Type with
      record
         minimum_Balance : Money;
      end record;
end Savings_Account_Package;
