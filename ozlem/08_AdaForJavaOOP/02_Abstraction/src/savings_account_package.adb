with Ada.Text_IO; use Ada.Text_IO;

package body Savings_Account_Package is
   
   procedure Open (account : in out Savings_Account_Type) is
   begin
      Put_Line("Open Account:" & account.Account_Number);
   end Open;
   
   procedure Close (account : in out Savings_Account_Type) is
   begin
      Put_Line("Close Account:" & account.Account_Number);
   end Close;
   
   procedure Deposit (account : in out Savings_Account_Type;
                      amount  : in     Bank_Account_Package.Money) is
   begin
      Put_Line("Deposit Account:" & account.Account_Number);
   end Deposit;
   
end Savings_Account_Package;
