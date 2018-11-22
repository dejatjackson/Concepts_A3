with token; use token;

package body token is

   function create_token(Tk: in tokType, l: in lexeme, rN: in int, cN: in int) return token is
    
      TK: token;
      
    begin
      if Tk is null then
         raise IllegalArgumentException with "null token type argument";
      end if; 
      if l is null or l'Length = 0 then
         raise IllegalArgumentException with "invalid lexeme argument";
      end if;
            
            
      if rN <= 0 then 
         raise IllegalArgumentException with "invalid row number argument";
      end if;
            
      if cN <= 0 then
         raise IllegalArgumentException with "invalid column number argument";
      end if;
            
         TK.tokType := Tk;
         TK.lexeme := l;
         TK.rN := rN;
         TK.cN := cN; 
     return TK;
   end create_token;
     
     
     
   function getTokType(T: in tkn) return tokentype is
      begin
       return T.tokType;
   end getTokType;
         
   function getLexeme(T: in tkn) return String is
      begin
       return T.lexeme;
   end getLexeme;
         
   function getRowNumber(T: in tkn) return int is
      begin
       return T.rowNumber;
   end getRowNumber;
         
   function getColNumber(T: in tkn) return int is
      begin
       return T.colNumber;
   end getColNumber;
         
   function toString(T: in tkn) return String is
      begin
            return "Line Number: " & Ada.Characters.Handling.To_String(getRowNumber) & " Lexeme Value: " 
              & Ada.Characters.Handling.To_String(getLexeme) & "Token Type:" 
              & Ada.Characters.Handling.To_String(getTokType);
   end toString;
         
end token;
