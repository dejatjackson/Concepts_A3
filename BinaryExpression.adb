with Ada.Characters.Handling; use Ada.Characters.Handling
  
package body BinaryExpression is

   function new_book(author: in String; title: in String; pages: in PAGES) is
      
      b: B1;
   begin
      b.author (1 .. author.length) := author;
      b.title (1 .. title.length) := title;
      b.pages := pages;
      
      return b;
   end new_book;
   
   function get_author(a: in B1) return String is
      return a.author;
   end get_author;
   
   function get_title(a: in B1) return String is
      return a.title;
   end get_title;
   
   function get_pages(a: in B1) return PAGES is
      return a.pages;
   end get_pages;
   
   
end book;
