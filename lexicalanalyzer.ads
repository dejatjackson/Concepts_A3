with token; use token;

package lexicalAnalyzer is
   
   type tArray is array (Positive range <>) of token with private;
   
   ParserException, LexicalException, IllegalArgumentException, FileNotFoundException: exception;
   
   procedure create_lexAnalyzer (fileName: in String);
   
   procedure processline(line: in String, lineNumber: in Integer) with private;
   
   function getTokType(lexeme: in String, rowNumber: in Integer, columnNumber: in Integer) return tokentype with private;
   
   function allDigits(lexeme: in String) return Boolean with private;
   
   function getLexeme(line: in String, index: in Integer) return String with private;
   
   function skipWhiteSpace(line: String, index: Integer) return Integer with private;
   
   function getLookaheadToken() return token;
   
   function getNextToken() return token;
   
   function getTokenType(lexeme: in String, rowNumber: in Integer, columnNumber: in Integer) return tokentype with private;
   
   function getForExpression() return tArray;
   
   function isValidIdentifier(ch: in Character) return boolean with private;
   
   type LA is
      record
         fileName: String;
      end record;
   

end lexicalAnalyzer;
