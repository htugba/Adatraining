package Points is
   type Point is record
      X, Y : Integer := 0;
   end record;
   type Point_Array is array (Positive range <>) of Point;
   Origin : Point := (X | Y => <>); -- use the default values
   Origin_2 : Point := (others => <>); -- likewise use the defaults
   Points_1 : Point_Array := ((1, 2), (3, 4));
   Points_2 : Point_Array := (1 => (1, 2), 2 => (3, 4), 3 .. 20 => <>);
end Points;
