
------------------------------------------------------------
1. Create Database and connect to it
------------------------------------------------------------
psql --username=freecodecamp --dbname=postgres;

CREATE DATABASE universe;

\c universe

------------------------------------------------------------
2. Create tables as required conditions
------------------------------------------------------------
CREATE TABLE galaxy (
    galaxy_id SERIAL NOT NULL,
    star_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE star (
    star_id SERIAL NOT NULL,
    galaxy_id INTEGER NOT NULL,
    planet_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE planet (
    planet_id SERIAL NOT NULL,
    star_id INTEGER NOT NULL,
    moon_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE moon (
    moon_id SERIAL NOT NULL,
    planet_id INTEGER NOT NULL,
    name VARCHAR(20) UNIQUE NOT NULL,
    area INTEGER,
    volume INTEGER,
    age NUMERIC,
    material TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN
);

CREATE TABLE more_info (
    more_info_id SERIAL NOT NULL,
    object_id INTEGER,
    name VARCHAR(20) UNIQUE NOT NULL,
    description TEXT
);

------------------------------------------------------------
3. Fill the tables as required data conditions
------------------------------------------------------------
INSERT INTO galaxy VALUES 
(1, 1, 'Milky Way', 100000, 1000000, 13600, 'varied', true, true),
(2, 2, 'Andromeda', 120000, 1200000, 10000, 'gas and dust', false, false),
(3, 3, 'Triangulum', 60000, 600000, 8000, 'gas and dust', false, false),
(4, 4, 'L Magellanic Cloud', 14000, 140000, 13600, 'gas and dust', false, false),
(5, 5, 'S Magellanic Cloud', 7000, 70000, 13600, 'gas and dust', false, false),
(6, 6, 'Whirlpool Galaxy', 70000, 700000, 10000, 'gas and dust', false, false);

INSERT INTO star VALUES
(1, 1, 1, 'Sun', 1392000, 1412000, 4600, 'plasma', true, true),
(2, 2, 2, 'Sirius', 118964, 1500000, 300, 'plasma', false, false),
(3, 3, 3, 'Proxima Centauri', 200000, 300000, 4500, 'plasma', false, false),
(4, 4, 4, 'Betelgeuse', 887600, 1200000, 10000, 'plasma', false, false),
(5, 5, 5, 'Rigel', 772000, 1100000, 8000, 'plasma', false, false),
(6, 6, 6, 'Polaris', 400000, 500000, 7000, 'plasma', false, false);

INSERT INTO planet VALUES
(1, 1, 1, 'Mercury', 7480, 60827, 4500, 'rocky', false, false),
(2, 1, 2, 'Venus', 12100, 928415, 4500, 'rocky', false, false),
(3, 1, 3, 'Earth', 12742, 1083206, 4500, 'rocky', true, true),
(4, 1, 4, 'Mars', 6779, 1631800, 4500, 'rocky', false, false),
(5, 1, 5, 'Jupiter', 139820, 1431280000, 4500, 'gas giant', false, false),
(6, 1, 6, 'Saturn', 116460, 827130000, 4500, 'gas giant', false, false),
(7, 1, 7, 'Uranus', 50724, 68340000, 4500, 'ice giant', false, false),
(8, 1, 8, 'Neptune', 49244, 62540000, 4500, 'ice giant', false, false),
(9, 2, 9, 'Kepler-22b', 12500, 900000, 6000, 'rocky', false, true),
(10, 3, 10, 'TRAPPIST-1e', 13000, 1000000, 7000, 'rocky', false, true),
(11, 4, 11, 'Barnard b', 12000, 1200000, 8000, 'rocky', false, false),
(12, 5, 12, 'Tau Ceti f', 10000, 850000, 6000, 'rocky', false, false);

INSERT INTO moon VALUES 
(1,   3, 'Moon', 3474, 21958, 4500, 'rocky', false, false),
(2,   5, 'Europa', 3121, 15930, 4500, 'icy', false, true),
(3,   5, 'Ganymede', 5268, 76300, 4500, 'icy', false, true),
(4,   5, 'Callisto', 4821, 59914, 4500, 'icy', false, true),
(5,   5, 'Io', 3643, 25300, 4500, 'rocky', false, false),
(6,   6, 'Titan', 5152, 71492, 4500, 'rocky', false, true),
(7,   6, 'Enceladus', 504, 8000, 4500, 'icy', false, true),
(8,   6, 'Mimas', 396, 2500, 4500, 'icy', false, false),
(9,   6, 'Tethys', 1062, 6200, 4500, 'icy', false, false),
(10,  6, 'Dione', 1123, 7500, 4500, 'icy', false, false),
(11,  6, 'Rhea', 1528, 18700, 4500, 'icy', false, false),
(12,  8, 'Triton', 2707, 23000, 4500, 'icy', false, true),
(13,  5, 'Himalia', 170, 9560, 4500, 'rocky', false, false),
(14,  5, 'Thebe', 99, 5890, 4500, 'rocky', false, false),
(15,  7, 'Miranda', 471, 7700, 4500, 'icy', false, false),
(16,  7, 'Ariel', 1157, 13200, 4500, 'icy', false, false),
(17,  7, 'Umbriel', 1169, 12200, 4500, 'icy', false, false),
(18,  7, 'Titania', 1577, 19300, 4500, 'icy', false, false),
(19,  7, 'Oberon', 1523, 18200, 4500, 'icy', false, false),
(20, 12, 'Charon', 1212, 8000, 4500, 'rocky', false, false);


INSERT INTO more_info VALUES
(1, 1, 'Milky Way Info', 'Our galaxy, home to the Solar System.'),
(2, 3, 'Earth Info', 'The only planet known to support life.'),
(3, 5, 'Jupiter Info', 'Largest planet in the Solar System.'),
(4, 6, 'Saturn Info', 'Known for its prominent ring system.'),
(5, 8, 'Neptune Info', 'Farthest planet in the Solar System.');

------------------------------------------------------------
4. Primary Key and Foreign Key assignment
------------------------------------------------------------
ALTER TABLE galaxy    ADD PRIMARY KEY (galaxy_id);
ALTER TABLE star      ADD PRIMARY KEY (star_id);
ALTER TABLE planet    ADD PRIMARY KEY (planet_id);
ALTER TABLE moon      ADD PRIMARY KEY (moon_id);
ALTER TABLE more_info ADD PRIMARY KEY (more_info_id);

ALTER TABLE galaxy ADD FOREIGN KEY (star_id)   REFERENCES star   (star_id);
ALTER TABLE star   ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id);
ALTER TABLE star   ADD FOREIGN KEY (planet_id) REFERENCES planet (planet_id);
ALTER TABLE planet ADD FOREIGN KEY (star_id)   REFERENCES star   (star_id);
ALTER TABLE planet ADD FOREIGN KEY (moon_id)   REFERENCES moon   (moon_id);
ALTER TABLE moon   ADD FOREIGN KEY (planet_id) REFERENCES planet (planet_id);