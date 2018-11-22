with statement; use statement;

package block is
   type stArray is array (Positive range <>) of statement;
   
   ParserException, LexicalExcpetion, IllegalArgumentException, FileNotFoundException: exception;

   procedure Block();
   
   procedure add(st: in statement);
   
   procedure process();

   procedure size() return Integer;
   
end block;
