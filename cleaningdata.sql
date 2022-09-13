USE lab01;

SELECT * FROM circuits; # All good here

SELECT * FROM constructors;
ALTER TABLE constructors DROP COLUMN Id;

SELECT * FROM drivers;
ALTER TABLE drivers DROP COLUMN Id;