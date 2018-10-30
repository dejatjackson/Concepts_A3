package book is

   type B1 is private;
   
   MAX_PAGES_SIZE: constant Positive := 10000;
   
   type PAGES is new Positive range 1 .. MAX_PAGES_SIZE;
   function new_book (author: in String; title: in String; pages: in PAGES)
                      return B1;
   function get_author (a: in B1) return String;
   
   function get_title (a: in B1) return String;
   
   function get_pages (a: in B1) return PAGES;
   
private
   type B1 is
      record
         author: String (1 .. author.length);
         title: String (1 .. title.length);
         pages: PAGES;
      end record

end book;
