package if_statement is

   type If_stat is private;
   
   subtype Expression is boolean_expression with private;
   subtype Blk1 is block with private;
   subtype Blk2 is block with private;
     
   function create_ifstat(E: in Expression, B1: in blk1, B2: in Blk2) return If_Stat;
   procedure excecute();
   
   private
   type If_stat is
      record
         E: Expression;
         B1: blk1;
         B2: Blk2;
      end record;

end if_statement;
