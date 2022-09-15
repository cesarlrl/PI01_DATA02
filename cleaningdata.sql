/* USE lab01;

SELECT * FROM circuits; # All good here

SELECT * FROM constructors;
ALTER TABLE constructors DROP COLUMN Id;

SELECT * FROM drivers;
ALTER TABLE drivers DROP COLUMN Id;

INSERT INTO lap_times SELECT *
FROM (SELECT * FROM lap_times_split_1
UNION
SELECT * FROM lap_times_split_2
UNION
SELECT * FROM lap_times_split_3
UNION
SELECT * FROM lap_times_split_4
UNION
SELECT * FROM lap_times_split_5) a;

INSERT INTO qualifying SELECT *
FROM (SELECT * FROM qualifying_split_1
UNION
SELECT * FROM qualifying_split_2) a;
*/