with memory; use memory;

with lexicalAnalyzer; use lexicalAnalyzer;
package body Id is
   begin 

   function create_Id(C: in char) return Id_Char is
    
      I: Id_Char;
      
    begin
      if lexicalAnalyzer.isValidIdentifier(C) is False then
         raise IllegalArgumentException with "character is not a valid identifier";
      end if;
         I = C;
         
    return I;
         
    end create_Id;
   
   
    function excecute() return Integer is
     begin 
      return memory.fetch(I);
     end execute;
   
    function getChar() return Character is
    begin 
      return I;
    end getChar;
   
end Id;
