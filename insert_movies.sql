
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Godfather'
                AND ReleaseYear = '1972'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Godfather',
                    '2h 55m',
                    9.2,
                    NULL,
                    NULL,
                    '1972',
                    'Crime',
                    'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Francis'
                AND LastName = 'Ford Coppola'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Francis', 
                    'Ford Coppola',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Francis' 
                AND d.LastName = 'Ford Coppola' 
                AND m.Title = 'The Godfather'
                AND m.ReleaseYear = '1972'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Francis' AND LastName = 'Ford Coppola'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Godfather' AND ReleaseYear = '1972')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Goodfellas'
                AND ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Goodfellas',
                    '2h 25m',
                    8.7,
                    NULL,
                    NULL,
                    '1990',
                    'Biography',
                    'The story of Henry Hill and his life in the mafia, covering his relationship with his wife Karen and his mob partners Jimmy Conway and Tommy DeVito.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Martin'
                AND LastName = 'Scorsese'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Martin', 
                    'Scorsese',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Martin' 
                AND d.LastName = 'Scorsese' 
                AND m.Title = 'Goodfellas'
                AND m.ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Goodfellas' AND ReleaseYear = '1990')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Pulp Fiction'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Pulp Fiction',
                    '2h 34m',
                    8.9,
                    NULL,
                    NULL,
                    '1994',
                    'Crime',
                    'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Quentin'
                AND LastName = 'Tarantino'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Quentin', 
                    'Tarantino',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Quentin' 
                AND d.LastName = 'Tarantino' 
                AND m.Title = 'Pulp Fiction'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Quentin' AND LastName = 'Tarantino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Pulp Fiction' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Usual Suspects'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Usual Suspects',
                    '1h 46m',
                    8.5,
                    NULL,
                    NULL,
                    '1995',
                    'Psychological Thriller',
                    'The sole survivor of a pier shoot-out tells the story of how a notorious criminal influenced the events that began with five criminals meeting in a seemingly random police lineup.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Bryan'
                AND LastName = 'Singer'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Bryan', 
                    'Singer',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Bryan' 
                AND d.LastName = 'Singer' 
                AND m.Title = 'The Usual Suspects'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Bryan' AND LastName = 'Singer'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Usual Suspects' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Apocalypse Now'
                AND ReleaseYear = '1979'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Apocalypse Now',
                    '2h 27m',
                    8.4,
                    NULL,
                    NULL,
                    '1979',
                    'Quest',
                    'A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Francis'
                AND LastName = 'Ford Coppola'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Francis', 
                    'Ford Coppola',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Francis' 
                AND d.LastName = 'Ford Coppola' 
                AND m.Title = 'Apocalypse Now'
                AND m.ReleaseYear = '1979'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Francis' AND LastName = 'Ford Coppola'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Apocalypse Now' AND ReleaseYear = '1979')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Trainspotting'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Trainspotting',
                    '1h 33m',
                    8.1,
                    NULL,
                    NULL,
                    '1996',
                    'N/A',
                    'Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out despite the allure of drugs and the influence of friends.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Danny'
                AND LastName = 'Boyle'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Danny', 
                    'Boyle',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Danny' 
                AND d.LastName = 'Boyle' 
                AND m.Title = 'Trainspotting'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Danny' AND LastName = 'Boyle'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Trainspotting' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Fight Club'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Fight Club',
                    '2h 19m',
                    8.8,
                    NULL,
                    NULL,
                    '1999',
                    'N/A',
                    'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Fincher'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Fincher',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'David' 
                AND d.LastName = 'Fincher' 
                AND m.Title = 'Fight Club'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Fincher'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Fight Club' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Schindler''s List'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Schindler''s List',
                    '3h 15m',
                    9.0,
                    NULL,
                    NULL,
                    '1993',
                    'Period Drama',
                    'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Steven'
                AND LastName = 'Spielberg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Steven', 
                    'Spielberg',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Steven' 
                AND d.LastName = 'Spielberg' 
                AND m.Title = 'Schindler''s List'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Schindler''s List' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Boogie Nights'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Boogie Nights',
                    '2h 35m',
                    7.9,
                    NULL,
                    NULL,
                    '1997',
                    'N/A',
                    'An idealistic porn producer aspires to elevate his craft to an art when he discovers a hot young talent.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Thomas Anderson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Thomas Anderson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Paul' 
                AND d.LastName = 'Thomas Anderson' 
                AND m.Title = 'Boogie Nights'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Thomas Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Boogie Nights' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Reservoir Dogs'
                AND ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Reservoir Dogs',
                    '1h 39m',
                    8.3,
                    NULL,
                    NULL,
                    '1992',
                    'Thriller',
                    'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Quentin'
                AND LastName = 'Tarantino'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Quentin', 
                    'Tarantino',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Quentin' 
                AND d.LastName = 'Tarantino' 
                AND m.Title = 'Reservoir Dogs'
                AND m.ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Quentin' AND LastName = 'Tarantino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Reservoir Dogs' AND ReleaseYear = '1992')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Shawshank Redemption'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Shawshank Redemption',
                    '2h 22m',
                    9.3,
                    NULL,
                    NULL,
                    '1994',
                    'Drama',
                    'A banker convicted of uxoricide forms a friendship over a quarter century with a hardened convict, while maintaining his innocence and trying to remain hopeful through simple compassion.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Frank'
                AND LastName = 'Darabont'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Frank', 
                    'Darabont',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Frank' 
                AND d.LastName = 'Darabont' 
                AND m.Title = 'The Shawshank Redemption'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Frank' AND LastName = 'Darabont'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Shawshank Redemption' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Jaws'
                AND ReleaseYear = '1975'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Jaws',
                    '2h 4m',
                    8.1,
                    NULL,
                    NULL,
                    '1975',
                    'Drama',
                    'When a massive killer shark unleashes chaos on a beach community off Long Island, it''s up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Steven'
                AND LastName = 'Spielberg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Steven', 
                    'Spielberg',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Steven' 
                AND d.LastName = 'Spielberg' 
                AND m.Title = 'Jaws'
                AND m.ReleaseYear = '1975'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Jaws' AND ReleaseYear = '1975')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Taxi Driver'
                AND ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Taxi Driver',
                    '1h 54m',
                    8.2,
                    NULL,
                    NULL,
                    '1976',
                    'N/A',
                    'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Martin'
                AND LastName = 'Scorsese'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Martin', 
                    'Scorsese',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Martin' 
                AND d.LastName = 'Scorsese' 
                AND m.Title = 'Taxi Driver'
                AND m.ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Taxi Driver' AND ReleaseYear = '1976')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'L.A. Confidential'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'L.A. Confidential',
                    '2h 18m',
                    8.2,
                    NULL,
                    NULL,
                    '1997',
                    'Period Drama',
                    'As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Curtis'
                AND LastName = 'Hanson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Curtis', 
                    'Hanson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Curtis' 
                AND d.LastName = 'Hanson' 
                AND m.Title = 'L.A. Confidential'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Curtis' AND LastName = 'Hanson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'L.A. Confidential' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Back to the Future'
                AND ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Back to the Future',
                    '1h 56m',
                    8.5,
                    NULL,
                    NULL,
                    '1985',
                    'Time Travel',
                    'Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'Zemeckis'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'Zemeckis',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Robert' 
                AND d.LastName = 'Zemeckis' 
                AND m.Title = 'Back to the Future'
                AND m.ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Zemeckis'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Back to the Future' AND ReleaseYear = '1985')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Godfather Part II'
                AND ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Godfather Part II',
                    '3h 22m',
                    9.0,
                    NULL,
                    NULL,
                    '1974',
                    'Crime',
                    'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Francis'
                AND LastName = 'Ford Coppola'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Francis', 
                    'Ford Coppola',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Francis' 
                AND d.LastName = 'Ford Coppola' 
                AND m.Title = 'The Godfather Part II'
                AND m.ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Francis' AND LastName = 'Ford Coppola'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Godfather Part II' AND ReleaseYear = '1974')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Fargo'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Fargo',
                    '1h 38m',
                    8.1,
                    NULL,
                    NULL,
                    '1996',
                    'Tragedy',
                    'Minnesota car salesman Jerry Lundegaard''s inept crime falls apart due to his and his henchmen''s bungling and the persistent police work of the quite pregnant Marge Gunderson.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Joel'
                AND LastName = 'Coen, Ethan Coen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Joel', 
                    'Coen, Ethan Coen',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Joel' 
                AND d.LastName = 'Coen, Ethan Coen' 
                AND m.Title = 'Fargo'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joel' AND LastName = 'Coen, Ethan Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Fargo' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Dark Knight'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Dark Knight',
                    '2h 32m',
                    9.0,
                    NULL,
                    NULL,
                    '2008',
                    'Action',
                    'When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness.',
                    'PG-13'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Christopher'
                AND LastName = 'Nolan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Christopher', 
                    'Nolan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Christopher' 
                AND d.LastName = 'Nolan' 
                AND m.Title = 'The Dark Knight'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Christopher' AND LastName = 'Nolan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Dark Knight' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Matrix'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Matrix',
                    '2h 16m',
                    8.7,
                    NULL,
                    NULL,
                    '1999',
                    'Dystopian Sci-Fi',
                    'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Lana'
                AND LastName = 'Wachowski, Lilly Wachowski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Lana', 
                    'Wachowski, Lilly Wachowski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Lana' 
                AND d.LastName = 'Wachowski, Lilly Wachowski' 
                AND m.Title = 'The Matrix'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Lana' AND LastName = 'Wachowski, Lilly Wachowski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Matrix' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Magnolia'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Magnolia',
                    '3h 8m',
                    8.0,
                    NULL,
                    NULL,
                    '1999',
                    'N/A',
                    'An epic mosaic of interrelated characters in search of love, forgiveness and meaning in the San Fernando Valley.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Thomas Anderson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Thomas Anderson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Paul' 
                AND d.LastName = 'Thomas Anderson' 
                AND m.Title = 'Magnolia'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Thomas Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Magnolia' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Scarface'
                AND ReleaseYear = '1983'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Scarface',
                    '2h 50m',
                    8.3,
                    NULL,
                    NULL,
                    '1983',
                    'Tragedy',
                    'Miami in the 1980s: a determined criminal-minded Cuban immigrant becomes the biggest drug smuggler in Florida, and is eventually undone by his own drug addiction.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Brian'
                AND LastName = 'De Palma'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Brian', 
                    'De Palma',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Brian' 
                AND d.LastName = 'De Palma' 
                AND m.Title = 'Scarface'
                AND m.ReleaseYear = '1983'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Brian' AND LastName = 'De Palma'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Scarface' AND ReleaseYear = '1983')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Royal Tenenbaums'
                AND ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Royal Tenenbaums',
                    '1h 50m',
                    7.6,
                    NULL,
                    NULL,
                    '2001',
                    'N/A',
                    'The eccentric members of a dysfunctional family reluctantly gather under the same roof for various reasons.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Wes'
                AND LastName = 'Anderson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Wes', 
                    'Anderson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Wes' 
                AND d.LastName = 'Anderson' 
                AND m.Title = 'The Royal Tenenbaums'
                AND m.ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wes' AND LastName = 'Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Royal Tenenbaums' AND ReleaseYear = '2001')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Donnie Darko'
                AND ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Donnie Darko',
                    '1h 53m',
                    8.0,
                    NULL,
                    NULL,
                    '2001',
                    'Drama',
                    'After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Richard'
                AND LastName = 'Kelly'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Richard', 
                    'Kelly',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Richard' 
                AND d.LastName = 'Kelly' 
                AND m.Title = 'Donnie Darko'
                AND m.ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Richard' AND LastName = 'Kelly'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Donnie Darko' AND ReleaseYear = '2001')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Platoon'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Platoon',
                    '2h',
                    8.1,
                    NULL,
                    NULL,
                    '1986',
                    'N/A',
                    'Chris Taylor, a neophyte recruit in Vietnam, finds himself caught in a battle of wills between two sergeants, one good and the other evil. A shrewd examination of the brutality of war and the duality of man in conflict.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Oliver'
                AND LastName = 'Stone'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Oliver', 
                    'Stone',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Oliver' 
                AND d.LastName = 'Stone' 
                AND m.Title = 'Platoon'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Oliver' AND LastName = 'Stone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Platoon' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Heat'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Heat',
                    '2h 50m',
                    8.3,
                    NULL,
                    NULL,
                    '1995',
                    'Heist',
                    'A group of high-end professional thieves start to feel the heat from the LAPD when they unknowingly leave a verbal clue at their latest heist.',
                    'R'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Mann'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Mann',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Michael' 
                AND d.LastName = 'Mann' 
                AND m.Title = 'Heat'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Mann'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Heat' AND ReleaseYear = '1995')
                );
            END;
            