with Ada.Text_IO; use Ada.Text_IO;

package body Savings_Account_Package is
   
   procedure Open (account : Savings_Account_Type) is
   begin
      Put_Line("Open Account:" & Integer'Image(account.accountNumber));
   end Open;
   
   procedure Close (account : Savings_Account_Type) is
   begin
      Put_Line("Close Account:" & Integer'Image(account.accountNumber));
   end Close;
   
   procedure Deposit (account : Savings_Account_Type;
                      amount  : Bank_Account_Package.Money) is
   begin
      Put_Line("Deposit Account:" & Integer'Image(account.accountNumber));
   end Deposit;
   
end Savings_Account_Package;
