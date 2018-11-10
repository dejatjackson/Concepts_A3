with token   use token;

package iter is

   type tokenArray is array (tokentype) of token;
   
   function getCurrent(index: in Integer, tokens: in tokenArray) return Integer;
   
   function getLast(index: in Integer, tokens: in tokenArray) return token;

end iter;
