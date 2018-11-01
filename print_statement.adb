package body print_statement is

   function create_pstat(E: in Expression ) return P_Stat is
    
      Ps: P_stat;
      
    begin
      if(expr == null)
        //TODO
      Ps.expr = expr;
     return Ps;
    end create_pstat
   
   
    procedure excecute(P: in P_Stat)
     begin 
       Put_Line(expr.evaluate()); //TODO  
     end
end print_statement;
