package body literal_integer is
begin
   
   value: Integer;
   
   function create_lInt(I: in Integer) return lit_int is
    
      LI: lit_int;
      
   begin
      LI.value = value;
      return LI;
   end create_lint;
   
   
   function evaluate() return Integer is
   begin
      return value;
   end evaluate;
   
end literal_integer;
