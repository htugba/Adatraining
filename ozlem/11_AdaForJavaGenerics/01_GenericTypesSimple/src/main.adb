with genericTypes; use genericTypes;

procedure Main is
   type MyInt is new Integer range 1..128;
   n1 : MyInt := 54;
   n2 : MyInt := 43;
   n3 : Integer := -7;
   n4 : Integer := 4;

   procedure swapInt is new exchangeValues(Integer);
   procedure swapMyInt is new exchangeValues(MyInt);
begin
   swapMyInt(n1, n2);
   swapInt(n3, n4);
   swapMyInt(n1, MyInt(n3));
end Main;
