-- NATURAL JOIN is klettes favourite, but it doesn't work if it finds unrelated
-- columns with the same name.
ALTER TABLE person RENAME title TO position;

-- Things to try:
-- SELECT * FROM post NATURAL JOIN person;
