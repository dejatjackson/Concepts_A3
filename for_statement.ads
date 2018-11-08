package for_statement is

   type For_stat is private;
   
   subtype B_Expression; //TODO
   subtype Blk //TODO
     
   function create_forstat(E: in B_Expression, B: in Blk) return For_Stat;
   procedure excecute(F: in For_Stat);
   
   pricvate
   type For_stat is
      record
         E: Expression;
         B: blk;
      end record;

end for_statement;
