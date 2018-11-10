package body literal_integer is
function create_lInt(I: in int) return lit_int is
    
      LI: lit_int;
      
    begin
     LI.value = value;
     return LI;
   end create_lint;
   
   function evaluate(L: in lit_int) return int is
      begin
       return value;
      end evaluate;
   
end literal_integer;
