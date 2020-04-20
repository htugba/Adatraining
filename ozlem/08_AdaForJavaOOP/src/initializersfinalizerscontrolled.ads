with Ada.Finalization;
use Ada.Finalization;

package InitializersFinalizersControlled is

   type Widget is new Controlled with
      record
         size : Integer;
         number : Integer;
      end record;
   
   procedure initialize(item : in out Widget); 
   --        ^ When any object of this type is defined, this procedure is run automatically
   
   procedure adjust(item : in out Widget);
   --        ^ This procedure is called automatically for the new object after the new data has been assigned to it.
   
   procedure finalize(item : in out Widget);
   --        ^ When you assign something to a variable, the data contained in that variable is overwritten and lost forever.

end InitializersFinalizersControlled;
