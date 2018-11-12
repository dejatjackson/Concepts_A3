with block; use block;

package body program is
begin

   function create_block(blk: in block) return block is
   begin
      if blk is null then
         raise Data_Error;
      end if;
         
      
end create_block;

end program;
