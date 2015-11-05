-- Always use constraints for foreign keys.
-- Then the database will refuse bogus data.

UPDATE post SET person_id = (SELECT id FROM person WHERE name = 'Kåre') WHERE person_id = 3;
ALTER TABLE post ADD CONSTRAINT post_person_id_fkey FOREIGN KEY (person_id) REFERENCES person(id);

-- Things to try:
-- SELECT * FROM post INNER JOIN person ON (post.person_id = person.id);
