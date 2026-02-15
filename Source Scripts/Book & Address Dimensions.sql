
use gravity_books

-- Dim_address

select a.address_id,a.street_number,a.street_name,a.city , c.country_name
from dbo.address a join country c
on a.country_id = c.country_id



-- Dim_book

select b.book_id, b.isbn13, b.num_pages, b.publication_date, b.title, p.publisher_name, l.language_name, l.language_code
from book b join publisher p
on b.publisher_id = p.publisher_id
join book_language l
on l.language_id = b.language_id