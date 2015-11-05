ALTER TABLE person RENAME id TO person;
ALTER TABLE post RENAME id TO post;
ALTER TABLE post RENAME person_id TO person;

ALTER TABLE person ADD COLUMN title VARCHAR NULL;

-- Things to try:
-- SELECT * FROM post INNER JOIN person USING (person);
