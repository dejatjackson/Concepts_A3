package body parser is

   
   procedure parse(F: in filename)
   begin 
      lex = new lexicalAnalyzer(filename)//TODO
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
