-- First version, with some "mistakes"

CREATE TABLE person (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY NOT NULL,
    posted TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    title VARCHAR(255) NOT NULL,
    content VARCHAR(255) NOT NULL,
    person_id INTEGER NOT NULL
);

INSERT INTO person (name) VALUES ('Bob');
INSERT INTO person (name) VALUES ('Kåre');

INSERT
    INTO post
        (title, content, person_id)
    VALUES
        ('Herp', 'Derp', 3);

INSERT
    INTO post
        (title, content, person_id)
    VALUES
        ('Woop', 'Woopadoopa', (SELECT id FROM person WHERE name = 'Bob'));

-- Things to try:
-- SELECT * FROM post;
-- SELECT * FROM person;
