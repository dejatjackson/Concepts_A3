package body while_statement is
function create_wstat(E: in B_Expression, B: in blk) return W_Stat is
    
      WS: W_stat;
      
    begin
      if E is null then
         raise IllegalArgumentException with "null boolean expression";
      end if;
      
      if B is null then
         raise IllegalArgumentException with "null block";
         WS.b_expr := E;
         WS.blk := B;
     return WS;
    end create_wstat;
   
   
    procedure excecute(W: in W_Stat) is
    begin 
        while W.b_expr.eval loop
           W.blk.process();
        end loop;
    end execute;
   
end while_statement;
