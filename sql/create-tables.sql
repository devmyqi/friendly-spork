/*	meta information
	filename: sql/create-tables.sql
	description: bookdb tables definition
	version: v0.0.1
	author: Michael Wronna, Konstanz
	created: 2019-10-10
	modified: 2019-10-10
*/

-- fix that damn character encoding problem
SET character_set_client = 'utf8';

USE bookdb;

-- books (Bücher)
DROP TABLE IF EXISTS books;
CREATE TABLE books (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	title VARCHAR(63) NOT NULL,
	author VARCHAR(63) NOT NULL,
	pages INT NOT NULL,
	publisher VARCHAR(63),
	version VARCHAR(15),
	PRIMARY KEY (id)
);

-- exercises (Übungen)
DROP TABLE IF EXISTS exercises;
CREATE TABLE exercises (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	book_id INT UNSIGNED NOT NULL, -- foreign key
	number INT NOT NULL,
	chapter INT NOT NULL,
	page INT NOT NULL,
	topic VARCHAR(63),
	notes VARCHAR(255),
	PRIMARY KEY (id)
);

-- questions (Lernkontrolle)
DROP TABLE IF EXISTS questions;
CREATE TABLE questions (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	book_id INT UNSIGNED NOT NULL, -- foreign key
	chapter INT NOT NULL,
	page INT NOT NULL,
	topic VARCHAR(63),
	notes VARCHAR(255),
	PRIMARY KEY (id)
);

-- chapters (Kapitel)
DROP TABLE IF EXISTS chapters;
CREATE TABLE chapters (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	book_id INT UNSIGNED NOT NULL, -- foreign key
	number INT NOT NULL,
	topic VARCHAR(63) NOT NULL,
	page INT NOT NULL,
	PRIMARY KEY (id)
);
