package predicates is

   type Prime is new Positive with
     Predicate => (for all Divisor in 2 .. Prime / 2 => Prime mod Divisor /= 0);
   
   subtype Normal_Float is Float with
     Predicate => Normal_Float <= -2.0**(-126) or 
                  Normal_Float = 0.0 or 
     Normal_Float >= 2.0**(-126);
      
   type Distinct_Pair is record
     Val1, Val2 : Integer;
   end record
     with Dynamic_Predicate => Distinct_Pair.Val1 /= Distinct_Pair.Val2;
   
end predicates;
