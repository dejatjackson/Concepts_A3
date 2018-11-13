with statement; use statement;
with block; use block;

package program is

   type b is block with private

   function create_block(blk: in block) return block;

   procedure execute();

end program;
