with Ada.Text_IO;  use Ada.Text_IO;

package body lexicalAnalyzer is

   procedure create_lexAnalyzer(fileName: in String) is
      tokens: tArray;
      file: File_Type;
      line: String;
      lineNumber: Integer;
      lineNumber := 0;
      
      if fileName is null then
            raise IllegalArgumentException with "null file name argument";
      end if;
         
      begin
         Open (file => file,
               Mode => In_File,
               Name => fileName);
         
         while not End_Of_File(file) loop
            line = Get_Line(file);
            lineNumber += 1;
            processline(line, lineNumber);
         end loop;
         
         Close (file);
         
   end create_lexAnalyzer;
     
   procedure processline() //TODo
   begin 
      //TODO
   end
   function getTokenType(//TODO) return tokentype is
   begin 
      //TODO
   end   
   function allDigits(//TODO) return boolean is
   begin 
      //TODO
   end 
   function getLexeme(//TODO) return string is
   begin 
      //TODO
   end  
   function skipWhiteSpace(//TODO) return int is
   begin 
      //TODO
   end   
   function getLookaheadToken(//TODO) return token is
   begin 
      //TODO
   end  
   function getNextToken(//TODO) return token is 
   begin 
      if //TODO then 
         //TODO
      return tokens.remove(0);

   end function getForExpression() //TODO
   begin 
      //TODO
   end function isValidIdentifier() //TODO
   begin 
      //TODO
   end 
end lexicalAnalyzer;
