package Color_Types is

    type HTML_Color is (Salmon, 
                        Firebrick,
                        Red,
                        Darkred,
                        Lime,
                        Forestgreen,
                        Green,
                        Darkgreen,
                        Blue,
                        Mediumblue,
                        Darkblue);
   
   function To_Integer (C : HTML_Color) return Integer;

    type Basic_HTML_Color is (Red, Green, Blue);
  
    function To_HTML_Color (C : Basic_HTML_Color) return HTML_Color;
   
end Color_Types;