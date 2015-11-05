-- NATURAL JOIN is klettes favourite, but it doesn't work if it finds unrelated
-- columns with the same name.
ALTER TABLE person DROP title;

-- Things to try:
-- SELECT * FROM post NATURAL JOIN person;
