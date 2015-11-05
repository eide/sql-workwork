CREATE TABLE company (
    company SERIAL PRIMARY KEY NOT NULL,
    company_name VARCHAR NOT NULL
);

CREATE TABLE position (
    person INTEGER REFERENCES person NOT NULL,
    company INTEGER REFERENCES company NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (person, company)
);

INSERT INTO company (company_name) VALUES ('DummyCo');
INSERT INTO position (company, person, title) VALUES (1, 1, 'CEO');
