package print_statement is

   type P_stat is private;
   
   subtype Expression //TODO
    
    
   function create_pstat(E: in Expression ) return P_stat; 
   procedure excecute(P: in P_Stat);
     
   private
   type P_stat is 
      record
         E: Expression;
      end record

    
     
end print_statement;
