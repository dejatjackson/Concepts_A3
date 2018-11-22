with boolean_expression; use boolean_expression;

package while_statement is

   type W_stat is private;
   
   subtype B_Expression is boolean_expression with private;
   subtype blk is block with private; 
     
   function create_wstat(E: in B_Expression, B: in blk) return W_Stat;
   procedure excecute(W: in W_Stat);
   
   private
   type W_stat is
      record
         E: Expression;
         B: blk;
      end record;

end while_statement;
