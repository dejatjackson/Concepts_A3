package while_statement is

   type W_stat is private;
   
   subtype Expression; //TODO
   subtype Blk //TODO
     
   function create_wstat(E: in B_Expression, B: in blk) return W_Stat;
   procedure excecute(W: in W_Stat);
   
   private
   type W_stat is
      record
         E: Expression;
         B: blk;
      end record;

end while_statement;
