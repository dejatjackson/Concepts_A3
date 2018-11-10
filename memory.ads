package memory is

   subtype mem is Integer range 1 .. 52 with private;
   
   Subtype Lowercase is Character 'a'..'z';
   
   procedure store(ch: in Character, value: in Integer, mem(indexOf(ch)): out Integer);
   
   function indexOf (ch: Character) return Integer with private;
   
   function fetch (ch: Character) return Integer with private;

end memory;
