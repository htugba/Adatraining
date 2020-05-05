with Ada.Text_IO,
     Ada.Numerics,
     Ada.Numerics.Elementary_Functions,
     Ada.Numerics.Float_Random, 
     Ada.Numerics.Discrete_Random, 
     Ada.Numerics.Complex_Types, 
     Ada.Numerics.Complex_Elementary_Functions,
     Ada.Text_IO.Complex_IO,
     Ada.Numerics.Real_Arrays;

use Ada.Text_IO;

package body Numerics is

   procedure useElementaryFunctions is
      use Ada.Numerics, Ada.Numerics.Elementary_Functions;
      
      num : Float;
   begin
      num := 2.0;
      Put_Line ("Square root of " & Float'Image(num) & " is " & Float'Image(Sqrt(num)));

      num := e;
      Put_Line ("Natural log of " & Float'Image(num) & " is " & Float'Image(Log(num)));
                  

      num := 10.0 ** 6.0;
      Put_Line ("Log_10 of " & Float'Image(num) & " is " & Float'Image(Log(num, 10.0)));
                  

      num := 2.0 ** 8.0;
      Put_Line ("Log_2 of " & Float'Image(num) & " is " & Float'Image(Log(num, 2.0)));
                  

      num := Pi;
      Put_Line ("Cos of " & Float'Image(num) & " is " & Float'Image(Cos(num)));
                

      num := -1.0;
      Put_Line ("Arccos of " & Float'Image(num) & " is " & Float'Image(Arccos(num)));
      New_Line;
   end useElementaryFunctions;
   
   procedure useRandomNumbers is
      use Ada.Numerics.Float_Random;
      G : Ada.Numerics.Float_Random.Generator;
      X : Uniformly_Distributed;
   begin
      Reset (G);
      Put("Some random numbers between "
                & Float'Image (Uniformly_Distributed'First) & " and"
                & Float'Image (Uniformly_Distributed'Last)  & ": ");
      for I in 1 .. 7 loop
         X := Random(G);
         Put(Float'Image(X) & " ");
      end loop;
      New_Line;
   end useRandomNumbers;
   
   procedure useDiscreteRandomNumbers is
      subtype Discrete_Random_Range is Integer range 300 .. 400;
      package pckgDicreteRandom is new Ada.Numerics.Discrete_Random(Discrete_Random_Range);
      use pckgDicreteRandom;
      
      G : Generator;
      X : Discrete_Random_Range;
   begin
       Reset (G);
      
      Put("Some random numbers between "
             & Integer'Image (Discrete_Random_Range'First) & " and"
             & Integer'Image (Discrete_Random_Range'Last)  & ":");
      
      for I in 1 .. 7 loop
         X := Random(G);
         Put(Integer'Image(X) & " ");
      end loop;
      New_Line;
   end useDiscreteRandomNumbers;
   
   procedure useComplexTypes is
      use Ada.Numerics, Ada.Numerics.Complex_Types, Ada.Numerics.Complex_Elementary_Functions;

      package pckgComplextIO is new Ada.Text_IO.Complex_IO(Complex_Types);
      use pckgComplextIO;

      X, Y : Complex;
      --R, Th : Float;
   begin
      X := (9.0, -1.0);
      Y := (5.0, -4.0);

      Put("X + Y is ");
      Put(X+Y);
      New_Line;
      
      --R  := 3.0;
      --Th := Pi / 2.0;
      --X  := Compose_From_Polar(R, Th);
      --Put ("Polar form: " & Float'Image (R)  & " * e**(i * " & Float'Image (Th) & ")");
      --New_Line;
      
      Put ("Modulus of ");
      Put (X);
      Put (" is ");
      Put (Float'Image(abs(X)));
      New_Line;

      Put ("Argument of ");
      Put (X);
      Put (" is ");
      Put (Float'Image (Argument (X)));
      New_Line;
      New_Line;

      Put ("Sqrt of ");
      Put (X);
      Put (" is ");
      Put (Sqrt (X));
      New_Line;
      
   end useComplexTypes;
   
   procedure useVectorAndMatrix is
      use  Ada.Numerics.Real_Arrays;
      
      procedure displayVector(V : Real_Vector) is
      begin
         Put("(");
         for i in V'Range loop
            Put(Float'Image(V(i)) & " ");
         end loop;
         Put(") ");
         New_Line;
      end displayVector;

      procedure displayMatrix (M : Real_Matrix) is
      begin
         for i in M'Range(1) loop
            Put ("(");
            for j in M'Range(2) loop
               Put (Float'Image (M(i, j)) & " ");
            end loop;
            Put(") ");
         end loop;
         New_Line;
      end displayMatrix;

      V1 : Real_Vector := (1.0, 3.0);
      
      V2 : Real_Vector := (75.0, 11.0);

      M1 : Real_Matrix := ((1.0, 5.0, 1.0), 
                           (2.0, 2.0, 1.0));
      
      M2 : Real_Matrix := ((31.0, 11.0, 10.0),
                           (34.0, 16.0, 11.0),
                           (32.0, 12.0, 10.0),
                           (31.0, 13.0, 10.0));
      
      M3 : Real_Matrix := ((1.0, 2.0),
                           (2.0, 3.0));
   begin
      Put("V1 : ");
      displayVector(V1);
      Put("V2 : ");
      displayVector(V2);
      Put("V1 * V2 : ");
      Put_Line(Float'Image (V1 * V2));
      Put("V1 * V2 : ");
      displayMatrix(V1 * V2);
      New_Line;

      Put("M1 : ");
      displayMatrix(M1);
      Put("M2 : ");
      displayMatrix(M2);
      Put("M2 * Transpose(M1) : ");
      displayMatrix (M2 * Transpose(M1));
      New_Line;

      Put("M3 : ");
      displayMatrix(M3);
      Put("Inverse (M3) : ");
      displayMatrix(Inverse(M3));
      Put("abs Inverse (M3) : ");
      displayMatrix(abs Inverse(M3));
      Put("Determinant (M3) : ");
      Put_Line (Float'Image(Determinant(M3)));
      Put("Solve (M3, V1) : ");
      displayVector(Solve(M3, V1));
      Put("Eigenvalues (M3) : ");
      displayVector(Eigenvalues(M3));
      New_Line;
   end useVectorAndMatrix;
end Numerics;
