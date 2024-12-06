use moviedb;

-- 1. Insert into Company Table
INSERT INTO Company (CompanyID, Name, FoundedYear) VALUES
    (1, 'Warner Bros.', 1923), -- Corrected Founded Year
    (2, 'The Walt Disney Company', 1923),
    (3, 'Universal Pictures', 1912),
    (4, 'Paramount Pictures', 1912),
    (5, 'Sony Pictures', 1987);

-- 2. Insert into Actors Table (Unique Actors Only)
INSERT INTO Actors (ActorID, Name, Nationality) VALUES
    (1, 'Margot Robbie', 'Australian'),
    (2, 'Ryan Gosling', 'Canadian'),
    (3, 'Timothée Chalamet', 'American'),
    (4, 'Zendaya', 'American'),
    (5, 'Robert Pattinson', 'British'),
    (6, 'Zoë Kravitz', 'American'),
    (7, 'Keanu Reeves', 'Canadian'),
    (8, 'Carrie-Anne Moss', 'Canadian'),
    (9, 'Eddie Redmayne', 'British'),
    (10, 'Katherine Waterston', 'American'),
    (11, 'Ryan Reynolds', 'Canadian'),
    (12, 'Hugh Jackman', 'Australian'),
    (13, 'Sam Worthington', 'Australian'),
    (14, 'Zoe Saldana', 'American'),
    (15, 'Chris Evans', 'American'),
    (16, 'Scarlett Johansson', 'American'),
    (17, 'Kristen Bell', 'American'),
    (18, 'Idina Menzel', 'American'),
    (19, 'Stephanie Beatriz', 'American'),
    (20, 'Jessica Darrow', 'American'),
    (21, 'Chris Pratt', 'American'),
    (22, 'Bryce Dallas Howard', 'American'),
    (23, 'Jay Baruchel', 'Canadian'),
    (24, 'America Ferrera', 'American'),
    (25, 'Pierre Coffin', 'French'),
    (26, 'Sandra Bullock', 'American'),
    (27, 'Anya Taylor-Joy', 'British-American'),
    (28, 'Louis C.K.', 'American'),
    (29, 'Jenny Slate', 'American'),
    (30, 'Tom Cruise', 'American'),
    (31, 'Miles Teller', 'American'),
    (32, 'Hayley Atwell', 'British'),
    (33, 'Emily Blunt', 'British'),
    (34, 'John Krasinski', 'American'),
    (35, 'Ben Schwartz', 'American'),
    (36, 'Jim Carrey', 'Canadian'),
    (37, 'Anthony Ramos', 'American'),
    (38, 'Dominique Fishback', 'American'),
    (39, 'Tom Holland', 'British'),
    (40, 'Mark Wahlberg', 'American'),
    (41, 'Finn Wolfhard', 'Canadian'),
    (42, 'Mckenna Grace', 'American'),
    (43, 'Tom Hardy', 'British'),
    (44, 'Woody Harrelson', 'American'),
    (45, 'Jared Leto', 'American'),
    (46, 'Adria Arjona', 'Colombian');

-- 3. Insert into Movies Table
INSERT INTO Movies (MovieID, Title, ReleaseDate, Genre, Duration, AgeRating, CompanyID, AverageScore) VALUES
    (1, 'Barbie', '2023-07-21', 'Fantasy/Comedy', 114, 'PG-13', 1, NULL),
    (2, 'Dune: Part Two', '2024-11-03', 'Sci-Fi/Adventure', 155, 'PG-13', 1, NULL),
    (3, 'The Batman', '2022-03-04', 'Superhero/Action', 176, 'PG-13', 1, NULL),
    (4, 'The Matrix Resurrections', '2021-12-22', 'Sci-Fi/Action', 148, 'R', 1, NULL),
    (5, 'Fantastic Beasts: The Secrets of Dumbledore', '2022-04-06', 'Fantasy', 142, 'PG-13', 1, NULL),
    (6, 'Deadpool & Wolverine', '2024-05-15', 'Superhero/Action', 120, 'R', 2, NULL),
    (7, 'Avatar: The Way of Water', '2022-12-16', 'Sci-Fi/Adventure', 192, 'PG-13', 2, NULL),
    (8, 'Avengers: Endgame', '2019-04-26', 'Superhero/Action', 181, 'PG-13', 2, NULL),
    (9, 'Frozen', '2013-11-27', 'Animation/Family', 102, 'PG', 2, NULL),
    (10, 'Encanto', '2021-11-24', 'Animation/Family', 102, 'PG', 2, NULL),
    (11, 'Jurassic World', '2015-06-12', 'Sci-Fi/Adventure', 124, 'PG-13', 3, NULL),
    (12, 'How to Train Your Dragon', '2010-03-26', 'Animation/Adventure', 98, 'PG', 3, NULL),
    (13, 'Minions', '2015-07-10', 'Animation/Comedy', 91, 'PG', 3, NULL),
    (14, 'The Super Mario Bros. Movie', '2023-04-07', 'Animation/Adventure', 92, 'PG', 3, NULL),
    (15, 'The Secret Life of Pets', '2016-06-17', 'Animation/Comedy', 87, 'PG', 3, NULL),
    (16, 'Top Gun: Maverick', '2022-05-27', 'Action/Drama', 130, 'PG-13', 4, NULL),
    (17, 'Mission: Impossible – Dead Reckoning Part One', '2023-07-12', 'Action/Thriller', 150, 'PG-13', 4, NULL),
    (18, 'A Quiet Place', '2018-04-06', 'Horror/Thriller', 90, 'PG-13', 4, NULL),
    (19, 'Sonic the Hedgehog 2', '2022-04-08', 'Family/Adventure', 122, 'PG', 4, NULL),
    (20, 'Transformers: Rise of the Beasts', '2023-06-09', 'Action/Sci-Fi', 135, 'PG-13', 4, NULL),
    (21, 'Spider-Man: No Way Home', '2021-12-17', 'Superhero/Action', 148, 'PG-13', 5, NULL),
    (22, 'Uncharted', '2022-02-18', 'Action/Adventure', 116, 'PG-13', 5, NULL),
    (23, 'Ghostbusters: Afterlife', '2021-11-19', 'Comedy/Fantasy', 124, 'PG-13', 5, NULL),
    (24, 'Venom: Let There Be Carnage', '2021-10-01', 'Superhero/Horror', 97, 'PG-13', 5, NULL),
    (25, 'Morbius', '2022-03-31', 'Superhero/Horror', 104, 'PG-13', 5, NULL);

-- 4. Insert into MovieActors Table
INSERT INTO MovieActors (MovieID, ActorID, Role) VALUES
    -- Warner Bros.
    (1, 1, 'Barbie'), -- Margot Robbie
    (1, 2, 'Ken'), -- Ryan Gosling
    (2, 3, 'Paul Atreides'), -- Timothée Chalamet
    (2, 4, 'Chani'), -- Zendaya
    (3, 5, 'Bruce Wayne / Batman'), -- Robert Pattinson
    (3, 6, 'Selina Kyle / Catwoman'), -- Zoë Kravitz
    (4, 7, 'Neo'), -- Keanu Reeves
    (4, 8, 'Trinity'), -- Carrie-Anne Moss
    (5, 9, 'Newt Scamander'), -- Eddie Redmayne
    (5, 10, 'Tina Goldstein'), -- Katherine Waterston

    -- The Walt Disney Company
    (6, 11, 'Deadpool'), -- Ryan Reynolds
    (6, 12, 'Wolverine'), -- Hugh Jackman
    (7, 13, 'Jake Sully'), -- Sam Worthington
    (7, 14, 'Neytiri'), -- Zoe Saldana
    (8, 15, 'Steve Rogers / Captain America'), -- Chris Evans
    (8, 16, 'Natasha Romanoff / Black Widow'), -- Scarlett Johansson
    (9, 17, 'Anna (voice)'), -- Kristen Bell
    (9, 18, 'Elsa (voice)'), -- Idina Menzel
    (10, 19, 'Mirabel Madrigal (voice)'), -- Stephanie Beatriz
    (10, 20, 'Luisa Madrigal (voice)'), -- Jessica Darrow

    -- Universal Pictures
    (11, 21, 'Owen Grady'), -- Chris Pratt
    (11, 22, 'Claire Dearing'), -- Bryce Dallas Howard
    (12, 23, 'Hiccup (voice)'), -- Jay Baruchel
    (12, 24, 'Astrid (voice)'), -- America Ferrera
    (13, 25, 'Kevin, Stuart, Bob (voices)'), -- Pierre Coffin
    (13, 26, 'Scarlet Overkill (voice)'), -- Sandra Bullock
    (14, 21, 'Mario (voice)'), -- Chris Pratt
    (14, 27, 'Princess Peach (voice)'), -- Anya Taylor-Joy
    (15, 28, 'Max (voice)'), -- Louis C.K.
    (15, 29, 'Gidget (voice)'), -- Jenny Slate

    -- Paramount Pictures
    (16, 30, 'Capt. Pete ''Maverick'' Mitchell'), -- Tom Cruise
    (16, 31, 'Lt. Bradley ''Rooster'' Bradshaw'), -- Miles Teller
    (17, 30, 'Ethan Hunt'), -- Tom Cruise
    (17, 32, 'Grace'), -- Hayley Atwell
    (18, 33, 'Evelyn Abbott'), -- Emily Blunt
    (18, 34, 'Lee Abbott'), -- John Krasinski
    (19, 35, 'Sonic (voice)'), -- Ben Schwartz
    (19, 36, 'Dr. Robotnik'), -- Jim Carrey
    (20, 37, 'Noah Diaz'), -- Anthony Ramos
    (20, 38, 'Elena Wallace'), -- Dominique Fishback

    -- Sony Pictures
    (21, 39, 'Peter Parker / Spider-Man'), -- Tom Holland
    (21, 4, 'MJ'), -- Zendaya
    (22, 39, 'Nathan Drake'), -- Tom Holland
    (22, 40, 'Victor ''Sully'' Sullivan'), -- Mark Wahlberg
    (23, 41, 'Trevor'), -- Finn Wolfhard
    (23, 42, 'Phoebe'), -- Mckenna Grace
    (24, 43, 'Eddie Brock / Venom'), -- Tom Hardy
    (24, 44, 'Cletus Kasady / Carnage'), -- Woody Harrelson
    (25, 45, 'Dr. Michael Morbius'), -- Jared Leto
    (25, 46, 'Martine Bancroft'); -- Adria Arjona

-- 5. Insert into Earnings Table
INSERT INTO Earnings (EarningsID, MovieID, BoxOfficeGross) VALUES
    (1, 1, 1400000000.00), -- Barbie (2023): ~$1.4 billion
    (2, 2, 850000000.00),   -- Dune: Part Two (2024): Current Gross Estimate: ~$850 million
    (3, 3, 770000000.00), -- The Batman (2022): ~$770 million
    (4, 4, 427000000.00), -- The Matrix Resurrections (2021): ~$427 million
    (5, 5, 403000000.00), -- Fantastic Beasts: The Secrets of Dumbledore (2022): ~$403 million
    (6, 6, 600000000.00), -- Deadpool & Wolverine (2024): Current Gross Estimate: ~$600 million
    (7, 7, 2300000000.00), -- Avatar: The Way of Water (2022): ~$2.3 billion
    (8, 8, 2798000000.00), -- Avengers: Endgame (2019): ~$2.798 billion
    (9, 9, 1280000000.00), -- Frozen (2013): ~$1.28 billion
    (10, 10, 256000000.00), -- Encanto (2021): ~$256 million
    (11, 11, 1670000000.00), -- Jurassic World (2015): ~$1.67 billion
    (12, 12, 494000000.00), -- How to Train Your Dragon (2010): ~$494 million
    (13, 13, 1159000000.00), -- Minions (2015): ~$1.159 billion
    (14, 14, 1360000000.00), -- The Super Mario Bros. Movie (2023): ~$1.36 billion
    (15, 15, 875000000.00), -- The Secret Life of Pets (2016): ~$875 million
    (16, 16, 1488000000.00), -- Top Gun: Maverick (2022): ~$1.488 billion
    (17, 17, 573000000.00), -- Mission: Impossible – Dead Reckoning Part One (2023): ~$573 million
    (18, 18, 340000000.00), -- A Quiet Place (2018): ~$340 million
    (19, 19, 569000000.00), -- Sonic the Hedgehog 2 (2022): ~$569 million
    (20, 20, 1100000000.00), -- Transformers: Rise of the Beasts (2023): ~$1.1 billion
    (21, 21, 1910000000.00), -- Spider-Man: No Way Home (2021): ~$1.91 billion
    (22, 22, 400000000.00), -- Uncharted (2022): ~$400 million
    (23, 23, 160000000.00), -- Ghostbusters: Afterlife (2021): ~$160 million
    (24, 24, 502000000.00), -- Venom: Let There Be Carnage (2021): ~$502 million
    (25, 25, 167000000.00); -- Morbius (2022): ~$167 million

INSERT INTO Reviews (ReviewID, MovieID, ReviewerName, ReviewScore, ReviewDate) VALUES
    -- Movie 1: Barbie
    (1, 1, 'Alice Johnson', 8.2, '2023-07-25'),
    (2, 1, 'Bob Smith', 7.5, '2023-07-30'),
    (3, 1, 'Cathy Brown', 9.0, '2023-08-01'),
    (4, 1, 'David Lee', 8.0, '2023-08-05'),

    -- Movie 2: Dune: Part Two
    (5, 2, 'Eve Adams', 8.5, '2024-11-10'),
    (6, 2, 'Frank Harris', 7.8, '2024-11-15'),
    (7, 2, 'Grace Kim', 9.1, '2024-11-20'),

    -- Movie 3: The Batman
    (8, 3, 'Henry Martinez', 7.9, '2022-03-10'),
    (9, 3, 'Irene Clark', 8.3, '2022-03-15'),
    (10, 3, 'Jack Lewis', 8.7, '2022-03-20'),

    -- Movie 4: The Matrix Resurrections
    (11, 4, 'Karen Walker', 7.6, '2021-12-25'),
    (12, 4, 'Larry Young', 8.1, '2021-12-28'),
    (13, 4, 'Mona King', 7.9, '2022-01-05'),

    -- Movie 5: Fantastic Beasts: The Secrets of Dumbledore
    (14, 5, 'Nate Scott', 8.0, '2022-04-10'),
    (15, 5, 'Olivia Green', 7.7, '2022-04-15'),
    (16, 5, 'Paul Hall', 8.4, '2022-04-20'),
    (17, 5, 'Quincy Baker', 7.5, '2022-04-25'),

    -- Movie 6: Deadpool & Wolverine
    (18, 6, 'Rachel Turner', 8.3, '2024-05-20'),
    (19, 6, 'Sam Phillips', 7.9, '2024-05-25'),
    (20, 6, 'Tina Collins', 8.6, '2024-05-30'),
    (21, 6, 'Uma Murphy', 7.8, '2024-06-05'),

    -- Movie 7: Avatar: The Way of Water
    (22, 7, 'Victor Rivera', 8.5, '2022-12-20'),
    (23, 7, 'Wendy Cooper', 8.2, '2022-12-25'),
    (24, 7, 'Xander Peterson', 9.0, '2023-01-05'),

    -- Movie 8: Avengers: Endgame
    (25, 8, 'Yara Reed', 9.1, '2019-05-01'),
    (26, 8, 'Zack Simmons', 8.8, '2019-05-05'),
    (27, 8, 'Aaron Foster', 9.3, '2019-05-10'),

    -- Movie 9: Frozen
    (28, 9, 'Bella Gray', 8.7, '2013-12-05'),
    (29, 9, 'Caleb Hughes', 8.0, '2013-12-10'),
    (30, 9, 'Diana Russell', 8.5, '2013-12-15'),

    -- Movie 10: Encanto
    (31, 10, 'Ethan Barnes', 7.9, '2021-12-01'),
    (32, 10, 'Fiona Long', 8.2, '2021-12-05'),
    (33, 10, 'George Bell', 8.0, '2021-12-10'),

    -- Movie 11: Jurassic World
    (34, 11, 'Hannah Kelly', 8.3, '2015-06-20'),
    (35, 11, 'Ian Nelson', 7.7, '2015-06-25'),
    (36, 11, 'Jasmine Carter', 8.5, '2015-07-01'),
    (37, 11, 'Kevin Brooks', 7.9, '2015-07-05'),

    -- Movie 12: How to Train Your Dragon
    (38, 12, 'Lily Jenkins', 8.1, '2010-04-01'),
    (39, 12, 'Marcus Powell', 7.6, '2010-04-05'),
    (40, 12, 'Nora Ramirez', 8.4, '2010-04-10'),

    -- Movie 13: Minions
    (41, 13, 'Oscar Flores', 7.8, '2015-07-15'),
    (42, 13, 'Paula Simmons', 8.2, '2015-07-20'),
    (43, 13, 'Quentin Hayes', 8.0, '2015-07-25'),
    (44, 13, 'Rita Barnes', 7.9, '2015-07-30'),

    -- Movie 14: The Super Mario Bros. Movie
    (45, 14, 'Steve Carter', 8.6, '2023-04-15'),
    (46, 14, 'Tara Edwards', 8.3, '2023-04-20'),
    (47, 14, 'Ulysses Foster', 8.9, '2023-04-25'),
    (48, 14, 'Violet Garcia', 8.1, '2023-04-30'),

    -- Movie 15: The Secret Life of Pets
    (49, 15, 'Walter Hughes', 8.0, '2016-06-20'),
    (50, 15, 'Ximena Brooks', 7.8, '2016-06-25'),
    (51, 15, 'Yvonne Powell', 8.2, '2016-07-01'),

    -- Movie 16: Top Gun: Maverick
    (52, 16, 'Zane Foster', 9.0, '2022-06-01'),
    (53, 16, 'Amy Russell', 8.7, '2022-06-05'),
    (54, 16, 'Brian Kelly', 8.5, '2022-06-10'),
    (55, 16, 'Carmen Torres', 8.3, '2022-06-15'),

    -- Movie 17: Mission: Impossible – Dead Reckoning Part One
    (56, 17, 'Derek Simmons', 8.4, '2023-07-20'),
    (57, 17, 'Ella Hayes', 8.0, '2023-07-25'),
    (58, 17, 'Felix Ramirez', 7.9, '2023-07-30'),

    -- Movie 18: A Quiet Place
    (59, 18, 'Gabriella Edwards', 8.1, '2018-04-10'),
    (60, 18, 'Harry Powell', 7.7, '2018-04-15'),
    (61, 18, 'Isabella Hughes', 8.3, '2018-04-20'),

    -- Movie 19: Sonic the Hedgehog 2
    (62, 19, 'Jacob Carter', 7.9, '2022-04-15'),
    (63, 19, 'Kylie Brooks', 8.2, '2022-04-20'),
    (64, 19, 'Landon Kelly', 8.0, '2022-04-25'),

    -- Movie 20: Transformers: Rise of the Beasts
    (65, 20, 'Mia Torres', 8.5, '2023-06-15'),
    (66, 20, 'Noah Foster', 8.1, '2023-06-20'),
    (67, 20, 'Olivia Ramirez', 8.4, '2023-06-25'),
    (68, 20, 'Parker Hughes', 8.2, '2023-06-30'),

    -- Movie 21: Spider-Man: No Way Home
    (69, 21, 'Quinn Brown', 9.2, '2021-12-20'),
    (70, 21, 'Ryan Edwards', 8.8, '2021-12-25'),
    (71, 21, 'Sophia Collins', 9.0, '2021-12-30'),
    (72, 21, 'Tyler Lewis', 8.7, '2022-01-05'),

    -- Movie 22: Uncharted
    (73, 22, 'Uma Martinez', 7.8, '2022-02-20'),
    (74, 22, 'Victor Simmons', 8.1, '2022-02-25'),
    (75, 22, 'Wendy Garcia', 7.9, '2022-03-01'),

    -- Movie 23: Ghostbusters: Afterlife
    (76, 23, 'Xavier Kelly', 7.6, '2021-11-25'),
    (77, 23, 'Yasmine Powell', 8.0, '2021-11-30'),
    (78, 23, 'Zoe Brooks', 7.8, '2021-12-05'),

    -- Movie 24: Venom: Let There Be Carnage
    (79, 24, 'Aiden Ramirez', 8.3, '2021-10-10'),
    (80, 24, 'Bella Martinez', 8.0, '2021-10-15'),
    (81, 24, 'Caleb Edwards', 8.2, '2021-10-20'),
    (82, 24, 'Daisy Kelly', 7.9, '2021-10-25'),

    -- Movie 25: Morbius
    (83, 25, 'Eli Turner', 7.7, '2022-04-01'),
    (84, 25, 'Fiona Clark', 8.1, '2022-04-05'),
    (85, 25, 'Gavin Lewis', 7.9, '2022-04-10'),
    (86, 25, 'Holly Davis', 8.0, '2022-04-15');

-- Update AverageScore in Movies Table
UPDATE Movies
SET AverageScore = (
    SELECT ROUND(AVG(ReviewScore), 1)
    FROM Reviews
    WHERE Reviews.MovieID = Movies.MovieID
)
WHERE MovieID IN (SELECT DISTINCT MovieID FROM Reviews);

