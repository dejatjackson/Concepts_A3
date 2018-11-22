with relative_op; use relative_op;
with boolean_expression; use boolean_expression;
with statement; use statement;
with Assignment_statement; use Assignment_statement;
with block; use block;
with while_statement; use while_statement;
with for_statement; use for_statement;
with print_statement; use print_statement;
with if_statement; use if_statement;
with arithmetic_expression; use arithmetic_expression;
with id; use id;

package body parser is
   lex: lexicalAnalyzer;
   
   procedure parser(F: in filename)
   begin 
      lex := new lexicalAnalyzer(filename);
   end
     
   function parse() return Program is
   begin 
      tok: token := new token(getNextToken);
      match (tok, tokentype.function_tok);
      functionName: id := functionName(getId);
      tok := getNextToken;
      match (tok, tokentype.id);
      blk: block := getBlock();
      match (tok, tokentype.left_parent);
      tok := getNextToken;
      match (tok, tokentype.right_parent);
      tok := getNextToken;
      match (tok, tokentype.end_tok);
      tok := getNextToken;
      if tok.getTokType /= tokentype.EOS_TOK then
         throw ParserException with "garbage at the end of file";
      end if;
      
      return new program(blk);
   end parse;
     
   function getBlock() return Block is
   begin 
      blk : Block := new Block; 
      tok: token := getLookaheadToken();
      
      while isValidStartOfStatement(tok) loop
         stmt: statement := getStatement();
         blk.add(stmt);
         tok := getLookaheadToken();
      end loop
      return blk;
   end
     
   function getStatement() return Statement is
     begin 
        stmt : Statement;
        tok: token;
        tok := getLookaheadToken();
        if tok.getTokType() == tokentype.if_tok then 
            stmt := getIfStatement();
        elsif tok.getTokType() == tokentype.while_tok then 
            stmt := getWhileStatement();
        elsif tok.getTokType() == tokentype.print_tok then 
            stmt := getPrintStatement();
        elsif tok.getTokType() == tokentype.for_tok then 
            stmt := getForStatement();
        elsif tok.getTokType() == tokentype.id then 
            stmt := getAssignmentStatement();
        else
            raise new ParserException ("invalid statement at row " & tok.getRowNumber()  & " and column " & tok.getColumnNumber()); 
        return stmt;
   end
     
   function getAssignmentStatement() return Statement is
      var: Id := getId();
      tok: token := getNextToken();
      match (tok, tokentype.assignment_operator);
      expr: arithmetic_expression := new arithmetic_expression(getArithmeticExpression); 
      return new assignment_statement (var, expr); 
      
   end getAssignmentStatement;
     
   function getPrintStatement() return Statement is
        tok: token := getNextToken();
        match (tok, tokentype.print_tok);
        tok := getNextToken;
        match (tok, tokentype.left_parent);
        expr : arithmetic_expression; 
        expr := getArithmeticExpression; 
        tok := getNextToken;
        match (tok, tokentype.right_parent); 
        return new print_statement(expr);
   end getPrintStatement;
      
   function getWhileStatement() return Statement is
   begin 
      tok: token := getNextToken;
      match (tok, tokentype.while_tok);
      expr: boolean_expression := getBooleanExpression;
      blk: block := getBlock;
      tok := getNextToken;
      match (tok, tokentype.end_tok);
      return new while_statement (expr, blk);
   end getWhileStatement;
    
   function getForStatement() return Statement is
        tok: token := getNextToken();
        match (tok, tokentype.for_tok); 
        blk: block := getBlock();
        tok := getNextToken();
        match (tok, tokentype.colon_tok);
        expr: boolean_expression := getBooleanExpression();
        match (tok, tokentype.end_tok);
        return new for_statement (expr, blk);
   end getForStatement;
      
   function getIfStatement() return Statement is 
        tok: token := getNextToken;
        match (tok, tokentype.if_tok); 
        expr: boolean_expression := getBooleanExpression;
        blk1: block := getBlock;
        tok := getNextToken;
        match (tok, tokentype.else_tok);
        blk2: Block := getBlock;
        tok := getNextToken;
        match (tok, tokentype.end_tok); 
        return new if_statement (expr, blk1, blk2);
   end getIfStatement;
      
   function isValidStartofStatement(tok: in token) return Boolean is
   begin 
      if(tok is not null)
         raise IllegalArgumentException;
      end if;
      
      return tok.getTokType = tokentype.id or
        tok.getTokType = tokentype.if_tok or
        tok.getTokType = tokentype.while_tok or
        tok.getTokType = tokentype.print_tok or
        tok.getTokType = tokentype.for_tok;
   end isValidStartofStatement;
                
   function getArithmeticExpression() return arithmetic_operator is
   begin 
      expr: arithmetic_expression;
      tok: token := getLookaheadToken;
      if tok.getTokType = tokentype.id then 
            expr := getId();
      elsif tok.getTokType() = tokentype.literal_integer then 
            expr := getLiteralInteger();
      else
         expr := getBinaryExpression;
      end if; 
      
      return expr;
      
    end getArithmeticExpression;
      
  procedure getBinaryExpression() return Binary_expression is
  begin 
      op: arithmetic_operator := getArithmeticOperator;
      expr1: arithmetic_expression := getArithmeticExpression;
      expr2: arithmetic_expression := getArithmeticExpression;
      return new Binary_expression (op, expr1, expr2);
  end getBinaryExpression;
  
   function getArithmeticOperator() return arithmetic_oerator is
   begin 
        op: arithmetic_operator;
        tok: token;
        tok := getNextToken();
        if tok.getTokType() == tokentype.add_operator then //TODO
            op := arithmetic_operator.add_operator;
        elsif tok.getTokType() == tokentype.sub_operator then //TODO
            op := arithmetic_operator.sub_operator;
        elsif tok.getTokType() == tokentype.mul_operator then //TODO
            op := arithmetic_operator.mul_operator;
        elsif tok.getTokType() == tokentype.div_operator then //TODO
            op := arithmetic_operator.div_operator;
        else
            throw new ParserException ("arithmetic operator expected at row " &
                    tok.getRowNumber()  & " and column " & tok.getColumnNumber());
        return op;
  end getArithmeticOperator;
      
  function getLiteralInteger() return literal_integer is
        op: arithmetic_operator;
        tok: token := getLookaheadToken();
        if tok.getTokType() /= tokentype.literal_integer then 
           raise ParserException with "literal integer expected at row " &
              Ada.Characters.Handling.To_String(tok.getRowNumber) & 
              " and column " +  Ada.Characters.Handling.To_String(tok.getColumnNumber);
        
        end if;
         
        value: Integer := Integer'Value(tok.getLexeme);
         
        return new literal_integer(value);
   end getLiteralInteger;
   
   function getId() return Id is
       tok: token := tok.getNextToken; 
         if tok.getTokType /= tokentype.id then
            raise ParserException with "identifier expected at row " &
                    Ada.Characters.Handling.To_String(tok.getRowNumber)  & " and column " & Ada.Characters.Handling.To_String(tok.getColumnNumber);
         end if;
         lexeme: String := tok.getLexeme;
  return new id(lexeme(0));
         
  end getLiteralInteger;
      
  function getBooleanExpression() return Booleam_expression is
  begin 
      op: Relative_op := getRelativeOperator();
      expr1 : Arithmetic_expression := getArithmeticExpression;
      expr2 : Arithmetic_expression := getArithmeticExpression;
  return new boolean_expression(op,expr1,expr2);
  end getBooleanExpression;
      
  function getRelationalOperator() return Relative_op is
         begin 
              op: Relative_op;
              tok: token := getNextToken;
         if tok.getTokType = tonketype.eq_operator then 
            op = relative_op.eq_operator;
         elsif tok.getTokType = tonketype.ne_operator then  
            op = relative_op.ne_operator;
         elsif tok.getTokType = tonketype.gt_operator then
            op = relative_op.gt_operator;
         elsif tok.getTokType = tokentype.ge_operator then  
            op = relative_op.ge_operator;
         elsif tok.getTokType = tokentype.lt_operator then  
             op = relative_op.lt_operator;
         elsif tok.getTokType = tokentype.le_operator then  //TODO
             op = relative_op.le_operator;
         else
             raise ParserException with "relational operator expected at row " +
                    Ada.Characters.Handling.To_String(tok.getRowNumber)  & " and column " & Ada.Characters.Handling.To_String(tok.getColumnNumber);
         end if;
        
         return op;
           
   end getRelationalOperator;
   
   procedure match(tok: in Token, tokType: in tokentype) is
         if tok is null then
            raise IllegalArgumentException with "no token";
         elsif tokType is null then
            raise IllegalArgumentException with "token type cannot be null";
         end if;
         if tok.getTokType /= tokType then
            raise ParserException with Ada.Characters.Handling.To_String(tokType) & " expected at row " & 
              Ada.Characters.Handling.To_String(tok.getRowNumber) & " and column " & Ada.Characters.Handling.To_String(tok.getColumnNumber);
         end if;
   end match;
      
   function getLookaheadToken() return token is
       tok: token := null;
       if tok.getNextToken is null then
          raise ParserException with "no more tokens";
       end if;         
   end getLookaheadToken;
            
   function getNextToken() return token is
      tok: token := null;
      if lex.getNextToken is null then
         raise ParserException with "no more tokens";
      else          
         tok := lex.getNextToken;    
      end if;
      return tok;          
   end getNextToken
                 
end parser;
