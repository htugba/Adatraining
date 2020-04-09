with Ada.Text_IO; use Ada.Text_IO;
with ArrayDeclarations;
with EnumArrayIndexAndMap;
with StringTypeArray;

procedure Main is

   procedure callArrayDeclarationsExamples is
      use ArrayDeclarations;
   begin
      --arrayIndexBoundsExample;
      --arrayDeclarationWithoutIndexDeclaration;
      --arrayDeclarationWithoutIndexAndValuesDeclaration;
      --rangeAttributeExample;
      --unconstraintArrayExample;
      null;
   end callArrayDeclarationsExamples;

   begin
   --callArrayDeclarationsExamples;
   --StringTypeArray.predefinedArrayStringType;
   --EnumArrayIndexAndMap.enumIndexAndMap;
   EnumArrayIndexAndMap.returnAnUnconstrainedString;
   --StringTypeArray.splitStringAndConcat;

end Main;




























