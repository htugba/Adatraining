  function Factorial(N : in Positive) return Positive is
      Answer : Positive := 1;
   begin
      if N > 1 then
         Answer := N * Factorial(N - 1);
      end if;
      return Answer;
   end Factorial;
