ALTER TABLE post ADD COLUMN metadata JSON;
UPDATE post
    SET metadata = '{"foo": "Lorem ipsum", "bar": [1, 2]}'::json
    WHERE post = 1;

-- Try this:
-- SELECT title, metadata->>'foo' AS foo FROM post;
-- SELECT title, metadata#>'{bar, 1}' AS foo FROM post;
