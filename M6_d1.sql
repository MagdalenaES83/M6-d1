

---------- Create Authors Table -----------------------


DROP TABLE IF EXISTS public.authors;
CREATE TABLE IF NOT EXISTS
		authors(	author_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
				name VARCHAR (20) NOT NULL,
				last_name VARCHAR (20) NOT NULL, 				
				birth_year VARCHAR (4) NOT NULL,
				country VARCHAR (20) NOT NULL
		);
DROP TABLE IF EXISTS public.books;


---------- Create Books Table -----------------------
CREATE TABLE
	IF NOT EXISTS
		books(	
				book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
				name VARCHAR (55) NOT NULL,
				category VARCHAR (20) NOT NULL,
				author_id VARCHAR (20) NOT NULL,
				created_at TIMESTAMP DEFAULT NOW(),
				updated_at TIMESTAMP DEFAULT NOW()
				cover VARCHAR NOT NULL,
				published_at VARCHAR (4) NOT NULL,	
		);



---------------- Insert Authors --------------------
INSERT INTO authors(name,last_name,birth_year,country) VALUES

"Agatha"	"Criestie"	"1905"	"England"
"Terry"	"Pratchett"	"1948"	"England"
"Neil"	"Gaiman"	"1960"	"England"
"Stephen"	"King"	"1947"	"USA"
"George R.R."	"Martin"	"1948"	"USA"
"J.K."	"Rowling"	"1965"	"England"
"Hans"	"Rosling"	"1948"	"Sweden"
"James"	"Patterson"	"1947"	"USA"



------------------Insert Books ---------------------------
INSERT INTO books(	
name,
category, 
author_id, 
cover, 
published_at
) VALUES

("Death in the Clouds"	"crime"	"2"	"1935"	"https://upload.wikimedia.org/wikipedia/en/8/81/Death_in_the_Clouds_US_First_Edition_cover_1935.jpg"
"Death on the Nile"	"crime"	"2"	"1937"	"https://upload.wikimedia.org/wikipedia/en/9/96/Death_on_the_Nile_First_Edition_Cover_1937.jpg"
"A Pocket Full of Rye"	"crime"	"2"	"1953"	"https://upload.wikimedia.org/wikipedia/en/5/57/A_Pocket_Full_of_Rye_First_Edition_Cover_1953.jpg"
"Good Omens"	"fantasy"	"3"	"1980"	"https://upload.wikimedia.org/wikipedia/en/0/0a/Goodomenscover.jpg"
"Moving Pictures"	"fantasy"	"3"	"1990"	"https://upload.wikimedia.org/wikipedia/en/1/18/Moving-pictures-cover.jpg"
"The Science of Discworld III: Darwins Watchs"	"fantasy"	"3"	"2005"	"https://upload.wikimedia.org/wikipedia/en/b/bd/TheScienceOfDiscworld3.jpg"
"American Godss"	"fantasy"	"4"	"2001"	"https://upload.wikimedia.org/wikipedia/en/4/49/American_gods.jpg"
"Neverwhere"	"fantasy"	"4"	"1996"	"https://upload.wikimedia.org/wikipedia/en/thumb/1/13/Neverwhere.jpg/220px-Neverwhere.jpg"
"Stardust"	"fantasy"	"4"	"1999"	"https://upload.wikimedia.org/wikipedia/en/e/e1/StardustGaimanbookcover.jpg"
"Carrie"	"horror"	"5"	"1974"	"https://upload.wikimedia.org/wikipedia/en/3/31/Carrienovel.jpg"
"The Long Walk"	"horror"	"5"	"1979"	"https://upload.wikimedia.org/wikipedia/en/c/ca/Bachman%2C_Long_Walk.jpg"
"The Stand"	"horror"	"5"	"1978"	"https://upload.wikimedia.org/wikipedia/en/9/96/The_Stand_cover.jpg"
"A Game of Thrones"	"fantasy"	"6"	"1996"	"https://upload.wikimedia.org/wikipedia/en/9/93/AGameOfThrones.jpg"
"A Clash of Kings"	"fantasy"	"6"	"1998"	"https://upload.wikimedia.org/wikipedia/en/3/39/AClashOfKings.jpg"
"A Storm of Swords"	"fantasy"	"6"	"2000"	"https://upload.wikimedia.org/wikipedia/en/thumb/2/24/AStormOfSwords.jpg/220px-AStormOfSwords.jpg"
"Harry Potter and the Philosophers Stone"	"fantasy"	"7"	"1997"	"https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg/220px-Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg"
"Harry Potter and the Chamber of Secrets"	"fantasy"	"7"	"1998"	"https://upload.wikimedia.org/wikipedia/en/thumb/5/5c/Harry_Potter_and_the_Chamber_of_Secrets.jpg/220px-Harry_Potter_and_the_Chamber_of_Secrets.jpg"
"Harry Potter and the Prisoner of Azkaban"	"fantasy"	"7"	"1999"	"https://upload.wikimedia.org/wikipedia/en/thumb/a/a0/Harry_Potter_and_the_Prisoner_of_Azkaban.jpg/220px-Harry_Potter_and_the_Prisoner_of_Azkaban.jpg"
"Factfulness: Ten Reasons ..."	"non-fiction"	"8"	"2018"	"https://upload.wikimedia.org/wikipedia/en/b/b2/Factfulness_Ten_Reasons_We%27re_Wrong_About_the_World--and_Why_Things_Are_Better_Than_You_Think.jpg"
"The Big Bad Wolf"	"crime"	"9"	"2003"	"https://upload.wikimedia.org/wikipedia/en/0/09/The_Big_Bad_Wolf_%28novel%29.jpg"
"Roses Are Red"	"crime"	"9"	"2000"	"https://upload.wikimedia.org/wikipedia/en/1/1c/Roses_Are_Red_%28novel%29.jpg"
"Violets Are Blue"	"crime"	"9"	"2000"	"https://upload.wikimedia.org/wikipedia/en/d/d8/VioletsAreBlueNovel.jpg")




---------- Add 5 Agatha Cristie books, Query to update author birth_year for given author id -----------------

UPDATE authors SET INSERT INTO books(name,category, cover, published_at) 

VALUES(
("Peril at End House"	"1932"	"https://upload.wikimedia.org/wikipedia/en/1/1a/Peril_at_End_House_US_First_Edition_Cover.jpg"
"Why Didn't They Ask Evans?"	"crime"		"1934"	"https://upload.wikimedia.org/wikipedia/en/f/f7/Why_Didn%27t_They_Ask_Evans_First_Edition_Cover_1934.jpg"
"Cards on the table"	"crime"		"1936"	"https://upload.wikimedia.org/wikipedia/en/1/14/Cards_on_the_Table_First_Edition_Cover_1936.jpg")

WHERE birth_year='1905' RETURNING *


------------------------------ Update query to update books cover for given book id ----------------------------
UPDATE public.books 
	set cover = 'https://upload.wikimedia.org/wikipedia/en/1/14/Cards_on_the_Table_First_Edition_Cover_1936.jpg' 
WHERE  book_id = 6  RETURNING *




------------------------------Update query to update authors birth year ------------------------------------------

UPDATE public.authors   	set birth_year ='1890'   WHERE   author_id = 2     RETURNING *



------------------------------Update query to update authors last_name  ------------------------------------------
UPDATE public.authors   	set last_name ='Christie'   WHERE   author_id = 2     RETURNING *



------------------------------Select books from a category -----------------------------------------------------
SELECT * FROM public.books	WHERE  category     LIKE     'crime'



-----------------------------Select books which start with a letter ----------------------------------------------
SELECT * FROM public.books	WHERE name LIKE 'A%'



-----------------------------Select books which include a  word  ------------ -----------------------------------
SELECT * FROM public.books 	WHERE name LIKE '%The%'



-----------------------------Select authors which are “not” older than 60 years () -------------------------------------
SELECT *  FROM public.authors 	WHERE (EXTRACT(YEAR FROM - birth_year) < 60



----------------------------Select authors which are  older than 40 years old ------------------------------------------
SELECT *  FROM public.authors 	WHERE (EXTRACT(YEAR FROM - birth_year) > 40



----------------------------Select only category,published_at from books --------------------------------------------------
SELECT category, published_at  FROM public.books



---------------------------------Count all books ---------------------------------------------------------------
SELECT COUNT(*) FROM public.books



----------------------------------Select authors and order them by birth_year desc ---------------------------------
SELECT * FROM public.authors 	ORDER BY birth_year DESC














----------------Select authors and order them by age (calculate age in SQL, search about it 🤓) ASC ----------------
SELECT * FROM public.authors 	ORDER BY (EXTRACT(2021 - birth_year) ASC








-----------------Delete all the authors from a given country -------------------------------------------------

DELETE FROM public.authors WHERE country LIKE 'Sweden'



-----------------Delete all the books from a given category-----------------------------------------
DELETE FROM public.books WHERE category LIKE 'fantasy'



-----------------Delete all authors if their last_name starts with H------------------------------------
DELETE FROM public.authors  WHERE last_name LIKE 'E%,'


