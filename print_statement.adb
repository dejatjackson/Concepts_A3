package body print_statement is

   Ps: P_stat;
   
   function create_pstat(E: in Expression ) return P_Stat is
      
    begin
      if expr = null then
         raise IllegalArgumentException wwith "Expression cannot be empty";
      end if;
      
     Ps.expr := E;
     return Ps;
    end create_pstat;
   
   
    procedure excecute()
     begin 
       Put_Line(Ps.expr.evaluate); 
    end execute;
end print_statement;
