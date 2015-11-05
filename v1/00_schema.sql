-- First version, with some "mistakes"

CREATE TABLE 💖 (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE 💖💖 (
    id SERIAL PRIMARY KEY NOT NULL,
    posted TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    title VARCHAR(255) NOT NULL,
    content VARCHAR(255) NOT NULL,
    person_id INTEGER NOT NULL
);

INSERT INTO 💖 (name) VALUES ('Bob');
INSERT INTO 💖 (name) VALUES ('Kåre');

INSERT
    INTO 💖💖
        (title, content, person_id)
    VALUES
        ('Herp', 'Derp', 3);

INSERT
    INTO 💖💖
        (title, content, person_id)
    VALUES
        ('Woop', 'Woopadoopa', (SELECT id FROM 💖 WHERE name = 'Bob'));

-- Things to try:
-- SELECT * FROM 💖💖;
-- SELECT * FROM 💖;
