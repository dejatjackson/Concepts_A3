package body token is

   function create_token(Tk: in tokentype, l: in String, rN: in int, cN: in int) return tkn is
    
      TK: tkn;
      
    begin
      if(tokType == null)
        //TODO
      if(lexeme == null || lexeme.length() == 0)
        //TODO
      if(rowNumber <= 0)
        //TODO
      if(colNumber <= 0)
        //TODO
         TK.tokType = tokType;
         TK.lexeme = lexeme;
         TK.rowNumber = rowNumber;
         TK.colNumber = colNumber; 
     return TK;
   end create_token
     
     
     
   function getTokType(T: in tkn) return tokentype is
      begin
       return tokType;
      end getRowNumber;
   function getLexeme(T: in tkn) return String is
      begin
       return lexeme;
      end getRowNumber;
   function getRowNumber(T: in tkn) return int is
      begin
       return rowNumber;
      end getRowNumber;
   function getColNumber(T: in tkn) return int is
      begin
       return colNumber;
      end getRowNumber;
   function toString(T: in tkn) return String is
      begin
       return "Line Number: " + getRowNumber()+ " Lexeme Value: " + getLexeme() + "Token Type:" + getTokType();
      end getRowNumber;
end token;
