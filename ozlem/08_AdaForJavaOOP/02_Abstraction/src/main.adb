with Savings_Account_Package; use Savings_Account_Package;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   savingsAccount : Savings_Account_Type;
begin
   savingsAccount.accountNumber := 10;
   savingsAccount.accountOwner := 1;
   savingsAccount.taxIDNumber := 2;
   savingsAccount.minimum_Balance := 453.07;

   -- !!!!!! Why cannot be used "Open" procedure in Savings_Account_Package
   --savingsAccount.Open(savingsAccount);
   --savingsAccount.Close(savingsAccount);
end Main;
