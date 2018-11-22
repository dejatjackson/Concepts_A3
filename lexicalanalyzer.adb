with Ada.Text_IO;  use Ada.Text_IO;
with tokentype; use tokentype;


package body lexicalAnalyzer is
   
   tokens: tArray;
   
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
         tk: token;
         tokens.add(tk(tokentype.EOS_TOK, "EOS", lineNumber, 1));
         
   end create_lexAnalyzer;
     
   procedure processline(line: in String, lineNumber: in Integer) is
         if line is null then 
               raise IllegalArgumentException with "null line argument";
         end if;
            
         if lineNumber <= 0 then
               raise IllegalArgumentException with "invalid line number argument";
         end if;
         
         index: Integer;
         index := skipWhiteSpace(line, 0);
         
         while index < line'Length loop
               lexeme: String;
               lexeme := getLexeme(line, index);
               tokType: tokentype;
               tokType := getTokenType(lexeme, lineNumber, index + 1);
               tk: token
               tokens.add(tk(tokType, lexeme, lineNUmber, index + 1));
               index := index + lexeme'Length;
               index := skipWhiteSpace(line, index);
         end loop;
            
   end processline;
         
   function getTokType(lexeme: in String, rowNumber: in Integer, columnNumber: in Integer) return tokentype is
   begin 
         if lexeme is null or lexeme'Length is 0 then
              raise IllegalArgumentException with "invalid string argument";    
         end if;
         tokType: tokentype;
         tokType := tokentype.EOS_TOK;
                  
         if Ada.Characters.Handling.Is_Digit(lexeme(0)) then
              if allDigits(lexeme) then
                   tokType := tokentype.literal_integer;
                   else
                        raise LexicalException with "literal integer expected " & " at row " &
                          Ada.Characters.Handling.To_String(rowNumber)  & " and column " Ada.Characters.Handling.To_String(columnNumber);
                        
              elsif Ada.Characters.Handling.Is_Letter(lexeme(0)) then
                   if lexeme'Length is 1  and isValidIdentifier(lexeme(0)) then
                        tokType := tokentype.id;
                   elsif lexeme = "function" then 
                        tokType := tokentype.function_tok;
                   elsif lexeme = "end" then
                         tokType := tokentype.end_tok;
                   elsif lexeme = "if" then
                         tokType := tokentype.if_tok;
                   elsif lexeme = "else" then
                         tokType := tokentype.else_tok;
                   elsif lexeme = "print" then
                         tokType := tokentype.print_tok;
                   elsif lexeme = "while" then     
                         tokType := tokentype.while_tok;
                   elsif lexeme = "for" then
                         tokType := tokentype.for_tok;
                   else
                         raise LexicalException with "invalid lexeme " & " at row " &
                          Ada.Characters.Handling.To_String(rowNumber)  & " and column " Ada.Characters.Handling.To_String(columnNumber); 
                   end if;  
              
              elsif isValidIdentifier(lexeme(0)) then    
                   tokType := tokentype.id;
              elsif lexeme = ">=" then
                   tokType := tokentype.ge_operator;
              elsif lexeme = ">" then
                   tokType := tokentype.gt_operator;
              elsif lexeme = "<=" then
                   tokType := tokentype.le_operator;
              elsif lexeme = "<" then
                   tokType := tokentype.lt_operator;
              elsif lexeme = "!=" then
                   tokType := tokentype.ne_operator;
              elsif lexeme = "==" then
                   tokType := tokentype.eq_operator;
              elsif lexeme = "%" then
                   tokType := tokentype.mod_operator;
              elsif lexeme = "^" then
                   tokType := tokentype.exp_operator;
              elsif lexeme = "+" then
                   tokType := tokentype.add_operator;
              elsif lexeme = "-" then
                   tokType := tokentype.sub_operator;
              elsif lexeme = "*" then
                   tokType := tokentype.mul_operator;
              elsif lexeme = "/" then
                   tokType := tokentype.div_operator;
              elsif lexeme = "=" then
                   tokType := tokentype.assignment_operator;
              elsif lexeme = "(" then 
                   tokType := tokentype.left_parent;
              elsif lexeme = ")" then
                   tokType := tokentype.right_parent;
              elsif lexeme = ":" then
                   tokType := tokentype.colon_tok;
                   
              else 
                   raise LexicalException with "invalid lexeme " & " at row " &
                          Ada.Characters.Handling.To_String(rowNumber)  & " and column " Ada.Characters.Handling.To_String(columnNumber);
                          
              end if;
              
         end if;
                
         return tokType;
   end getTokType; 
               
   function allDigits(lexeme: in String) return boolean is
   begin 
       if lexeme is null then
          raise IllegalArgumentException with "null string argument";
       end if;
                        
       i: Integer;
       i := 0;
       while i < lexeme'Length and Ada.Characters.Handling.Is_Digit(lexeme(0)) loop
          i := i + 1;               
       end loop;
                      
       return i = lexeme'Length; 
       
   end allDigits;
                 
   function getLexeme(line: in String, index: in Integer) return String is
   begin 
       if line is null then
          raise IllegalArgumentException with "null string argument";                    
       end if; 
       if index < 0 then
          raise IllegalArgumentException with "invalid index argument";                       
       end if;     
       i: Integer;
       while i < line'Length and line(index) = ' ' loop       
             i := i + 1;      
       end loop;                       
                        
       return line(index, i);
   end getLexeme;
   
   function skipWhiteSpace(line: in String, index: in Integer) return int is
   begin 
      while (index < line'Length and line(index) = ' ' loop
             index := index + 1;
      end loop;
   end skipWhiteSpace;  
             
   function getLookaheadToken() return token is
   begin 
      if tokens'Length = 0 then
             raise LexicalException with "no more tokens";
      end if;
      return tokens(0);   
   end getLookaheadToken;  
               
   function getNextToken() return token is 
   begin 
      if tokens'Length = 0 then 
             raise LexicalException with "There aren't any more tokens";
      end if;
      return tokens = tokens(1, tokens'Length);

   end getNextToken;
   
   function getForExpression() return tArray is //TODO
    
      for_tokens: tArray;
      for_tokens'Length = 3;
      i: Integer;
   
   begin        
      while i < for_tokens'Length - 1 loop 
             for_tokens(i) = tokens(i);
             i := i + 1;
             
      end loop;   
      
      return for_tokens;
                  
   end getForExpression;
             
   function isValidIdentifier(ch: Character) is
      if Ada.Characters.Handling.Is_Letter(ch) and Ada.Characters.Handling.Is_Lower(ch) then
             return True;
   end isValidIdentifier;
             
end lexicalAnalyzer;
