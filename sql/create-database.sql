/*	meta information
	filename: sql/create-database.sql
	description: bookdb database definition
	version: v0.0.1
	author: Michael Wronna, Konstanz
	created: 2019-10-10
	modified: 2019-10-10
*/

-- fix that damn character encoding problem
SET character_set_client = 'utf8';

DROP TABLE IF EXISTS bookdb;
CREATE DATABASE bookdb CHARACTER SET = utf8;