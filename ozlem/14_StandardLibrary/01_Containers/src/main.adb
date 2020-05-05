with Vectors, Sets, Maps;

procedure Main is
   procedure useVectorExamples is
      use Vectors;
   begin
      showVectorInstantiation;
      showVectorAppend;
      accessFirstAndLastElement;
      showAllElementsOfVector;
   end useVectorExamples;

   procedure useSetExamples is
      use Sets;
   begin
      setOperations;
   end useSetExamples;

   procedure useMapExamples is
      use Maps;
   begin
      hashMapOperations;
      orderedMapOperations;
   end useMapExamples;

begin
   useVectorExamples;
   useSetExamples;
   useMapExamples;
end Main;

