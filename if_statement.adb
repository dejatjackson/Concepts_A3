package body if_statement is
function create_ifstat(express: in Expression, blk1: in Blk1, blk2: in blk2) return If_Stat is
    
      If: If_stat;
      
      if express is null then
            raise IllegalArgumentException with "null boolean expression";
      end if;
            
      if blk1 is null or blk2 is null then
         raise IllegalArgumentException with "null block";
      end if;
         If_stat.E = express;
         If_stat.B1 = blk1;
         If_stat.B2 = blk2;
     return If;
    end create_ifstat;
   
   
    procedure excecute() is
     begin 
      if If_stat.B1.process is True then
        If_stat.B1.process;
      else
        If_stat.B2.process;
     end execute;
   
end if_statement;
