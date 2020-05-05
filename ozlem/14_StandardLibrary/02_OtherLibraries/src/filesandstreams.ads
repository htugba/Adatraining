package FilesAndStreams is

   procedure showStdTextOut;
   
   --Text I/O
   procedure createWriteReadFile;
   
   --Sequential I/O
   procedure createWriteReadBinaryFile;
   
   --Sequential I/O
   procedure writeRecordToBinaryFile;
   
   --Direct I/O
   --Unlike sequential I/O, direct I/O allows you to access any position in the file.
   procedure accessAPositionInDirectFile;
   
   --Stream I/O
   --Need to create and process files that include different data types, 
   --or any objects of an unbounded type.
   procedure createWriteReadStreamFile;

end FilesAndStreams;
