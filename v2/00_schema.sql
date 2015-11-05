CREATE TABLE person (
    person SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR NOT NULL
);

CREATE TABLE post (
    post SERIAL PRIMARY KEY NOT NULL,
    posted TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    title VARCHAR NOT NULL,
    content VARCHAR NOT NULL,
    person INTEGER REFERENCES person NOT NULL
);

INSERT INTO person (name) VALUES ('Bob');
INSERT INTO person (name) VALUES ('Kåre');

INSERT
    INTO post
        (title, content, person)
    VALUES
        ('Herp', 'Derp', (SELECT person FROM person WHERE name = 'Kåre'));

INSERT
    INTO post
        (title, content, person)
    VALUES
        ('Woop', 'Woopadoopa', (SELECT person FROM person WHERE name = 'Bob'));

