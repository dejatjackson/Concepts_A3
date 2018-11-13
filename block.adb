with block; use block;
with statement; use statement;

package body block is
begin
   ar: stArray;
   
   procedure Block() is
   begin
      ar: stArray;
   end Block;
   
   procedure add(st: in statement) is
   begin
      if ar is null then 
         raise Data_Error;
      end if;
   ar.add(st);    
   end add;
      
   procedure process() is
   begin
         
   for I in ar'Range loop

      ar[I].execute();

   end loop;
   end process;
   
   function size() return Integer is 
   begin
      return ar.range;
   end size;
      
      
end block;
