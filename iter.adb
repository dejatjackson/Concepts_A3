with token  use token;

package body iter is
   function getCurrent(index: in Integer, tokens: in tokenArray) return token is 
   begin
      if tokens(0) is null then
            raise Data_Error;
         else
            return tokens(index);
         end else;
         
      end if;
           
   end getCurrent;
       
   function getLast(index: in Integer, tokens: in tokenArray) return token is
   
   begin
      if tokens(0) is null then
            raise Data_Error;
         end if;
         
         index:= index - 1;
         
      if tokens(index) is null then
            raise Data_Error;
         end if;
         
      else
         return tokens(index);
         end else;
      end if;
               
   end getLast;
   
   function getNext(index: Integer, tokens: in tokenArray) return token is
   
   begin
      index := index + 1;
      
      if tokens(index) is null then 
               raise Data_Error;
         end if;
            
      return tokens(index);
   end getNext;
   

end iter;
