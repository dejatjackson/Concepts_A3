package memory is

   subtype mem is Integer range 1 .. 52 is private;
   
   Subtype Lowercase is Character 'a'..'z';
   
   procedure store (ch: in Character, value: in Integer, mem(indexOf(ch)): out Integer) is;
   
   function indexOf (ch: Character) return Integer is private;
   
   function fetch (ch: Character) return Integer is private;
     
     

end memory;
