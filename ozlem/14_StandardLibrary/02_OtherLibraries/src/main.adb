with DateAndTime, StringsLibrary, FilesAndStreams, Numerics;

procedure Main is

   procedure useDateAndTimeExamples is
      use DateAndTime;
   begin
      displayCurrentTime;
      displayCurrentYear;
      displayDelayNextSpecificTime;
      --displayDelayNext;
   end useDateAndTimeExamples;

   procedure useStringsLibraryExamples is
      use StringsLibrary;
   begin
      findSubstring;
      findEachWords;
      useStringOperations;
      useBoundedStrings;
      useUnboundedStrings;
   end useStringsLibraryExamples;

   procedure useFileAndStreamsExamples is
      use FilesAndStreams;
   begin
      showStdTextOut;
      createWriteReadFile;
      createWriteReadBinaryFile;
      writeRecordToBinaryFile;
      accessAPositionInDirectFile;
      createWriteReadStreamFile;
   end;

   procedure useNumericsExamples is
      use Numerics;
   begin
      useElementaryFunctions;
      useRandomNumbers;
      useDiscreteRandomNumbers;
      useComplexTypes;
      useVectorAndMatrix;
   end useNumericsExamples;

begin
   useDateAndTimeExamples;
   useStringsLibraryExamples;
   useFileAndStreamsExamples;
   useNumericsExamples;
   useNumericsExamples;
end Main;
