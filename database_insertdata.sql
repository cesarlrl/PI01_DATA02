DROP DATABASE IF EXISTS lab01;
CREATE DATABASE lab01;
# SHOW VARIABLES LIKE "secure_file_priv";

USE lab01;

DROP TABLE IF EXISTS `circuits`;
CREATE TABLE `circuits`
(	unnamed		VARCHAR(40), # Column without a name, seems like Ids, should drop it later
	circuitId	SMALLINT,
	circuitRef 	VARCHAR(40),
    `name`		VARCHAR(40),
    location	VARCHAR(40),
    country		VARCHAR(40),
    lat			VARCHAR(40),
    lng			VARCHAR(40),
    alt			VARCHAR(40),
    url			VARCHAR(160),
    PRIMARY KEY (circuitId)
);

DROP TABLE IF EXISTS `races`;
CREATE TABLE `races`
(	unnamed		SMALLINT,
	raceId		SMALLINT,
	`year`		SMALLINT,
    round		SMALLINT,
    circuitId	SMALLINT,
    `name`		VARCHAR(40),
    `date`		DATE,
    `time`		VARCHAR(40),
	url 		VARCHAR(80),
    PRIMARY KEY (raceId),
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
    q3				VARCHAR(40),
    PRIMARY KEY (qualifyId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/

DROP TABLE IF EXISTS `constructors`;
CREATE TABLE `constructors`
(	unnamed			SMALLINT,
	constructorId	SMALLINT,
	contructorRef 	VARCHAR(40),
    `name` 			VARCHAR(40),
    nationality		VARCHAR(40),
    url				VARCHAR(80),
    PRIMARY KEY (constructorId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE `drivers`
(	unnamed			SMALLINT,
	driverId		SMALLINT,
    driverRef		VARCHAR(40),
    `number`		VARCHAR(40),
    `code`			VARCHAR(80),
    `name`			VARCHAR(40),
    dob				VARCHAR(80),
    nationality		VARCHAR(40),
    url				VARCHAR(120),
    PRIMARY KEY (driverId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*
DROP TABLE IF EXISTS `pit_stops`;
CREATE TABLE `pit_stops`
(	raceId 			SMALLINT,
	driverId		SMALLINT,
    `stop`			SMALLINT,
    lap				SMALLINT,
    `time`			VARCHAR(40),
    duration		VARCHAR(30),
    milliseconds	INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/

DROP TABLE IF EXISTS `results`;
CREATE TABLE `results`
(	unnamed			SMALLINT,
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
    statusId		SMALLINT,
    PRIMARY KEY (resultId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*
DROP TABLE IF EXISTS `lap_times`;
CREATE TABLE `lap_times`
(	raceId		SMALLINT,
	driverId	SMALLINT,
    lap			SMALLINT,
    position	SMALLINT,
    `time`		VARCHAR(40),
    miliseconds	INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `lap_times_split_1`;
CREATE TABLE `lap_times_split_1`
(	raceId		SMALLINT,
	driverId	SMALLINT,
    lap			SMALLINT,
    position	SMALLINT,
    `time`		VARCHAR(40),
    miliseconds	INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `lap_times_split_2`;
CREATE TABLE `lap_times_split_2`
(	raceId		SMALLINT,
	driverId	SMALLINT,
    lap			SMALLINT,
    position	SMALLINT,
    `time`		VARCHAR(40),
    miliseconds	INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `lap_times_split_3`;
CREATE TABLE `lap_times_split_3`
(	raceId		SMALLINT,
	driverId	SMALLINT,
    lap			SMALLINT,
    position	SMALLINT,
    `time`		VARCHAR(40),
    miliseconds	INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `lap_times_split_4`;
CREATE TABLE `lap_times_split_4`
(	raceId		SMALLINT,
	driverId	SMALLINT,
    lap			SMALLINT,
    position	SMALLINT,
    `time`		VARCHAR(40),
    miliseconds	INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `lap_times_split_5`;
CREATE TABLE `lap_times_split_5`
(	raceId		SMALLINT,
	driverId	SMALLINT,
    lap			SMALLINT,
    position	SMALLINT,
    `time`		VARCHAR(40),
    miliseconds	INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\circuits.csv' INTO TABLE circuits
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

ALTER TABLE circuits DROP COLUMN unnamed; # Dropping unnecesary column

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\constructors.csv' INTO TABLE constructors
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\races.csv' INTO TABLE races
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\drivers.csv' INTO TABLE drivers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/*
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\pit_stops.csv' INTO TABLE pit_stops
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
*/

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\results.csv' INTO TABLE results
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

/*
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\lap_times\\lap_times_split_1.csv' INTO TABLE lap_times_split_1
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\lap_times\\lap_times_split_2.csv' INTO TABLE lap_times_split_2
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\lap_times\\lap_times_split_3.csv' INTO TABLE lap_times_split_3
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\lap_times\\lap_times_split_4.csv' INTO TABLE lap_times_split_4
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\lap_times\\lap_times_split_5.csv' INTO TABLE lap_times_split_5
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\Qualifying\\qualifying_split_1.csv' INTO TABLE qualifying_split_1
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\\\Datasets\\Qualifying\\qualifying_split_2.csv' INTO TABLE qualifying_split_2
FIELDS TERMINATED BY ','
ENCLOSED BY ''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
*/

# Dropping unnecesary columns
ALTER TABLE results DROP COLUMN unnamed;
ALTER TABLE drivers DROP COLUMN unnamed;
ALTER TABLE constructors DROP COLUMN unnamed;
ALTER TABLE races DROP COLUMN unnamed;

# Adding foreign keys
ALTER TABLE races ADD FOREIGN KEY (circuitId) REFERENCES circuits(circuitId);
ALTER TABLE results ADD FOREIGN KEY (constructorId) REFERENCES constructors(constructorId);
ALTER TABLE results ADD FOREIGN KEY (raceId) REFERENCES races(raceId);
ALTER TABLE results ADD FOREIGN KEY (driverId) REFERENCES drivers(driverId);

# Answering questions

# Año con más carreras
SELECT * FROM races;
SELECT * FROM circuits;

SELECT max(round) AS Carreras, year FROM races GROUP BY `year` ORDER BY Carreras DESC LIMIT 1;

# Piloto con mayor cantidad de primeros puestos
SELECT * FROM results;
SELECT * FROM drivers;

SELECT COUNT(driverId) AS Cantidad, driverId, position FROM results 
WHERE position = 1 ORDER BY Cantidad DESC;
