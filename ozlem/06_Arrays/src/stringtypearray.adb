with Ada.Text_IO; use Ada.Text_IO;

package body StringTypeArray is

   --The standard String type in Ada is an array. 
   --String is defined as Charactar arr in Ada
   
    procedure predefinedArrayStringType is
      stringArr : String := "Test Message For Loop";
      --               ^ Dont have to give range. 
      --                 Bounds are automatically computed from initialization value
      
      stringArr2 : String(1..14);
      
    begin
      for value in reverse stringArr'Range loop
      --           ^ Iterate given range in reverse order
         Put(stringArr(value));
      end loop;
         
      Put_Line("");
      
      stringArr2 := "Second Message";   
      Put(stringArr2);
           
   end predefinedArrayStringType;
   
    -------------------------String split and concat-----------------------------
   procedure splitStringAndConcat is
      message : String := "Name is ....";
      nameSurname : String := "Adam Fesrt";
      
     
   begin
       declare
         onlyName: String := nameSurname(1..4);
      begin
         message(9..12) := onlyName;
      end;
      
      Put_Line(message);
      
   end splitStringAndConcat;
   
end StringTypeArray;
