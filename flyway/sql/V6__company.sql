CREATE TABLE company (
    company SERIAL PRIMARY KEY NOT NULL,
    company_name VARCHAR NOT NULL
);

CREATE TABLE position (
    position SERIAL PRIMARY KEY NOT NULL,
    company INTEGER REFERENCES company NOT NULL,
    title VARCHAR NOT NULL
);

INSERT INTO company (company_name) VALUES ('DummyCo');
INSERT INTO position (company, title) VALUES (1, 'CEO');

ALTER TABLE person DROP position;
ALTER TABLE person ADD COLUMN position INTEGER NULL REFERENCES position ON DELETE SET NULL;

UPDATE person SET position = 1 WHERE person = 1;
