package Dates is
   type Month_Type is (January, February, March, April, May, June, July,
                       August, September, October, November, December);

   type Date is record
      Day   : Integer range 1 .. 31;
      Month : Month_Type;
      Year  : Integer;
   end record;
end Dates;