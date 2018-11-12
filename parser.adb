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

   
   procedure parser(F: in filename)
   begin 
      lex = new lexicalAnalyzer(filename)//TODO
   end
     
   function parse(//TODO) return Program is
   begin 
         
   end
   function getBlock //TODO
     begin 
      //TODO
        match(
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
   function isValidStartofStatement(//TODO) return Boolean is
   begin 
       if(tok is not null)
              raise //TODO
       return //TODO           
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
    function getLiteralInteger(//TODO) return literal_integer
  begin 
      //TODO
   end
   function getId(//TODO) return Id
   begin 
              tok: token; 
              if //TODO
              //TODO
              return new Id(//TODO)
   end 
      function getBooleanExpression(//TODO ) return Booleam_expression
   begin 
              op: Relative_op;
              op := getRelativeOperator();
              expr1 : Arithmetic_expression;
              expr2 : Arithmetic_expression;
              expr1 := getArithmeticExpression();
              expr2 := getArithmeticExpression();
              return new Boolean_expression(op,expr1,expr2)//TODO
   end
      function getRelationalOperator(//TODO) return Relative_op 
              begin 
              op: Relative_op;
              tok: token;
              if //TODO then //TODO
              elsif //TODO then  //TODO
              elsif //TODO then  //TODO
              elsif //TODO then  //TODO
              elsif //TODO then  //TODO
              elsif //TODO then  //TODO
              else
                    //TODO
               return op
   end
     procedure match() //TODO
   begin 
              //Note -- instead of the assert just do and if and raise
               //TODO
   end 
      function getLookaheadToken(//TODO) return token
   begin 
      tok: token;
      tok = null;
      //TODO
   end 
      function getNextToken(//TODO) return token
   begin 
      tok: token;
      tok = null;
      //TODO
   end 
end parser;
