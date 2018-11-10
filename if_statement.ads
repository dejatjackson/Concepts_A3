package if_statement is

   type If_stat is private;
   
   subtype Expressio; //TODO
   subtype Blk1; //TODO
   subtype Blk2; //TODO
     
   function create_ifstat(E: in Expression, B1: in blk1, B2: in Blk2) return If_Stat;
   procedure excecute(I: in If_Stat);
   
   private
   type If_stat is
      record
         E: Expression;
         B1: blk1;
         B2: Blk2;
      end record;

end if_statement;
