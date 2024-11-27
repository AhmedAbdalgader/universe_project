CREATE DATABASE universe;
CREATE TABLE galaxy(
  galaxy_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE,
  age_in_millions_of_years INT,
  size_in_light_year INT,
  distance_from_earth NUMERIC,
  description TEXT  NOT NULL,
  galaxy_types VARCHAR,
  has_life BOOLEAN,
  is_proven BOOLEAN,
  star_id INT
)

CREATE TABLE star(
  star_id SERIAL PRIMARY KEY,
  name VARCHAR(50)  NOT NULL UNIQUE,
  age_in_millions_of_years INT,
  size_in_solar_radius INT,
  distance_from_earth NUMERIC,
  star_type VARCHAR  NOT NULL,
  is_spherical BOOLEAN,
  has_planet BOOLEAN,
  galaxy_id INT
)

CREATE TABLE planet(
  planet_id SERIAL PRIMARY KEY,
  name VARCHAR(50)  NOT NULL UNIQUE,
  age_in_millions_of_years INT,
  num_of_satellite INT,
  distance_from_earth NUMERIC,
  planet_type VARCHAR,
  has_life BOOLEAN  NOT NULL,
  has_been_explored BOOLEAN
)


CREATE TABLE moon(
  moon_id SERIAL PRIMARY KEY,
  name VARCHAR(50)  NOT NULL UNIQUE,
  age_in_millions_of_years INT,
  self_axis_rotation_in_day INT  NOT NULL,
  distance_from_earth NUMERIC,
  moon_type VARCHAR,
  is_spherical BOOLEAN,
  has_been_explored BOOLEAN,
  planet_id INT
)


CREATE TABLE EARTH(
  earth_id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL UNIQUE,
  under_operation BOOLEAN
)

ALTER TABLE star ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);

ALTER TABLE star ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);

ALTER TABLE galaxy ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (star_id) REFERENCES star(star_id);

INSERT INTO galaxy(name, age_in_millions_of_years, distance_from_earth, description, has_life) VALUES ('Milky Way', 13.61, 	0.008,  'is a barred spiral galaxy around 13.6 billion years old with large pivoting arms stretching out across the cosmos.', False )
                                                                                                      ('Sagittarius Dwarf Sphr SagDEG', 8, 0.078, 's a 4th magnitude Elliptical Galaxy appearing in the constellation Sagittarius.', False  )
                                                                                                      ('Large Magellanic Cloud LMC',1, 0.163, 'a satellite galaxy of the Milky Way, floats in space, in a long and slow dance around our galaxy.', False)
INSERT INTO galaxy(name, age_in_millions_of_years, distance_from_earth, num_of_satellite,  description, has_life) 
VALUES 
('Andromeda', 10.02, 2.537, 'is a spiral galaxy located about 2.5 million light-years from Earth, and is the closest large galaxy to the Milky Way.', False),
('Whirlpool Galaxy M51', 11.8, 0.023, 'is a classic spiral galaxy known for its well-defined spiral arms and interaction with a smaller galaxy, located in the constellation Canes Venatici.', False),
('Sombrero Galaxy M104', 9.5, 0.028, 'is a spiral galaxy known for its bright central bulge and large dust lane, resembling a sombrero hat, located in the constellation Virgo.', False);


INSERT INTO star(name, age_in_millions_of_years, distance_from_earth, description, star_type, has_planet) 
VALUES 

INSERT INTO star(name, age_in_millions_of_years, distance_from_earth, description, star_type, has_planet) 
VALUES 
('Sun', 4600, 0, 'The Sun is the star at the center of the Solar System, providing the heat and light necessary for life on Earth.', 'G-type main-sequence', True),
('Sirius', 200, 8.6, 'Sirius is the brightest star in the night sky, part of the Canis Major constellation, and is a binary star system consisting of Sirius A and Sirius B.', 'A-type main-sequence', True),
('Betelgeuse', 800, 642.5, 'Betelgeuse is a red supergiant star in the constellation Orion, known for its potential to explode as a supernova in the future.', 'M-type supergiant', False),
('Alpha Centauri A', 6000, 4.37, 'Alpha Centauri A is the closest star to our Solar System and is part of the Alpha Centauri star system, which includes two other stars.', 'G-type main-sequence', True),
('Vega', 455, 25, 'Vega is one of the brightest stars in the night sky and is located in the Lyra constellation. It is known for being part of the Summer Triangle.', 'A-type main-sequence', True),
('Antares', 120, 550, 'Antares is a red supergiant star located in the heart of the Scorpius constellation. It is one of the largest stars visible to the naked eye.', 'M-type supergiant', False);

INSERT INTO planet(name, age_in_millions_of_years, distance_from_earth, description, planet_type, has_been_explored, has_life) 
VALUES 
('Earth', 4500, 0, 'Earth is the third planet from the Sun and the only known planet to support life.', 'Terrestrial', True, True),
('Mars', 4600, 0.0003, 'Mars is the fourth planet from the Sun, often called the "Red Planet" due to its iron oxide-rich surface.', 'Terrestrial', True, False),
('Jupiter', 4600, 0.0006, 'Jupiter is the largest planet in the Solar System and has a famous storm called the Great Red Spot.', 'Gas Giant', True, False),
('Saturn', 4500, 0.0009, 'Saturn is known for its extensive ring system and is the second-largest planet in the Solar System.', 'Gas Giant', True, False),
('Venus', 4600, 0.0003, 'Venus is the second planet from the Sun and has a thick atmosphere, making it the hottest planet in the Solar System.', 'Terrestrial', True, False),
('Mercury', 4600, 0.0001, 'Mercury is the closest planet to the Sun, with extreme temperature variations and no atmosphere to speak of.', 'Terrestrial', True, False),
('Uranus', 4600, 0.0027, 'Uranus is a gas giant that rotates on its side and is known for its blue-green color due to methane in its atmosphere.', 'Ice Giant', True, False),
('Neptune', 4600, 0.0027, 'Neptune is a gas giant with strong winds and storms, including the Great Dark Spot, and is the farthest planet from the Sun.', 'Ice Giant', True, False),
('Pluto', 4500, 0.0043, 'Pluto was once considered the ninth planet but was reclassified as a dwarf planet. It has a highly elliptical orbit.', 'Dwarf Planet', True, False),
('Titan', 4500, 0.0003, 'Titan is Saturn s largest moon and is the second-largest moon in the Solar System. It has a thick nitrogen atmosphere and seas of liquid methane.', 'Moon', True, False),
('Europa', 4500, 0.0002, 'Europa is a moon of Jupiter with a smooth, icy surface that may cover a subsurface ocean, making it a candidate for life.', 'Moon', True, False),
('Ganymede', 4500, 0.0002, 'Ganymede is the largest moon of Jupiter and the largest in the Solar System, with a magnetic field of its own.', 'Moon', True, False);

INSERT INTO moon(name, age_in_millions_of_years, distance_from_earth, description, self_axis_rotation_in_day, has_been_explored, moon_type) 
VALUES 
('Moon', 4500, 0.0003, 'Earth s only natural satellite, it has a prominent impact crater landscape and is crucial in stabilizing Earth s rotation.', 27.3, True, 'Rocky'),
('Io', 4600, 0.0025, 'Io is a volcanic moon of Jupiter, known for its extreme volcanic activity and sulfurous surface.', 1.8, True, 'Volcanic'),
('Europa', 4500, 0.0002, 'Europa is a moon of Jupiter with a smooth, icy surface that may cover a subsurface ocean, making it a candidate for life.', 3.5, True, 'Icy'),
('Ganymede', 4500, 0.0002, 'Ganymede is the largest moon of Jupiter and the largest in the Solar System, with a magnetic field of its own.', 7.2, True, 'Rocky'),
('Titan', 4500, 0.0003, 'Titan is Saturn s largest moon and has a thick nitrogen atmosphere and seas of liquid methane.', 15.9, True, 'Icy'),
('Rhea', 4500, 0.0005, 'Rhea is Saturn s second-largest moon, primarily made of water ice and rock, with a very thin atmosphere.', 4.5, True, 'Icy'),
('Callisto', 4500, 0.0005, 'Callisto is another large moon of Jupiter, covered in a thick icy crust with possible underground oceans.', 16.7, True, 'Icy'),
('Enceladus', 4500, 0.0003, 'Enceladus is a moon of Saturn that has geysers spewing water vapor and ice, hinting at an internal ocean.', 1.4, True, 'Icy'),
('Mimas', 4500, 0.0005, 'Mimas is a moon of Saturn known for its large impact crater, often compared to the Death Star from Star Wars.', 0.9, True, 'Rocky'),
('Triton', 4500, 0.0044, 'Triton is Neptune s largest moon, with a retrograde orbit and icy geysers, indicating potential geological activity.', 5.9, True, 'Icy'),
('Miranda', 4500, 0.0004, 'Miranda is one of Uranus moons, known for its bizarre surface with deep canyons and ridges.', 1.4, True, 'Rocky'),
('Titania', 4500, 0.0003, 'Titania is the largest moon of Uranus, with a surface marked by canyons and craters, possibly indicating past geological activity.', 8.7, True, 'Rocky'),
('Oberon', 4500, 0.0003, 'Oberon is another large moon of Uranus, known for its heavily cratered surface and icy composition.', 13.5, True, 'Icy'),
('Phobos', 4500, 0.0000003, 'Phobos is the larger of Mars two moons, heavily cratered and gradually spiraling toward Mars.', 0.3, True, 'Rocky'),
('Deimos', 4500, 0.0000004, 'Deimos is the smaller moon of Mars, with a smooth surface and low gravity.', 1.3, True, 'Rocky'),
('Charon', 4500, 0.0043, 'Charon is Pluto s largest moon, and it is so large relative to Pluto that the two bodies are sometimes considered a double system.', 6.4, True, 'Rocky'),
('Iapetus', 4500, 0.0006, 'Iapetus is a moon of Saturn, known for its unique two-tone coloration and mountainous ridges.', 79.3, True, 'Rocky'),
('Hyperion', 4500, 0.0006, 'Hyperion is an irregularly shaped moon of Saturn, known for its spongy texture and low density.', 21.3, True, 'Rocky'),
('Tethys', 4500, 0.0006, 'Tethys is a moon of Saturn with a large, prominent impact crater and a surface primarily made of water ice.', 1.9, True, 'Icy'),
('Pandora', 4500, 0.0006, 'Pandora is a small moon of Saturn, located just outside the rings, and is thought to help maintain the rings shape.', 0.6, True, 'Rocky');

INSERT INTO artificalsatellite(name, under_operation) 
VALUES