package binary_expression is
   
   ParserException, LexicalExcpetion, IllegalArgumentException, FileNotFoundException: exception;

   type BE is private;
   
   function binary_eexpression (op: in arithmetic_operator; expr1: in arithmetic_expression; expr2: in arithmetic_expression)
                      return BE;
   function evaluate () return integer;
   
private
   type BE is
      record
         op: arithmetic_operator;
         expr1: arithmetic_expression;
         expr2: arithmetic_expression;
      end record

end binary_expression;
