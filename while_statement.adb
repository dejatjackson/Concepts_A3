package body while_statement is
function create_wstat(E: in B_Expression, B: in blk) return W_Stat is
    
      WS: W_stat;
      
    begin
      if(b_expr == null)
        //TODO
      if(blk == null)
        //TODO
         WS.b_expr = b_expr;
         WS.blk = blk;
     return WS;
    end create_wstat
   
   
    procedure excecute(W: in W_Stat) //TODO:fix this method
     begin 
      while(b_expr.eval())
          blk.process();
     end execute;
   
end while_statement;
