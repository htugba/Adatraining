package Bank_Account_Package is

   type Bank_Account_Type is abstract tagged limited
      record
         accountNumber : Integer;
         accountOwner  : Integer;
         taxIDNumber  : Integer;
      end record;

   type Money is delta 0.01 digits 5; ----First -999.99 Last 999.99

   procedure Open (Account : Bank_Account_Type) is abstract;

   procedure Close (Account : Bank_Account_Type) is abstract;


end Bank_Account_Package;
