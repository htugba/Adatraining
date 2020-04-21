with Bank_Account_Package; use Bank_Account_Package;

package Savings_Account_Package is
    type Savings_Account_Type is new Bank_Account_Type with
      record
         minimum_Balance : Money;
      end record;
   
   overriding
   procedure Open (Account : Savings_Account_Type);
   
   overriding
   procedure Close (Account : Savings_Account_Type);
  
end Savings_Account_Package;
