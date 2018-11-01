with Ada.Characters.Handling; use Ada.Characters.Handling
  
package body BinaryExpression is
   
   function Binary_Expression(op: in arithmetic_operator, expr1: in arithmetic_expression, epr2: in arithmetic_expression) return Binary_Expression is 
     
      BE: Binary_Expression;
      
   begin
      
      if op == null then
         raise Data_Error => Put("Arithmetic Operator is null");
      elsif expr1 == null || expr2 == null then
         raise Data_Error => Put("Arithmetic Expression is null");
      end if
           
      BE.op := op;
      BE.expr1 := expr1;
      BE.expr2 := expr2;
      return BE;
    end Binary_Expression;
  
  overriding
  function evaluate () return integer is
  
    begin
      value: integer;
      if BE.op == arithmetic_operator.add_op then
         value := BE.expr1.evaluate() + BE.expr2.evaluate();
      elsif BE.op == arithmetic_operator.mul_op then
         value := BE.expr1.evaluate() * BE.expr2.evaluate();
      elsif BE.op == arithmetic_operator.div_op then
         value := BE.expr1.evaluate() / BE.expr2.evaluate();
      elsif BE.op == arithmetic_operator.sub_op then
         value := BE.expr1.evaluate() - BE.expr2.evaluate();
      end evaluate;   
      
end BinaryExpression;
