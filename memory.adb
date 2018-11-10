
package body memory is
begin
   
   procedure store(ch: in Character, value: in Integer, mem[indexOf(ch)]: out Integer) is
   
   begin
      mem[indexOf(ch)] := value;
   end store;
   
   function indexOf(ch: in Character) return Integer is
   begin
      if !Ada.Characters.Handling.Is_Letter(ch) then
         raise Data_Error;
      end if;
      
      index: Integer;
      
      if Ada.Characters.Handling.Is_Lower(ch) then
         index := ch - 'a';
      else
         index := 26 + ch - 'A';
      end if;
      
   end indexOf;
   
   function fetch(ch: Character) return Integer is
   begin
      return mem[indexOf(ch)];
   end fetch;
   
end memory;
