package body for_statement is
   function create_forstat(express: in B_Expression, blk: in Blk) return For_Stat is
    
      FS: For_stat;
      
    begin
      if E is null then
         raise IllegalArgumentException with "null boolean expression";
      end if;
         
      if B is null then
         raise IllegalArgumentException with "null block";
               
         E = express;
         B = blk;
      end if;
               
      return FS;
    end create_forstat;
   
   
    procedure excecute(F: in For_Stat) 
     begin 
      while !For_stat.E.excecute loop
          For_stat.B.process;
     end loop;
   
end for_statement;
