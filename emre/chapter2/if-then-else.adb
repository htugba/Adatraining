procedure If-then-else is
N : Integer;
begin
      Put ("Enter an integer value: "); -- Put a String
      Get (N); -- Read in an integer value
      if N > 0 then
         Put (N); -- Put an Integer
         Put_Line (" is a positive number");
      end if;
end If-then-else;
