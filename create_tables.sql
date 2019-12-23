-- Create tables
CREATE TABLE categories
(
	id bigserial,
    title citext NOT NULL,
    CONSTRAINT categories_pk PRIMARY KEY (id),
    CONSTRAINT categories_un UNIQUE (title)
);

CREATE TABLE tests
(
	id bigserial,
    title citext NOT NULL,
    level integer,  
    category_id bigint NOT NULL, 
    CONSTRAINT tests_pk PRIMARY KEY (id),
    CONSTRAINT tests_un UNIQUE (title),
    CONSTRAINT tests_fk FOREIGN KEY (category_id)
                        REFERENCES categories (id)
);

CREATE TABLE questions
(
	id bigserial,
    body citext NOT NULL,
    test_id bigint NOT NULL,
    CONSTRAINT questions_pk PRIMARY KEY (id),
    CONSTRAINT questions_fk FOREIGN KEY (test_id)
                            REFERENCES tests (id)
);