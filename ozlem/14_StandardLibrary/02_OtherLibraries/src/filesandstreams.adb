with Ada.Text_IO; 
with Ada.Sequential_IO;
with Ada.Direct_IO;
with Ada.Streams.Stream_IO; 

package body FilesAndStreams is

   procedure showStdTextOut is
      use Ada.Text_IO;
   begin
      Put_Line(Standard_Output, "Hello World #1");
      Put_Line(Standard_Error,  "Hello World #2");
   end showStdTextOut;
   
   procedure createWriteReadFile is
      use Ada.Text_IO;
      F : File_Type;
      fileName : constant String := "simple.txt";
   begin
      Create(F, Out_File, fileName);
      Put_Line(F, "Simple text file added line #1");
      Put_Line(F, "Simple text file added line #2");
      Put_Line(F, "Simple text file added line #3");
      Close(F);
      
      --Reset(F); --Reset all lines in file.
      --Delete(F);--Delete file.
      
      Open(F, In_File, fileName);
      while not End_Of_File(F) loop
         Put_Line(Get_Line(F));
      end loop;
      Close(F);
      
      
   end createWriteReadFile;
   
   procedure createWriteReadBinaryFile is
      package Float_IO is new Ada.Sequential_IO(Float);
      
      use Float_IO;

      F : Float_IO.File_Type;
      fileName : constant String := "float_file1.bin";
   begin
      Create(F, Out_File, fileName);
      Write(F, 3.5);
      Write(F, 8.7);
      Write(F, 4.9);
      Close(F);
      
      declare
         value : Float;
      begin
         Open(F, In_File, fileName);
         while not End_Of_File(F) loop
            Read(F, value);
            Ada.Text_IO.Put_Line(Float'Image(value));
         end loop;
         Close(F);
      end;
      
   end createWriteReadBinaryFile;
   
   procedure writeRecordToBinaryFile is
      type NumInfo is record
         isValid : Boolean := False;
         value : Float;
      end record;
      
      procedure writeToConsole(N : NumInfo) is
         use Ada.Text_IO;
      begin
         if N.isValid then
            Put_Line ("(ok,     " & Float'Image (N.Value) & ")");
         else
            Put_Line ("(not ok,  -----------)");
         end if;
      end writeToConsole ;
      
      package Num_Info_IO is new Ada.Sequential_IO(NumInfo);
      use Num_Info_IO;
      F : Num_Info_IO.File_Type;
      fileName : constant String := "float_file2.bin";
      
   begin
      Create(F, Out_File, fileName);
      Write(F, (True, 3.5));
      Write(F, (False, 8.7));
      Write(F, (True, 4.9));
      Close(F);
      
      declare
         value : NumInfo;
      begin
         Open(F, In_File, fileName);
         while not End_Of_File(F) loop
            Read(F, value);
            writeToConsole(value);
         end loop;
         Close(F);
      end;
   end writeRecordToBinaryFile;
   
   procedure accessAPositionInDirectFile is
      use Ada.Text_IO;
      package Float_IO is new Ada.Direct_IO(Float);
      
      use Float_IO;

      F : Float_IO.File_Type;
      fileName : constant String := "float_file3.bin";
   begin
      Create(F, Inout_File, fileName); --Open file for read and write
      Write(F, 3.5);
      Write(F, 8.7);
      Write(F, 4.9);
       
      Set_Index(F, Index(F) - 1);--Set index to previous position and overwrite value
      Write(F,  7.7);
      
      declare
         value : Float;
      begin
         Set_Index (F, 1);--Set index to start file

         while not End_Of_File (F) loop
            Read(F, Value);
            Put_Line(Float'Image (Value));
         end loop;
         Close (F);
      end;
   end accessAPositionInDirectFile;
   
   procedure createWriteReadStreamFile is
      use Ada.Streams.Stream_IO;
      F        : File_Type;
      S        : Stream_Access;
      fileName : constant String := "float_file4.bin";
      
      procedure output (S  : Stream_Access; floatVal : Float; stringVal : String) is
      begin
         String'Output(S, stringVal);
         Float'Output(S,  floatVal);
      end output;
      
      procedure displayInput (S : Stream_Access) is
        stringVal : String := String'Input(S);
        floatVal : Float  := Float'Input(S);
      begin
        Ada.Text_IO.Put_Line(Float'Image(floatVal) & " --- " & stringVal);
      end displayInput;
      
   begin
      Create (F, Out_File, fileName);
      S := Stream (F);

      output(S, 1.5, "Hi!!");
      output(S, 2.4, "Hello world!");
      output(S, 6.7, "Something longer here...");
      Close (F);

      Open(F, In_File, fileName);
      S := Stream (F);

      while not End_Of_File (F) loop
         displayInput(S);
      end loop;
      Close (F);
   end createWriteReadStreamFile;
   
end FilesAndStreams;
