package body for_statement is
   function create_forstat(E: in B_Expression, B: in Blk) return For_Stat is
    
      FS: For_stat;
      
    begin
      if(b_expr == null)
        //TODO
      if(blk == null)
        //TODO
         FS.b_expr = b_expr;
         FS.blk = blk;
     return FS;
    end create_forstat
   
   
    procedure excecute(F: in For_Stat) //TODO:fix this method
     begin 
      while(b_expr.eval())
          blk.process();
     end
   
end for_statement;
