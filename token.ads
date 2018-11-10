package token is

   type tkn is private;
   
   subtype tokentype; //TODO
   subtype String; //TODO
   subtype int; //TODO
   
   function create_token(Tk: in tokentype, l: in String, rN: in int, cN: in int) return tkn
   function getTokType(T: in tkn) return tokentype;
   function getLexeme(T: in tkn) return String;
   function getRowNumber(T: in tkn) return int;
   function getColNumber(T: in tkn) return int;
   function toString(T: in tkn) return String;
   
   private
   type tkn is 
      record
         Tk:tokentype;
         l: String;
         rN: int;
         cN: int;
      end record

end token;