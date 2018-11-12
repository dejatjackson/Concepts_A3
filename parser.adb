with boolean_expression; use boolean_expression;
with statement; use statement;
with Assignment_statement; use Assignment_statement;
with block; use block;
with while_statement; use while_statement;
with for_statement; use for_statement;
with print_statement; use print_statement;
with if_statement; use if_statement;
with arithmetic_expression; use arithmetic_expression;

package body parser is

   
   function parse(P: in Parser) return Parser is
   begin 
      //TODO
   end
     
     
   function getBlock //TODO
     begin 
      //TODO
   end
     
   function getStatement //TODO
     begin 
      //TODO
   end
     
   function getAssignmentStatement()//TODO
   begin 
      //TODO
   end
     
   function getPrintStatement() //TODO
    begin 
      //TODO
   end
   function getWhileStatement() //TODO
   begin 
      //TODO
   end
    function getForStatement() //TODO
   begin 
      //TODO
   end 
   function getIfStatement() //TODO
   begin 
      //TODO
   end 
   function isValidStartofStatement() //TODO
   begin 
      //TODO
   end 
      function getArithmeticExpression() //TODO
   begin 
      //TODO
   end 
     function getBinaryExpression() //TODO
   begin 
      //TODO
   end 
    function getArithmeticOperator //TODO
   begin 
      //TODO
   end
      function getLiteralInteger() //TODO
   begin 
      //TODO
   end
      function getId() //TODO
   begin 
      //TODO
   end 
      function getBooleanExpression() //TODO
   begin 
      //TODO
   end
      function getRelationalOperator() //TODO
   begin 
      //TODO
   end 
      function match() //TODO
   begin 
      //TODO
   end 
      function getLookaheadToken() //TODO
   begin 
      //TODO
   end 
      function getNextTokenn() //TODO
   begin 
      //TODO
   end 
end parser;
