with id; use id;

package Assignment_statement is
   
 ParserException, LexicalExcpetion, IllegalArgumentException, FileNotFoundException: exception;

 type A_stat is Assignment_statement with private;
   
   subtype ID_Var is id with private;
   subtype A_Expression is Assignment_statement with private;
    
    
   function create_astat(V: in ID_Var, E: in Ass_Expression ) return A_stat; 
   procedure excecute(A: in A_Stat);
     
   private
   type A_stat is 
      record
         I: ID_Var;
         A: Ass_Expression; 
      end record


end Assignment_statement;
