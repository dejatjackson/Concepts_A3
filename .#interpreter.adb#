with parser; use parser;
with program; use program;

procedure interpreter is
   begin

   pars: parser := new parser("test1.jl");
   pro: program := pars.parse;
   pro.execute;

   if ParserException then
      raise Error;

   elsif LexicalExcpetion then
      raise Error;

   elsif IllegalArgumentException then
      raise Error;

   elsif FileNotFoundException then
      raise Error;

   elsif exception then
         raise Error;

   end if;



end interpreter;
