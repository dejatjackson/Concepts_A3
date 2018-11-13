package body assignment_statement is

   function create_astat(var: in ID_Var, a_express: in A_Expression ) return A_Stat is
    
      As: A_stat;
      
    begin
      if ID_var is null then
         raise Data_Error;
      end if;
      
      if A_Express is null then
         raise Data_Error;
      end if;
              
         As.I = var;
         As.A = a_express; 
         return As;
            
    end create_astat;

                         
                
   procedure excecute(A: in A_Stat)
     begin 
       Memory.store(A_stat.I.char, A_stat.A.evaluate); 
     end
   
end assignment_statement;
