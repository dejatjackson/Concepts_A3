with tokentype;

package token is

   type tkn is private;
   
   subtype tokType is tokentype with private; 
   subtype lexeme is String with private ; 
   subtype rN is Integer with private; 
   subtype cN is Integer with private; 
   
   function create_token(Tk: in tokType, l: in lexeme, rN: in int, cN: in int) return token;
   function getTokType(T: in tkn) return tokentype;
   function getLexeme(T: in tkn) return String;
   function getRowNumber(T: in tkn) return Integer;
   function getColNumber(T: in tkn) return Integer;
   function toString(T: in tkn) return String;
   
   private
   type tkn is 
      record
         Tk: tokType;
         l: lexeme;
         rN: Integer;
         cN: Integer;
      end record;

end token;
