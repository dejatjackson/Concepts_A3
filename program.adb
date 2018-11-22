with block; use block;

package body program is
   b: block;
   function create_block(blk: in block) return block is
   begin
      if blk is null then
         raise IllegalArgumentException with "null block";
      end if;
         b := blk;
      
  end create_block;

  procedure execute() is
         b.process();
  end execute;
      
end program;
