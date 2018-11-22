package parser is

   ParserException, LexicalException, IllegalArgumentException, FileNotFoundException: exception;
   
   procedure parser(F: in filename);
   
   function parse() return Program;
   
   function getBlock() return Block with private;
   
   function getStatement() return Statement with private;
   
   function getAssignmentStatement() return Statement with private;
   
   function getPrintStatement() return Statement with private;
   
   function getWhileStatement() return Statement with private;
   
   function getForStatement() return Statement with private;
   
   function getIfStatement() return Statement with private;
   
   function isValidStartofStatement(tok: in token) return Boolean with private;
   
   function getArithmeticExpression() return arithmetic_operator with private;
   
   procedure getBinaryExpression() return Binary_expression with private;
   
   function getArithmeticOperator() return arithmetic_oerator with private;
   
   function getLiteralInteger() return literal_integer with private;
   
   function getId() return Id with private;
   
   function getBooleanExpression() return Booleam_expression with private;
   
   function getRelationalOperator() return Relative_op with private;
   
   procedure match(tok: in Token, tokType: in tokentype) with private;
   
   function getLookaheadToken() return token with private;

end parser;
