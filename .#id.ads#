package Id is
   
   type Id_Char is private;
   
   subtype char is Character with private;

   
   function create_Id(C: in char) return Id_Char;
   function excecute(I: in Id_Char) return Integer;
   function getChar(I: in Id_Char) return Character;
   
   private
   type Id_Char is
      record
         C: Charcter;
      end record;

end Id;
