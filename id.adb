package body Id is
function create_Id(C: in char) return Id_Char is
    
      I: Id_Char;
      
    begin
      if(LexicalAnalyzer.isValidIdentifier(ltr)) //TODO
        //TODO
         I.id = ltr;
     return I;
    end create_Id;
   
   
    function excecute(I: in Id_Char) return int is
     begin 
      return Memory.fetch(id);
     end execute;
   
    function getChar(I: in Id_Char) return char is
    begin 
      return id;
     end getChar;
   
end Id;
