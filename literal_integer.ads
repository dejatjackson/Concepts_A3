package literal_integer is

   type lit_int is private;
   
   subtype int; //TODO
     
   function create_lInt(I: in int) return lit_int;      
   function evaluate(L: in lit_int) return int;
   
   private
   type lit_int is 
      record
         I: int;
      end record

end literal_integer;
