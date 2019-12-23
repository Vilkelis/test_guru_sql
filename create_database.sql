-- Create database
CREATE DATABASE test_guru
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8';

-- Create extension for using case insensitive strings
CREATE EXTENSION citext
    SCHEMA public
    VERSION "1.5";    