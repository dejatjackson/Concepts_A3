package Assignment_statement is

 type A_stat is private;
   
   subtype ID_Var; //TODO
   subtype Ass_Expression; //TODO
    
    
   function create_astat(V: in ID_Var, E: in Ass_Expression ) return A_stat; 
   procedure excecute(A: in A_Stat);
     
   private
   type A_stat is 
      record
         V: ID_Var;
         E: Ass_Expression; 
      end record


end Assignment_statement;
