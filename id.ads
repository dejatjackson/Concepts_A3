package Id is
   
   type Id_Char is private;
   
   subtype char; //TODO

   
   function create_Id(C: in char) return Id_Char;
   function excecute(I: in Id_Char) return int;
   function getChar(I: in Id_Char) return char;
   
   private
   type Id_Char is
      record
         C: char;
      end record;

end Id;
