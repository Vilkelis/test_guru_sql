-- Clear all the data
DELETE FROM questions;
DELETE FROM tests;
DELETE FROM categories;

-- Insert test data
INSERT INTO categories (id, title) VALUES (1, 'Тесты по Ruby');
INSERT INTO categories (id, title) VALUES (2, 'Тесты по Rails');
INSERT INTO categories (id, title) VALUES (3, 'Тесты по Elixir');

INSERT INTO tests (id, title, level, category_id) VALUES 
									(1, 'Ruby уровень 1', 1, 1);
INSERT INTO tests (id, title, level, category_id) VALUES 
									(2, 'Ruby уровень 2', 2, 1);
INSERT INTO tests (id, title, level, category_id) VALUES 
									(3, 'Rails уровень 1', 1, 2);									
INSERT INTO tests (id, title, level, category_id) VALUES 
									(4, 'Rails уровень 2', 2, 2);																		
INSERT INTO tests (id, title, level, category_id) VALUES 
									(5, 'Elixir уровень 3', 3, 3);																											

INSERT INTO questions (id, body, test_id) VALUES (1, 'Понятен ли вам Ruby?', 1);
INSERT INTO questions (id, body, test_id) VALUES (2, 'Нравится ли вам Ruby?', 2);

INSERT INTO questions (id, body, test_id) VALUES (3, 'Понятен ли вам Rails?', 3);
INSERT INTO questions (id, body, test_id) VALUES (4, 'Нравится ли вам Rails?', 4);

INSERT INTO questions (id, body, test_id) VALUES (5, 'Elexir это круто?', 5);

-- Simple queries for data
SELECT * FROM tests WHERE level IN (2,3);

SELECT * FROM questions WHERE test_id = 4;

-- Update operation
UPDATE tests 
	SET title = 'Ruby уровень 3',
		  level = 3 
	WHERE id = 2;

-- Delete operation
DELETE FROM questions where test_id = 1;

-- Queries with JOIN
SELECT c.title as category_title, t.title as test_title
 FROM tests t 
 LEFT JOIN categories c on c.id = t.category_id;

SELECT t.title as test_title, q.body as question_body
	FROM questions q 
	JOIN tests t on t.id = q.test_id;



