DROP DATABASE IF EXISTS lab01;
CREATE DATABASE lab01;
# SHOW VARIABLES LIKE "secure_file_priv";

USE lab01;

DROP TABLE IF EXISTS `circuits`;
CREATE TABLE `circuits`
(	circuitId	SMALLINT,
	circuitRef 	VARCHAR(40),
    `name`		VARCHAR(40),
    location	VARCHAR(40),
    country		VARCHAR(40),
    lat			VARCHAR(40),
    lng			VARCHAR(40),
    alt			VARCHAR(40),
    url			VARCHAR(80)
);

DROP TABLE IF EXISTS `constructors`;
CREATE TABLE `constructors`
(	Id				SMALLINT,
	constructorId	SMALLINT,
	contructorRef 	VARCHAR(40),
    `name` 			VARCHAR(40),
    nationality		VARCHAR(40),
    url				VARCHAR(80)
);

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers`
( 	Id				SMALLINT,
	Idsec			SMALLINT,
	driverId		VARCHAR(40),
    driverRef		VARCHAR(40),
    `number`		VARCHAR(40),
    `code`			VARCHAR(80),
    dob				VARCHAR(80),
    nationality		VARCHAR(40),
    url				VARCHAR(120)
);

DROP TABLE IF EXISTS `pit_stops`;
CREATE TABLE `pit_stops`
(	raceId 			SMALLINT,
	driverId		SMALLINT,
    `stop`			SMALLINT,
    lap				SMALLINT,
    `time`			VARCHAR(40),
    duration		VARCHAR(30),
    milliseconds	INT
);

DROP TABLE IF EXISTS `races`;
CREATE TABLE `races`
(	raceId	SMALLINT,
	`year`	SMALLINT,
    round	SMALLINT,
    circuitId	SMALLINT,
    `name`	VARCHAR(40),
    `date`	DATE,
    `time`	VARCHAR(40),
    url VARCHAR(80)
);

DROP TABLE IF EXISTS `results`;
CREATE TABLE `results`
(	Id				SMALLINT,
	resultId		SMALLINT,
    raceId			SMALLINT,
    driverId		SMALLINT,
    constructorId	SMALLINT,
    `number` 		SMALLINT,
    grid			SMALLINT,
    position		SMALLINT,
	positionText	VARCHAR(40),
    positionOrder	SMALLINT,
    points			VARCHAR(40),
    laps			SMALLINT,
    `time`			VARCHAR(40),
    milliseconds	INT,
    fastestLap		SMALLINT,
    `rank`			SMALLINT,
    fastestLapTime	VARCHAR(40),
    fastestLapSpeed	VARCHAR(40),
    statusId		SMALLINT
);

DROP TABLE IF EXISTS `lap_times`;
CREATE TABLE `lap_times`
(	unnamed1	SMALLINT,
	unnamed2	SMALLINT,
    unnamed3	SMALLINT,
    unnamed4	SMALLINT,
    unnamed5	VARCHAR(40),
    unnamed6	INT
);

DROP TABLE IF EXISTS `lap_times_split_1`;
CREATE TABLE `lap_times_split_1`
(	unnamed1	SMALLINT,
	unnamed2	SMALLINT,
    unnamed3	SMALLINT,
    unnamed4	SMALLINT,
    unnamed5	VARCHAR(40),
    unnamed6	INT
);

DROP TABLE IF EXISTS `lap_times_split_2`;
CREATE TABLE `lap_times_split_2`
(	unnamed1	SMALLINT,
	unnamed2	SMALLINT,
    unnamed3	SMALLINT,
    unnamed4	SMALLINT,
    unnamed5	VARCHAR(40),
    unnamed6	INT
);

DROP TABLE IF EXISTS `lap_times_split_3`;
CREATE TABLE `lap_times_split_3`
(	unnamed1	SMALLINT,
	unnamed2	SMALLINT,
    unnamed3	SMALLINT,
    unnamed4	SMALLINT,
    unnamed5	VARCHAR(40),
    unnamed6	INT
);

DROP TABLE IF EXISTS `lap_times_split_4`;
CREATE TABLE `lap_times_split_4`
(	unnamed1	SMALLINT,
	unnamed2	SMALLINT,
    unnamed3	SMALLINT,
    unnamed4	SMALLINT,
    unnamed5	VARCHAR(40),
    unnamed6	INT
);

DROP TABLE IF EXISTS `lap_times_split_5`;
CREATE TABLE `lap_times_split_5`
(	unnamed1	SMALLINT,
	unnamed2	SMALLINT,
    unnamed3	SMALLINT,
    unnamed4	SMALLINT,
    unnamed5	VARCHAR(40),
    unnamed6	INT
);

DROP TABLE IF EXISTS `qualifying`;
CREATE TABLE `qualifying`
(	qualifyId		SMALLINT,
	raceId			SMALLINT,
    driverId		SMALLINT,
    constructorId	SMALLINT,
    `number`		SMALLINT,
    position		SMALLINT,
    q1				VARCHAR(40),
    q2				VARCHAR(40),
    q3				VARCHAR(40)
);

DROP TABLE IF EXISTS `qualifying_split_1`;
CREATE TABLE `qualifying_split_1`
(	qualifyId		SMALLINT,
	raceId			SMALLINT,
    driverId		SMALLINT,
    constructorId	SMALLINT,
    `number`		SMALLINT,
    position		SMALLINT,
    q1				VARCHAR(40),
    q2				VARCHAR(40),
    q3				VARCHAR(40)
);

DROP TABLE IF EXISTS `qualifying_split_2`;
CREATE TABLE `qualifying_split_2`
(	qualifyId		SMALLINT,
	raceId			SMALLINT,
    driverId		SMALLINT,
    constructorId	SMALLINT,
    `number`		SMALLINT,
    position		SMALLINT,
    q1				VARCHAR(40),
    q2				VARCHAR(40),
    q3				VARCHAR(40)
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\circuits.csv' INTO TABLE circuits
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\constructors.csv' INTO TABLE constructors
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\races.csv' INTO TABLE races
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\drivers.csv' INTO TABLE drivers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\pit_stops.csv' INTO TABLE pit_stops
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\results.csv' INTO TABLE results
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\lap_times\\lap_times_split_1.csv' INTO TABLE lap_times_split_1
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\lap_times\\lap_times_split_2.csv' INTO TABLE lap_times_split_2
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\lap_times\\lap_times_split_3.csv' INTO TABLE lap_times_split_3
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\lap_times\\lap_times_split_4.csv' INTO TABLE lap_times_split_4
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\lap_times\\lap_times_split_5.csv' INTO TABLE lap_times_split_5
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\Qualifying\\qualifying_split_1.csv' INTO TABLE qualifying_split_1
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\DatasetsCopy\\Qualifying\\qualifying_split_2.csv' INTO TABLE qualifying_split_2
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
