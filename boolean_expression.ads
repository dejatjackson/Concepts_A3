package boolean_expression is

   type BE is private;
   
   ParserException, LexicalExcpetion, IllegalArgumentException, FileNotFoundException: exception;

   function Binary_Expression (op: in relative_op; expr1: in arithmetic_expression; expr2: in arithmetic_expression)
                      return BE;
   function evaluate () return Boolean;
   
private
   type BE is
      record
         op: relative_op;
         expr1: arithmetic_expression;
         expr2: arithmetic_expression;
      end record

end boolean_expression;
