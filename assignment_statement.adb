package body assignment_statement is

   function create_astat(V: in ID_Var, E: in Ass_Expression ) return A_Stat is
    
      As: A_stat;
      
    begin
      if(var == null)
        //TODO
      if(a_express == null)
        //TODO
         As.var = var;
         As.a_express = a_express; 
     return As;
    end create_astat

                         
                
   procedure excecute(A: in A_Stat)
     begin 
       Memory.store (var.getChar(), a_express.evaluate()); //TODO  
     end
   
end assignment_statement;
