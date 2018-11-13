with boolean_expression; use boolean_expression;
with block; use block;

package for_statement is

   type For_stat is for_statement with private;
   
   subtype B_Expression is boolean_expression with private;
   subtype Blk is block with private;
     
   function create_forstat(E: in B_Expression, B: in Blk) return For_Stat;
   procedure excecute(F: in For_Stat);
   
   type For_stat is
      record
         E: Expression;
         B: blk;
      end record;

end for_statement;
