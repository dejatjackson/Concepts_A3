package literal_integer is

   type lit_int is private;
     
   function create_lInt(I: in Integer) return lit_int;      
   function evaluate(L: in lit_int) return Integer;
   
   private
   type lit_int is 
      record
         I: Integer;
      end record;

end literal_integer;
