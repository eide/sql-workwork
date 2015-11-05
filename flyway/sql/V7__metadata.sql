ALTER TABLE post ADD COLUMN metadata JSON;
UPDATE post
    SET metadata = '{"foo": "Lorem ipsum", "bar": [1, 2]}'::json
    WHERE post = 1;
