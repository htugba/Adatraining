with PrePostConditions;

procedure Main is

   procedure usePrePostConditions is
      use PrePostConditions;
       result : Integer;
   begin
      addToDB("Alien", 5);
      --addToDB("", 10); -- raised exception
                         -- SYSTEM.ASSERTIONS.ASSERT_FAILURE : failed precondition

      result := square(5);
      --result := square(0); -- raised exception
                             -- SYSTEM.ASSERTIONS.ASSERT_FAILURE : failed postcondition

      --result := calculate(9); -- failed postcondition
      --result := calculate(1); -- failed precondition

   end usePrePostConditions;

begin
   usePrePostConditions;
end Main;
