with arithmetic_expression; use arithmetic_expression;
with statement; use statement;

package print_statement is

   subtype P_stat is statement with private;
   
   type Expression is arithmetic_expression with private;
   
   ParserException, LexicalException, IllegalArgumentException, FileNotFoundException: exception;
    
   function create_pstat(E: in Expression ) return P_stat; 
   procedure excecute();
     
   private
   type P_stat is 
      record
         E: Expression;
      end record;

    
     
end print_statement;
