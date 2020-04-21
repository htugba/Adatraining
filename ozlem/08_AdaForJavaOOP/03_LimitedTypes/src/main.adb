with Stacks; use Stacks;

procedure Main is
   S, S2 : Stack;
begin

   --Not allowed to overload the comparison operators = and /= for limited types
   --Not allowed to override the built-in declarations for non-limited types.
   S := S2; --  Error because left hand must not be limited type.
end Main;
