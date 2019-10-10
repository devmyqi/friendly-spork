/*	meta information
	filename: sql/insert-data.sql
	description: bookdb data entries definition
	version: v0.0.1
	author: Michael Wronna, Konstanz
	created: 2019-10-10
	modified: 2019-10-10
*/

-- fix that damn character encoding problem
SET character_set_client = 'utf8';

USE bookdb;

-- delete exisiting data
TRUNCATE books;

-- table books (Bücher)
INSERT INTO books (title,author,pages) VALUES
	('Datenbanken & SQL für Einsteiger','Marco Emrich',206)
;
-- get last book id
SET @last_book_id = LAST_INSERT_ID();

-- update version and publisher
UPDATE books SET version = '3.8.0', publisher = 'Webmasters Press' WHERE id = @last_book_id;

-- table exercises (Übungen)

-- delete exisiting data
TRUNCATE exercises;

-- insert the data
INSERT INTO exercises (book_id,number,chapter,page) VALUES
	(@last_book_id,1,3,28),
	(@last_book_id,2,3,29),
	(@last_book_id,3,3,29),
	(@last_book_id,4,3,30),
	(@last_book_id,5,3,31),
	(@last_book_id,6,3,31),
	(@last_book_id,7,3,32),
	(@last_book_id,8,3,34),
	(@last_book_id,9,3,35),
	(@last_book_id,10,3,35),
	(@last_book_id,11,4,42),
	(@last_book_id,12,4,43),
	(@last_book_id,13,5,48),
	(@last_book_id,14,5,48),
	(@last_book_id,15,5,48),
	(@last_book_id,16,5,49),
	(@last_book_id,17,5,49),
	(@last_book_id,18,5,49),
	(@last_book_id,19,6,55),
	(@last_book_id,20,6,55),
	(@last_book_id,21,6,55),
	(@last_book_id,22,7,62),
	(@last_book_id,23,7,63),
	(@last_book_id,24,7,63),
	(@last_book_id,25,7,63),
	(@last_book_id,26,8,69),
	(@last_book_id,27,8,69),
	(@last_book_id,28,8,69),
	(@last_book_id,29,8,70),
	(@last_book_id,30,8,70),
	(@last_book_id,31,8,70),
	(@last_book_id,32,9,76),
	(@last_book_id,33,9,76),
	(@last_book_id,34,9,76),
	(@last_book_id,35,9,77),
	(@last_book_id,36,9,77),
	(@last_book_id,37,9,77),
	(@last_book_id,38,9,77),
	(@last_book_id,39,10,81),
	(@last_book_id,40,10,81),
	(@last_book_id,41,10,81),
	(@last_book_id,42,10,82),
	(@last_book_id,43,10,82),
	(@last_book_id,44,11,92),
	(@last_book_id,45,11,92),
	(@last_book_id,46,11,92),
	(@last_book_id,47,11,92),
	(@last_book_id,48,11,92),
	(@last_book_id,49,12,98),
	(@last_book_id,50,12,98),
	(@last_book_id,51,12,98),
	(@last_book_id,52,12,99),
	(@last_book_id,53,13,105),
	(@last_book_id,54,13,105),
	(@last_book_id,55,13,106),
	(@last_book_id,56,13,106),
	(@last_book_id,57,13,106),
	(@last_book_id,58,14,110),
	(@last_book_id,59,14,110),
	(@last_book_id,60,14,111),
	(@last_book_id,61,15,119),
	(@last_book_id,62,15,119),
	(@last_book_id,63,16,129),
	(@last_book_id,64,16,130),
	(@last_book_id,65,16,130),
	(@last_book_id,66,16,130),
	(@last_book_id,67,17,133),
	(@last_book_id,68,18,137),
	(@last_book_id,69,18,137),
	(@last_book_id,70,18,137),
	(@last_book_id,71,19,143),
	(@last_book_id,72,19,143),
	(@last_book_id,73,20,150),
	(@last_book_id,74,20,150),
	(@last_book_id,75,20,150),
	(@last_book_id,76,20,150),
	(@last_book_id,77,21,154),
	(@last_book_id,78,21,154),
	(@last_book_id,79,22,160),
	(@last_book_id,80,22,160),
	(@last_book_id,81,23,166),
	(@last_book_id,82,23,166),
	(@last_book_id,83,23,167),
	(@last_book_id,84,23,167),
	(@last_book_id,85,23,167)
;

-- table questions (Lernkontrolle)

-- delete exisiting data
TRUNCATE questions;

-- insert the data
INSERT INTO questions (book_id,chapter,page) VALUES
	(@last_book_id,2,25),
	(@last_book_id,3,34),
	(@last_book_id,4,42),
	(@last_book_id,6,54),
	(@last_book_id,7,62),
	(@last_book_id,8,68),
	(@last_book_id,9,76),
	(@last_book_id,10,80),
	(@last_book_id,11,91),
	(@last_book_id,12,97),
	(@last_book_id,13,105),
	(@last_book_id,15,119),
	(@last_book_id,16,129),
	(@last_book_id,17,133),
	(@last_book_id,18,137),
	(@last_book_id,19,142),
	(@last_book_id,20,149),
	(@last_book_id,21,154),
	(@last_book_id,22,159),
	(@last_book_id,23,166)
;
