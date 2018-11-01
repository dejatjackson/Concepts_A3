with Ada.Characters.Handling; use Ada.Characters.Handling
  
package body BinaryExpression is
   
   function Binary_Expression(op: in arithmetic_operator, expr1: in arithmetic_expression, epr2: in arithmetic_expression) return Binary_Expression is 
     
      BE: Binary_Expression;
      
   begin
      
      if(op == null)
        
      BE.op := op;
      BE.expr1 := expr1;
      BE.expr2 := expr2;
      return BE;
    end Binary_Expression;

  function Day (D: in Date) return Day_Num is
  
    begin
      return D.D;
    end Day;

  function Month (D: in Date) return Month_Num is
  
    begin
      return D.M;
    end Month;

  function Year (D: in Date) return Year_Num is
  
    begin
      return D.Y;
    end Year;
      
        
   
end BinaryExpression;
