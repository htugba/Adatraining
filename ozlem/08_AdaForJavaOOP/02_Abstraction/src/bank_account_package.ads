package Bank_Account_Package is

   type Bank_Account_Type is abstract tagged limited private;
   type Money is delta 0.01 digits 15;

   procedure Open (Account : in out Bank_Account_Type) is abstract;

   procedure Close (Account : in out Bank_Account_Type) is abstract;

private
   type Bank_Account_Type is abstract tagged limited
      record
         accountNumber : Integer;
         accountOwner  : Integer;
         taxIDNumber  : Integer;
      end record;
end Bank_Account_Package;
