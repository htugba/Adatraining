with color_types;
package body Color_Types is

   function To_Integer (C : HTML_Color) return Integer is
   begin
      
      case C is
         when Salmon => return 16#FA8072#;
         when Firebrick => return 16#B22222#;
         when Red => return 16#FF0000#;
         when Darkred => return 16#8B0000#;
         when Lime => return 16#00FF00#;
         when Forestgreen => return 16#228B22#;
         when Green => return 16#008000#;
         when Darkgreen => return 16#006400#;
         when Blue => return 16#0000FF#;
         when Mediumblue => return 16#0000CD#;
         when Darkblue => return 16#00008B#;
         
      end case;
      
   end To_Integer;

    function To_HTML_Color (C : Basic_HTML_Color) return HTML_Color is
      Color : HTML_Color;
      begin
         case C is
            when Red => Color := Red;
            when Green => Color := Green;
            when Blue => Color := Blue;
         end case;
      return Color;
   end To_HTML_Color;
end Color_Types;