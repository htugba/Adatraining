with Ada.Text_IO; use Ada.Text_IO;

package body Sets is

   procedure setOperations is 
      use integerSets;
      
      S : Set; --also can be used as  S : integerSets.Set;
      C : Cursor;
      isSuccessfull : Boolean;
   begin
      
      S.Insert(10);
      S.Insert(11);
      S.Insert(15);
      S.Insert(18);
      --S.Insert(11); -- throws CONSTRAINT_ERROR
                      -- Sets.integerSets.Insert: attempt to insert element already in set
      
      S.Insert (11, C, isSuccessfull); --not throw error with this way
      if not isSuccessfull then
         Put_Line ("Inserting 11 into set was not successful");
      end if;
      
      S.Include (11); -- Can be used instead of Insert.
                      --If the element is already present, the set remains unchanged
      S.Include (13);
      S.Include (14);
      
      Put_Line("Length of set:" & Count_Type'Image(S.Length));
      
      Put("Elements: ");
      for E of S loop
         Put(Integer'Image(E) & " ");
      end loop;
      
      New_Line;
      
      if S.Contains (18) then
         Put_Line ("Element 18 is found in set");
      end if;

      if S.Find (10) /= No_Element then
         Put_Line ("Element 10 is found in set");
      end if;
      
   end setOperations;
   
   
   
   
end Sets;
