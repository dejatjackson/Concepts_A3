with statement; use statement;
with block; use block;

package program is

   ParserException, LexicalExcpetion, IllegalArgumentException, FileNotFoundException: exception;

   type b is block with private

   function create_block(blk: in block) return block;

   procedure execute();

end program;
