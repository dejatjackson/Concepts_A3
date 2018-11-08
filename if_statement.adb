package body  if_statement is
function create_ifstat(E: in Expression, B1: in blk1, B2: in Blk2) return If_Stat is
    
      If: If_stat;
      
    begin
      if(b_expr == null)
        //TODO
      if(blk1 == null || blk2 == null)
        //TODO
         If.b_expr = b_expr;
         If.blk1 = blk1;
         If.bl2 = blk2;
     return If;
    end create_ifstat
   
   
    procedure excecute(I: in If_Stat) //TODO:fix this method
     begin 
      if(b_expr.eval())
        blk1.process();
   else
      blk2.process();
     end execute;
   
end if_statement;
