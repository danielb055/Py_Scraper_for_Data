
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
                    '15'
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
                WHERE Title = 'GoodFellas'
                AND ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'GoodFellas',
                    '2h 25m',
                    8.7,
                    NULL,
                    NULL,
                    '1990',
                    'Biography',
                    'The story of Henry Hill and his life in the mafia, covering his relationship with his wife Karen and his mob partners Jimmy Conway and Tommy DeVito.',
                    '18'
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
                AND m.Title = 'GoodFellas'
                AND m.ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'GoodFellas' AND ReleaseYear = '1990')
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
                    '18'
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
                    '18'
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
                    'X'
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
                    '18'
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
                    '15'
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
                    '15'
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
                    '18'
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
                    '18'
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
                    '15'
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
                    '18'
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
                    '18'
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
                    'X'
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
                    '18'
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
                    '12A'
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
                    '15'
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
                    '18'
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
                    '18'
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
                    '15'
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
                    '15'
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
                    '15'
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
                    '15'
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
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'American Beauty'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'American Beauty',
                    '2h 2m',
                    8.3,
                    NULL,
                    NULL,
                    '1999',
                    'N/A',
                    'A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter''s best friend.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sam'
                AND LastName = 'Mendes'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sam', 
                    'Mendes',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sam' 
                AND d.LastName = 'Mendes' 
                AND m.Title = 'American Beauty'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sam' AND LastName = 'Mendes'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'American Beauty' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Big Lebowski'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Big Lebowski',
                    '1h 57m',
                    8.1,
                    NULL,
                    NULL,
                    '1998',
                    'Comedy',
                    'Jeff "The Dude" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.',
                    '18'
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
                AND m.Title = 'The Big Lebowski'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joel' AND LastName = 'Coen, Ethan Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Big Lebowski' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Raging Bull'
                AND ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Raging Bull',
                    '2h 9m',
                    8.1,
                    NULL,
                    NULL,
                    '1980',
                    'Drama',
                    'The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.',
                    'X'
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
                AND m.Title = 'Raging Bull'
                AND m.ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Raging Bull' AND ReleaseYear = '1980')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Prophet'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Prophet',
                    '2h 35m',
                    7.8,
                    NULL,
                    NULL,
                    '2009',
                    'N/A',
                    'A delinquent Muslim man struggles to get by in prison until he is taken under the wing of a powerful mob boss. But his gradual rise through the mob''s ranks brings him in conflict with his mentor.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jacques'
                AND LastName = 'Audiard'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jacques', 
                    'Audiard',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jacques' 
                AND d.LastName = 'Audiard' 
                AND m.Title = 'A Prophet'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jacques' AND LastName = 'Audiard'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Prophet' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Departed'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Departed',
                    '2h 31m',
                    8.5,
                    NULL,
                    NULL,
                    '2006',
                    'Crime',
                    'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.',
                    '18'
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
                AND m.Title = 'The Departed'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Departed' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'There''s Something About Mary'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'There''s Something About Mary',
                    '1h 59m',
                    7.1,
                    NULL,
                    NULL,
                    '1998',
                    'Romance',
                    'A man gets a chance to meet up with his dream girl from high school, even though his date with her back then was a complete disaster.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Bobby'
                AND LastName = 'Farrelly, Peter Farrelly'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Bobby', 
                    'Farrelly, Peter Farrelly',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Bobby' 
                AND d.LastName = 'Farrelly, Peter Farrelly' 
                AND m.Title = 'There''s Something About Mary'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Bobby' AND LastName = 'Farrelly, Peter Farrelly'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'There''s Something About Mary' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Leon'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Leon',
                    '1h 50m',
                    8.5,
                    NULL,
                    NULL,
                    '1994',
                    'Crime',
                    '12-year-old Mathilda is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin''s trade.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Luc'
                AND LastName = 'Besson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Luc', 
                    'Besson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Luc' 
                AND d.LastName = 'Besson' 
                AND m.Title = 'Leon'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Luc' AND LastName = 'Besson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Leon' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'City of God'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'City of God',
                    '2h 10m',
                    8.6,
                    NULL,
                    NULL,
                    '2002',
                    'Crime',
                    'In the slums of Rio, two kids'' paths diverge as one struggles to become a photographer and the other a kingpin.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Fernando'
                AND LastName = 'Meirelles, Kátia Lund'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Fernando', 
                    'Meirelles, Kátia Lund',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Fernando' 
                AND d.LastName = 'Meirelles, Kátia Lund' 
                AND m.Title = 'City of God'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Fernando' AND LastName = 'Meirelles, Kátia Lund'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'City of God' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Once Upon a Time in America'
                AND ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Once Upon a Time in America',
                    '3h 49m',
                    8.3,
                    NULL,
                    NULL,
                    '1984',
                    'Period Drama',
                    'A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan 35 years later, where he must once again confront the ghosts and regrets of his old life.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sergio'
                AND LastName = 'Leone'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sergio', 
                    'Leone',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sergio' 
                AND d.LastName = 'Leone' 
                AND m.Title = 'Once Upon a Time in America'
                AND m.ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sergio' AND LastName = 'Leone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Once Upon a Time in America' AND ReleaseYear = '1984')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Lock, Stock and Two Smoking Barrels'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Lock, Stock and Two Smoking Barrels',
                    '1h 47m',
                    8.1,
                    NULL,
                    NULL,
                    '1998',
                    'Crime',
                    'When four small-time criminals lose a rigged poker game against a London kingpin, he gives them one week to settle their enormous debt.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Guy'
                AND LastName = 'Ritchie'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Guy', 
                    'Ritchie',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Guy' 
                AND d.LastName = 'Ritchie' 
                AND m.Title = 'Lock, Stock and Two Smoking Barrels'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Guy' AND LastName = 'Ritchie'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Lock, Stock and Two Smoking Barrels' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Truman Show'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Truman Show',
                    '1h 43m',
                    8.2,
                    NULL,
                    NULL,
                    '1998',
                    'Satire',
                    'An insurance salesman discovers his whole life is actually a reality TV show.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Weir'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Weir',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Weir' 
                AND m.Title = 'The Truman Show'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Weir'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Truman Show' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Toy Story'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Toy Story',
                    '1h 21m',
                    8.3,
                    NULL,
                    NULL,
                    '1995',
                    'Urban Adventure',
                    'A cowboy doll is profoundly threatened and jealous when a new spaceman action figure supplants him as top toy in a boy''s bedroom.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Lasseter'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Lasseter',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Lasseter' 
                AND m.Title = 'Toy Story'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Lasseter'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Toy Story' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Alien'
                AND ReleaseYear = '1979'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Alien',
                    '1h 57m',
                    8.5,
                    NULL,
                    NULL,
                    '1979',
                    'Horror',
                    'After investigating a mysterious transmission of unknown origin, the crew of a commercial spacecraft encounters a deadly lifeform.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ridley'
                AND LastName = 'Scott'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ridley', 
                    'Scott',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ridley' 
                AND d.LastName = 'Scott' 
                AND m.Title = 'Alien'
                AND m.ReleaseYear = '1979'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ridley' AND LastName = 'Scott'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Alien' AND ReleaseYear = '1979')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Rushmore'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Rushmore',
                    '1h 33m',
                    7.6,
                    NULL,
                    NULL,
                    '1998',
                    'Comedy',
                    'A teenager at Rushmore Academy falls for a much older teacher and befriends a middle-aged industrialist. Later, he finds out that his love interest and his friend are having an affair, which prompts him to begin a vendetta.',
                    '15'
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
                AND m.Title = 'Rushmore'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wes' AND LastName = 'Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Rushmore' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Seven'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Seven',
                    '2h 7m',
                    8.6,
                    NULL,
                    NULL,
                    '1995',
                    'Police Procedural',
                    'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.',
                    '18'
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
                AND m.Title = 'Seven'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Fincher'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Seven' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Good Will Hunting'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Good Will Hunting',
                    '2h 6m',
                    8.3,
                    NULL,
                    NULL,
                    '1997',
                    'Romance',
                    'Will Hunting, a janitor at MIT, has a gift for mathematics, but needs help from a psychologist to find direction in his life.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Gus'
                AND LastName = 'Van Sant'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Gus', 
                    'Van Sant',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Gus' 
                AND d.LastName = 'Van Sant' 
                AND m.Title = 'Good Will Hunting'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Gus' AND LastName = 'Van Sant'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Good Will Hunting' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Aliens'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Aliens',
                    '2h 17m',
                    8.4,
                    NULL,
                    NULL,
                    '1986',
                    'Action',
                    'Decades after surviving the Nostromo incident, Ellen Ripley is sent out to re-establish contact with a terraforming colony but finds herself battling the Alien Queen and her offspring.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Cameron'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Cameron',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Cameron' 
                AND m.Title = 'Aliens'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Cameron'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Aliens' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Exorcist'
                AND ReleaseYear = '1973'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Exorcist',
                    '2h 2m',
                    8.1,
                    NULL,
                    NULL,
                    '1973',
                    'N/A',
                    'When a mysterious entity possesses a young girl, her mother seeks the help of two Catholic priests to save her life.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'William'
                AND LastName = 'Friedkin'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'William', 
                    'Friedkin',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'William' 
                AND d.LastName = 'Friedkin' 
                AND m.Title = 'The Exorcist'
                AND m.ReleaseYear = '1973'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'William' AND LastName = 'Friedkin'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Exorcist' AND ReleaseYear = '1973')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'One Flew Over the Cuckoo''s Nest'
                AND ReleaseYear = '1975'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'One Flew Over the Cuckoo''s Nest',
                    '2h 13m',
                    8.7,
                    NULL,
                    NULL,
                    '1975',
                    'N/A',
                    'In the Fall of 1963, a Korean War veteran and criminal pleads insanity and is admitted to a mental institution, where he rallies up the scared patients against the tyrannical nurse.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Milos'
                AND LastName = 'Forman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Milos', 
                    'Forman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Milos' 
                AND d.LastName = 'Forman' 
                AND m.Title = 'One Flew Over the Cuckoo''s Nest'
                AND m.ReleaseYear = '1975'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Milos' AND LastName = 'Forman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'One Flew Over the Cuckoo''s Nest' AND ReleaseYear = '1975')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Chinatown'
                AND ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Chinatown',
                    '2h 10m',
                    8.1,
                    NULL,
                    NULL,
                    '1974',
                    'Psychological Thriller',
                    'A private detective hired to expose an adulterer in 1930s Los Angeles finds himself caught up in a web of deceit, corruption, and murder.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Roman'
                AND LastName = 'Polanski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Roman', 
                    'Polanski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Roman' 
                AND d.LastName = 'Polanski' 
                AND m.Title = 'Chinatown'
                AND m.ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Roman' AND LastName = 'Polanski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Chinatown' AND ReleaseYear = '1974')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Casino'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Casino',
                    '2h 58m',
                    8.2,
                    NULL,
                    NULL,
                    '1995',
                    'True Crime',
                    'In Las Vegas, two best friends--a casino executive and a Mafia enforcer--compete for a gambling empire and a fast-living, fast-loving socialite.',
                    '18'
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
                AND m.Title = 'Casino'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Casino' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'True Romance'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'True Romance',
                    '1h 59m',
                    7.9,
                    NULL,
                    NULL,
                    '1993',
                    'Drama',
                    'In Detroit, a pop-culture nerd steals cocaine from his new wife''s pimp and tries to sell it in Hollywood, prompting the mobsters who own the drugs to pursue the couple.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tony'
                AND LastName = 'Scott'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tony', 
                    'Scott',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tony' 
                AND d.LastName = 'Scott' 
                AND m.Title = 'True Romance'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tony' AND LastName = 'Scott'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'True Romance' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Gladiator'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Gladiator',
                    '2h 35m',
                    8.5,
                    NULL,
                    NULL,
                    '2000',
                    'Period Drama',
                    'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ridley'
                AND LastName = 'Scott'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ridley', 
                    'Scott',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ridley' 
                AND d.LastName = 'Scott' 
                AND m.Title = 'Gladiator'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ridley' AND LastName = 'Scott'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Gladiator' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Raiders of the Lost Ark'
                AND ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Raiders of the Lost Ark',
                    '1h 55m',
                    8.4,
                    NULL,
                    NULL,
                    '1981',
                    'Quest',
                    'In 1936, archaeologists and adventurers of the U.S. government hired Indiana Jones to find the Ark of the Covenant before the Nazis could obtain its extraordinary powers.',
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
                AND m.Title = 'Raiders of the Lost Ark'
                AND m.ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Raiders of the Lost Ark' AND ReleaseYear = '1981')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Miller''s Crossing'
                AND ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Miller''s Crossing',
                    '1h 55m',
                    7.7,
                    NULL,
                    NULL,
                    '1990',
                    'Crime',
                    'Tom Reagan, an advisor to a Prohibition-era crime boss, tries to keep the peace between warring mobs but gets caught in divided loyalties.',
                    '18'
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
                AND m.Title = 'Miller''s Crossing'
                AND m.ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joel' AND LastName = 'Coen, Ethan Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Miller''s Crossing' AND ReleaseYear = '1990')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Being John Malkovich'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Being John Malkovich',
                    '1h 53m',
                    7.7,
                    NULL,
                    NULL,
                    '1999',
                    'Showbiz Drama',
                    'A puppeteer discovers a portal that leads literally into the head of movie star John Malkovich.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Spike'
                AND LastName = 'Jonze'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Spike', 
                    'Jonze',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Spike' 
                AND d.LastName = 'Jonze' 
                AND m.Title = 'Being John Malkovich'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Spike' AND LastName = 'Jonze'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Being John Malkovich' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Die Hard'
                AND ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Die Hard',
                    '2h 12m',
                    8.2,
                    NULL,
                    NULL,
                    '1988',
                    'Thriller',
                    'A New York City police officer tries to save his estranged wife and several others taken hostage by terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'McTiernan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'McTiernan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'McTiernan' 
                AND m.Title = 'Die Hard'
                AND m.ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'McTiernan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Die Hard' AND ReleaseYear = '1988')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Casablanca'
                AND ReleaseYear = '1942'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Casablanca',
                    '1h 42m',
                    8.5,
                    NULL,
                    NULL,
                    '1942',
                    'N/A',
                    'A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Curtiz'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Curtiz',
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
                AND d.LastName = 'Curtiz' 
                AND m.Title = 'Casablanca'
                AND m.ReleaseYear = '1942'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Curtiz'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Casablanca' AND ReleaseYear = '1942')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Kick-Ass'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Kick-Ass',
                    '1h 57m',
                    7.6,
                    NULL,
                    NULL,
                    '2010',
                    'Action',
                    'Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a superhero, even though he has no powers, training or meaningful reason to do so.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Matthew'
                AND LastName = 'Vaughn'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Matthew', 
                    'Vaughn',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Matthew' 
                AND d.LastName = 'Vaughn' 
                AND m.Title = 'Kick-Ass'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Matthew' AND LastName = 'Vaughn'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Kick-Ass' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Prestige'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Prestige',
                    '2h 10m',
                    8.5,
                    NULL,
                    NULL,
                    '2006',
                    'Drama',
                    'Rival 19th-century magicians engage in a bitter battle for trade secrets.',
                    '12A'
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
                AND m.Title = 'The Prestige'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Christopher' AND LastName = 'Nolan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Prestige' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Inglourious Basterds'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Inglourious Basterds',
                    '2h 33m',
                    8.4,
                    NULL,
                    NULL,
                    '2009',
                    'Drama',
                    'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same.',
                    '18'
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
                AND m.Title = 'Inglourious Basterds'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Quentin' AND LastName = 'Tarantino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Inglourious Basterds' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Evil Dead II'
                AND ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Evil Dead II',
                    '1h 24m',
                    7.7,
                    NULL,
                    NULL,
                    '1987',
                    'Supernatural Horror',
                    'Ash Williams, the lone survivor of an earlier onslaught of flesh-possessing spirits, holes up in a cabin with a group of strangers while the demons continue their attack.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sam'
                AND LastName = 'Raimi'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sam', 
                    'Raimi',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sam' 
                AND d.LastName = 'Raimi' 
                AND m.Title = 'Evil Dead II'
                AND m.ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sam' AND LastName = 'Raimi'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Evil Dead II' AND ReleaseYear = '1987')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Jurassic Park'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Jurassic Park',
                    '2h 7m',
                    8.2,
                    NULL,
                    NULL,
                    '1993',
                    'Adventure',
                    'An industrialist invites some experts to visit his theme park of cloned dinosaurs. After a power failure, the creatures run loose, putting everyone''s lives, including his grandchildren''s, in danger.',
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
                AND m.Title = 'Jurassic Park'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Jurassic Park' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Batman Begins'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Batman Begins',
                    '2h 20m',
                    8.2,
                    NULL,
                    NULL,
                    '2005',
                    'Tragedy',
                    'After witnessing his parents'' death, Bruce learns the art of fighting to confront injustice. When he returns to Gotham as Batman, he must stop a secret society that intends to destroy the city.',
                    '12A'
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
                AND m.Title = 'Batman Begins'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Christopher' AND LastName = 'Nolan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Batman Begins' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Green Mile'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Green Mile',
                    '3h 9m',
                    8.6,
                    NULL,
                    NULL,
                    '1999',
                    'Tragedy',
                    'Paul Edgecomb, the head guard of a prison, meets an inmate, John Coffey, a black man who is accused of murdering two girls. His life changes drastically when he discovers that John has a special gift.',
                    '18'
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
                AND m.Title = 'The Green Mile'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Frank' AND LastName = 'Darabont'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Green Mile' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The French Connection'
                AND ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The French Connection',
                    '1h 44m',
                    7.7,
                    NULL,
                    NULL,
                    '1971',
                    'Action',
                    'A pair of NYPD detectives in the Narcotics Bureau stumble onto a heroin smuggling ring based in Marseilles, but stopping them and capturing their leaders proves an elusive goal.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'William'
                AND LastName = 'Friedkin'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'William', 
                    'Friedkin',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'William' 
                AND d.LastName = 'Friedkin' 
                AND m.Title = 'The French Connection'
                AND m.ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'William' AND LastName = 'Friedkin'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The French Connection' AND ReleaseYear = '1971')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Unforgiven'
                AND ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Unforgiven',
                    '2h 10m',
                    8.2,
                    NULL,
                    NULL,
                    '1992',
                    'Western',
                    'Retired Old West gunslinger Will Munny reluctantly takes on one last job to avenge an injustice with the help of his old partner and a newer outlaw known simply as The Schofield Kid.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Clint'
                AND LastName = 'Eastwood'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Clint', 
                    'Eastwood',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Clint' 
                AND d.LastName = 'Eastwood' 
                AND m.Title = 'Unforgiven'
                AND m.ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Clint' AND LastName = 'Eastwood'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Unforgiven' AND ReleaseYear = '1992')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Drive'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Drive',
                    '1h 40m',
                    7.8,
                    NULL,
                    NULL,
                    '2011',
                    'Drama',
                    'A mysterious Hollywood action film stuntman gets in trouble with gangsters when he tries to help his neighbor''s husband rob a pawn shop while serving as his getaway driver.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Nicolas'
                AND LastName = 'Winding Refn'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Nicolas', 
                    'Winding Refn',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Nicolas' 
                AND d.LastName = 'Winding Refn' 
                AND m.Title = 'Drive'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Nicolas' AND LastName = 'Winding Refn'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Drive' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Shining'
                AND ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Shining',
                    '2h 26m',
                    8.4,
                    NULL,
                    NULL,
                    '1980',
                    'Drama',
                    'A family heads to an isolated hotel for the winter, where a sinister presence influences the father into violence. At the same time, his psychic son sees horrifying forebodings from both the past and the future.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stanley'
                AND LastName = 'Kubrick'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stanley', 
                    'Kubrick',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stanley' 
                AND d.LastName = 'Kubrick' 
                AND m.Title = 'The Shining'
                AND m.ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stanley' AND LastName = 'Kubrick'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Shining' AND ReleaseYear = '1980')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Evil Dead'
                AND ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Evil Dead',
                    '1h 25m',
                    7.4,
                    NULL,
                    NULL,
                    '1981',
                    'Teen Horror',
                    'Five friends travel to a cabin in the woods, where they unknowingly release flesh-possessing demons.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sam'
                AND LastName = 'Raimi'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sam', 
                    'Raimi',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sam' 
                AND d.LastName = 'Raimi' 
                AND m.Title = 'The Evil Dead'
                AND m.ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sam' AND LastName = 'Raimi'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Evil Dead' AND ReleaseYear = '1981')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Forrest Gump'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Forrest Gump',
                    '2h 22m',
                    8.8,
                    NULL,
                    NULL,
                    '1994',
                    'N/A',
                    'The history of the United States from the 1950s to the ''70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.',
                    '12'
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
                AND m.Title = 'Forrest Gump'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Zemeckis'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Forrest Gump' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Thing'
                AND ReleaseYear = '1982'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Thing',
                    '1h 49m',
                    8.2,
                    NULL,
                    NULL,
                    '1982',
                    'Supernatural Horror',
                    'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Carpenter'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Carpenter',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Carpenter' 
                AND m.Title = 'The Thing'
                AND m.ReleaseYear = '1982'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Carpenter'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Thing' AND ReleaseYear = '1982')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Citizen Kane'
                AND ReleaseYear = '1941'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Citizen Kane',
                    '1h 59m',
                    8.3,
                    NULL,
                    NULL,
                    '1941',
                    'N/A',
                    'Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance: ''Rosebud.''',
                    'A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Orson'
                AND LastName = 'Welles'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Orson', 
                    'Welles',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Orson' 
                AND d.LastName = 'Welles' 
                AND m.Title = 'Citizen Kane'
                AND m.ReleaseYear = '1941'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Orson' AND LastName = 'Welles'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Citizen Kane' AND ReleaseYear = '1941')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Blue Velvet'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Blue Velvet',
                    '2h',
                    7.7,
                    NULL,
                    NULL,
                    '1986',
                    'Drama',
                    'The discovery of a severed human ear found in a field leads a young man on an investigation related to a beautiful, mysterious nightclub singer and a group of psychopathic criminals who have kidnapped her child.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Lynch'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Lynch',
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
                AND d.LastName = 'Lynch' 
                AND m.Title = 'Blue Velvet'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Lynch'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Blue Velvet' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Wicker Man'
                AND ReleaseYear = '1973'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Wicker Man',
                    '1h 28m',
                    7.5,
                    NULL,
                    NULL,
                    '1973',
                    'Mystery',
                    'A puritan police sergeant arrives in a Scottish island village in search of a missing girl, who the pagan locals claim never existed.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robin'
                AND LastName = 'Hardy'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robin', 
                    'Hardy',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Robin' 
                AND d.LastName = 'Hardy' 
                AND m.Title = 'The Wicker Man'
                AND m.ReleaseYear = '1973'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robin' AND LastName = 'Hardy'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Wicker Man' AND ReleaseYear = '1973')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Eternal Sunshine of the Spotless Mind'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Eternal Sunshine of the Spotless Mind',
                    '1h 48m',
                    8.3,
                    NULL,
                    NULL,
                    '2004',
                    'Romance',
                    'When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories forever.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michel'
                AND LastName = 'Gondry'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michel', 
                    'Gondry',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Michel' 
                AND d.LastName = 'Gondry' 
                AND m.Title = 'Eternal Sunshine of the Spotless Mind'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michel' AND LastName = 'Gondry'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Eternal Sunshine of the Spotless Mind' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Princess Bride'
                AND ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Princess Bride',
                    '1h 38m',
                    8.0,
                    NULL,
                    NULL,
                    '1987',
                    'Quest',
                    'A bedridden boy''s grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Rob'
                AND LastName = 'Reiner'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Rob', 
                    'Reiner',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Rob' 
                AND d.LastName = 'Reiner' 
                AND m.Title = 'The Princess Bride'
                AND m.ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Rob' AND LastName = 'Reiner'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Princess Bride' AND ReleaseYear = '1987')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Clockwork Orange'
                AND ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Clockwork Orange',
                    '2h 16m',
                    8.2,
                    NULL,
                    NULL,
                    '1971',
                    'Sci-Fi',
                    'Alex DeLarge and his droogs barbarize a decaying near-future.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stanley'
                AND LastName = 'Kubrick'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stanley', 
                    'Kubrick',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stanley' 
                AND d.LastName = 'Kubrick' 
                AND m.Title = 'A Clockwork Orange'
                AND m.ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stanley' AND LastName = 'Kubrick'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Clockwork Orange' AND ReleaseYear = '1971')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Go'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Go',
                    '1h 42m',
                    7.2,
                    NULL,
                    NULL,
                    '1999',
                    'N/A',
                    'The aftermath of a drug deal as told from three different points of view.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Doug'
                AND LastName = 'Liman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Doug', 
                    'Liman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Doug' 
                AND d.LastName = 'Liman' 
                AND m.Title = 'Go'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Doug' AND LastName = 'Liman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Go' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Stand by Me'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Stand by Me',
                    '1h 29m',
                    8.1,
                    NULL,
                    NULL,
                    '1986',
                    'Drama',
                    'A writer recounts a childhood journey with his friends to find the body of a missing boy.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Rob'
                AND LastName = 'Reiner'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Rob', 
                    'Reiner',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Rob' 
                AND d.LastName = 'Reiner' 
                AND m.Title = 'Stand by Me'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Rob' AND LastName = 'Reiner'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Stand by Me' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Lord of the Rings: The Return of the King'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Lord of the Rings: The Return of the King',
                    '3h 21m',
                    9.0,
                    NULL,
                    NULL,
                    '2003',
                    'Mountain Adventure',
                    'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Jackson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Jackson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Jackson' 
                AND m.Title = 'The Lord of the Rings: The Return of the King'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Jackson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Lord of the Rings: The Return of the King' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Terminator 2: Judgment Day'
                AND ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Terminator 2: Judgment Day',
                    '2h 17m',
                    8.6,
                    NULL,
                    NULL,
                    '1991',
                    'Dystopian Sci-Fi',
                    'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her ten year old son John from an even more advanced and powerful cyborg.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Cameron'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Cameron',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Cameron' 
                AND m.Title = 'Terminator 2: Judgment Day'
                AND m.ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Cameron'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Terminator 2: Judgment Day' AND ReleaseYear = '1991')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Toy Story 2'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Toy Story 2',
                    '1h 32m',
                    7.9,
                    NULL,
                    NULL,
                    '1999',
                    'Urban Adventure',
                    'When Woody is stolen by a toy collector, Buzz and his friends set out on a rescue mission to save Woody before he becomes a museum toy property with his roundup gang Jessie, Prospector, and Bullseye.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Lasseter, Ash Brannon, Lee Unkrich'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Lasseter, Ash Brannon, Lee Unkrich',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Lasseter, Ash Brannon, Lee Unkrich' 
                AND m.Title = 'Toy Story 2'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Lasseter, Ash Brannon, Lee Unkrich'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Toy Story 2' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Saving Private Ryan'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Saving Private Ryan',
                    '2h 49m',
                    8.6,
                    NULL,
                    NULL,
                    '1998',
                    'War',
                    'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.',
                    '15'
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
                AND m.Title = 'Saving Private Ryan'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Saving Private Ryan' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Indiana Jones and the Last Crusade'
                AND ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Indiana Jones and the Last Crusade',
                    '2h 7m',
                    8.2,
                    NULL,
                    NULL,
                    '1989',
                    'Quest',
                    'In 1938, after his father goes missing while pursuing the Holy Grail, Indiana Jones finds himself up against the Nazis again to stop them from obtaining its powers.',
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
                AND m.Title = 'Indiana Jones and the Last Crusade'
                AND m.ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Indiana Jones and the Last Crusade' AND ReleaseYear = '1989')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Sin City'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Sin City',
                    '2h 4m',
                    8.0,
                    NULL,
                    NULL,
                    '2005',
                    'N/A',
                    'An exploration of the dark and miserable Basin City and three of its residents, all of whom are caught up in violent corruption.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Frank'
                AND LastName = 'Miller, Quentin Tarantino, Robert Rodriguez'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Frank', 
                    'Miller, Quentin Tarantino, Robert Rodriguez',
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
                AND d.LastName = 'Miller, Quentin Tarantino, Robert Rodriguez' 
                AND m.Title = 'Sin City'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Frank' AND LastName = 'Miller, Quentin Tarantino, Robert Rodriguez'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Sin City' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Saw'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Saw',
                    '1h 43m',
                    7.6,
                    NULL,
                    NULL,
                    '2004',
                    'Thriller',
                    'Two men awaken to find themselves on the opposite sides of a dead body, each with specific instructions to kill the other or face consequences. These two are the latest victims of the Jigsaw Killer.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Wan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Wan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Wan' 
                AND m.Title = 'Saw'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Wan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Saw' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'My Left Foot'
                AND ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'My Left Foot',
                    '1h 43m',
                    7.8,
                    NULL,
                    NULL,
                    '1989',
                    'N/A',
                    'Christy Brown, born with cerebral palsy, learns to paint and write with his only controllable limb - his left foot.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jim'
                AND LastName = 'Sheridan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jim', 
                    'Sheridan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jim' 
                AND d.LastName = 'Sheridan' 
                AND m.Title = 'My Left Foot'
                AND m.ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jim' AND LastName = 'Sheridan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'My Left Foot' AND ReleaseYear = '1989')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Bowling for Columbine'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Bowling for Columbine',
                    '2h',
                    8.0,
                    NULL,
                    NULL,
                    '2002',
                    'Drama',
                    'Filmmaker Michael Moore explores the roots of America''s predilection for gun violence.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Moore'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Moore',
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
                AND d.LastName = 'Moore' 
                AND m.Title = 'Bowling for Columbine'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Moore'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Bowling for Columbine' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Man on Fire'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Man on Fire',
                    '2h 26m',
                    7.7,
                    NULL,
                    NULL,
                    '2004',
                    'Drama',
                    'In Mexico City, a former CIA operative swears vengeance on those who committed an unspeakable act against the family he was hired to protect.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tony'
                AND LastName = 'Scott'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tony', 
                    'Scott',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tony' 
                AND d.LastName = 'Scott' 
                AND m.Title = 'Man on Fire'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tony' AND LastName = 'Scott'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Man on Fire' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Almost Famous'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Almost Famous',
                    '2h 2m',
                    7.9,
                    NULL,
                    NULL,
                    '2000',
                    'Showbiz Drama',
                    'A high-school boy in the early 1970s is given the chance to write a story for Rolling Stone magazine about an up-and-coming rock band as he accompanies them on their concert tour.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Cameron'
                AND LastName = 'Crowe'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Cameron', 
                    'Crowe',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Cameron' 
                AND d.LastName = 'Crowe' 
                AND m.Title = 'Almost Famous'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Cameron' AND LastName = 'Crowe'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Almost Famous' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'High Fidelity'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'High Fidelity',
                    '1h 53m',
                    7.4,
                    NULL,
                    NULL,
                    '2000',
                    'Drama',
                    'Rob, a record store owner and compulsive list maker, recounts his top five breakups, including the one in progress.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stephen'
                AND LastName = 'Frears'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stephen', 
                    'Frears',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stephen' 
                AND d.LastName = 'Frears' 
                AND m.Title = 'High Fidelity'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stephen' AND LastName = 'Frears'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'High Fidelity' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Django Unchained'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Django Unchained',
                    '2h 45m',
                    8.5,
                    NULL,
                    NULL,
                    '2012',
                    'Comedy',
                    'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.',
                    '18'
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
                AND m.Title = 'Django Unchained'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Quentin' AND LastName = 'Tarantino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Django Unchained' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '12 Angry Men'
                AND ReleaseYear = '1957'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '12 Angry Men',
                    '1h 36m',
                    9.0,
                    NULL,
                    NULL,
                    '1957',
                    'Drama',
                    'The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sidney'
                AND LastName = 'Lumet'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sidney', 
                    'Lumet',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sidney' 
                AND d.LastName = 'Lumet' 
                AND m.Title = '12 Angry Men'
                AND m.ReleaseYear = '1957'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sidney' AND LastName = 'Lumet'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '12 Angry Men' AND ReleaseYear = '1957')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Memento'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Memento',
                    '1h 53m',
                    8.4,
                    NULL,
                    NULL,
                    '2000',
                    'Thriller',
                    'Leonard Shelby, an insurance investigator, suffers from anterograde amnesia and uses notes and tattoos to hunt for the man he thinks killed his wife, which is the last thing he remembers.',
                    '15'
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
                AND m.Title = 'Memento'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Christopher' AND LastName = 'Nolan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Memento' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Rain Man'
                AND ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Rain Man',
                    '2h 13m',
                    8.0,
                    NULL,
                    NULL,
                    '1988',
                    'N/A',
                    'After a selfish L.A. yuppie learns his estranged father left a fortune to an autistic-savant brother in Ohio that he didn''t know existed, he absconds with his brother and sets out across the country, hoping to gain a larger inheritance.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Barry'
                AND LastName = 'Levinson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Barry', 
                    'Levinson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Barry' 
                AND d.LastName = 'Levinson' 
                AND m.Title = 'Rain Man'
                AND m.ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Barry' AND LastName = 'Levinson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Rain Man' AND ReleaseYear = '1988')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Minority Report'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Minority Report',
                    '2h 25m',
                    7.6,
                    NULL,
                    NULL,
                    '2002',
                    'Dystopian Sci-Fi',
                    'John works with the PreCrime police which stop crimes before they take place, with the help of three ''PreCogs'' who can foresee crimes. Events ensue when John finds himself framed for a future murder.',
                    '12'
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
                AND m.Title = 'Minority Report'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Minority Report' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Goldfinger'
                AND ReleaseYear = '1964'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Goldfinger',
                    '1h 50m',
                    7.7,
                    NULL,
                    NULL,
                    '1964',
                    'Thriller',
                    'While investigating a gold magnate''s smuggling, James Bond uncovers a plot to contaminate the Fort Knox gold reserve.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Guy'
                AND LastName = 'Hamilton'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Guy', 
                    'Hamilton',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Guy' 
                AND d.LastName = 'Hamilton' 
                AND m.Title = 'Goldfinger'
                AND m.ReleaseYear = '1964'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Guy' AND LastName = 'Hamilton'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Goldfinger' AND ReleaseYear = '1964')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Social Network'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Social Network',
                    '2h',
                    7.8,
                    NULL,
                    NULL,
                    '2010',
                    'Biography',
                    'As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea and by the co-founder who was later squeezed out of the business.',
                    '12A'
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
                AND m.Title = 'The Social Network'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Fincher'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Social Network' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'American Psycho'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'American Psycho',
                    '1h 42m',
                    7.6,
                    NULL,
                    NULL,
                    '2000',
                    'Serial Killer',
                    'A wealthy New York City investment banking executive, Patrick Bateman, hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Mary'
                AND LastName = 'Harron'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Mary', 
                    'Harron',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Mary' 
                AND d.LastName = 'Harron' 
                AND m.Title = 'American Psycho'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Mary' AND LastName = 'Harron'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'American Psycho' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Men in Black'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Men in Black',
                    '1h 38m',
                    7.3,
                    NULL,
                    NULL,
                    '1997',
                    'High-Concept Comedy',
                    'James, an NYC cop, is hired by Agent K of a secret government agency that monitors extraterrestrial life on Earth. Together, they must recover an item that has been stolen by an intergalactic villain.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Barry'
                AND LastName = 'Sonnenfeld'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Barry', 
                    'Sonnenfeld',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Barry' 
                AND d.LastName = 'Sonnenfeld' 
                AND m.Title = 'Men in Black'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Barry' AND LastName = 'Sonnenfeld'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Men in Black' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'No Country for Old Men'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'No Country for Old Men',
                    '2h 2m',
                    8.2,
                    NULL,
                    NULL,
                    '2007',
                    'Drama',
                    'Violence and mayhem ensue after a hunter stumbles upon the aftermath of a drug deal gone wrong and over two million dollars in cash near the Rio Grande.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ethan'
                AND LastName = 'Coen, Joel Coen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ethan', 
                    'Coen, Joel Coen',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ethan' 
                AND d.LastName = 'Coen, Joel Coen' 
                AND m.Title = 'No Country for Old Men'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ethan' AND LastName = 'Coen, Joel Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'No Country for Old Men' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Airplane!'
                AND ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Airplane!',
                    '1h 28m',
                    7.7,
                    NULL,
                    NULL,
                    '1980',
                    'Slapstick',
                    'After the crew becomes sick with food poisoning, a neurotic ex-fighter pilot must safely land a commercial airplane full of passengers.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jim'
                AND LastName = 'Abrahams, David Zucker, Jerry Zucker'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jim', 
                    'Abrahams, David Zucker, Jerry Zucker',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jim' 
                AND d.LastName = 'Abrahams, David Zucker, Jerry Zucker' 
                AND m.Title = 'Airplane!'
                AND m.ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jim' AND LastName = 'Abrahams, David Zucker, Jerry Zucker'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Airplane!' AND ReleaseYear = '1980')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'There Will Be Blood'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'There Will Be Blood',
                    '2h 38m',
                    8.2,
                    NULL,
                    NULL,
                    '2007',
                    'Tragedy',
                    'A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.',
                    '12A'
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
                AND m.Title = 'There Will Be Blood'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Thomas Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'There Will Be Blood' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Inception'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Inception',
                    '2h 28m',
                    8.8,
                    NULL,
                    NULL,
                    '2010',
                    'Sci-Fi Epic',
                    'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.',
                    '12A'
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
                AND m.Title = 'Inception'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Christopher' AND LastName = 'Nolan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Inception' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'JFK'
                AND ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'JFK',
                    '3h 9m',
                    8.0,
                    NULL,
                    NULL,
                    '1991',
                    'Political Thriller',
                    'New Orleans District Attorney Jim Garrison discovers there''s more to the Kennedy assassination than the official story.',
                    '15'
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
                AND m.Title = 'JFK'
                AND m.ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Oliver' AND LastName = 'Stone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'JFK' AND ReleaseYear = '1991')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'King Kong'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'King Kong',
                    '3h 7m',
                    7.2,
                    NULL,
                    NULL,
                    '2005',
                    'Globetrotting Adventure',
                    'A greedy film producer assembles a team of moviemakers and sets out for the infamous Skull Island, where they find more than just cannibalistic natives.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Jackson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Jackson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Jackson' 
                AND m.Title = 'King Kong'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Jackson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'King Kong' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Terminator'
                AND ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Terminator',
                    '1h 47m',
                    8.1,
                    NULL,
                    NULL,
                    '1984',
                    'Time Travel',
                    'A cyborg assassin from the future attempts to find and kill a young woman who is destined to give birth to a warrior that will lead a resistance to save humankind from extinction.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Cameron'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Cameron',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Cameron' 
                AND m.Title = 'The Terminator'
                AND m.ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Cameron'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Terminator' AND ReleaseYear = '1984')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Lord of the Rings: The Fellowship of the Ring'
                AND ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Lord of the Rings: The Fellowship of the Ring',
                    '2h 58m',
                    8.9,
                    NULL,
                    NULL,
                    '2001',
                    'Quest',
                    'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Jackson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Jackson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Jackson' 
                AND m.Title = 'The Lord of the Rings: The Fellowship of the Ring'
                AND m.ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Jackson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Lord of the Rings: The Fellowship of the Ring' AND ReleaseYear = '2001')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Kill Bill: Vol. 1'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Kill Bill: Vol. 1',
                    '1h 51m',
                    8.2,
                    NULL,
                    NULL,
                    '2003',
                    'Crime',
                    'After waking from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.',
                    '18'
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
                AND m.Title = 'Kill Bill: Vol. 1'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Quentin' AND LastName = 'Tarantino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Kill Bill: Vol. 1' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Silence of the Lambs'
                AND ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Silence of the Lambs',
                    '1h 58m',
                    8.6,
                    NULL,
                    NULL,
                    '1991',
                    'Serial Killer',
                    'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jonathan'
                AND LastName = 'Demme'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jonathan', 
                    'Demme',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jonathan' 
                AND d.LastName = 'Demme' 
                AND m.Title = 'The Silence of the Lambs'
                AND m.ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jonathan' AND LastName = 'Demme'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Silence of the Lambs' AND ReleaseYear = '1991')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Color of Money'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Color of Money',
                    '1h 59m',
                    7.0,
                    NULL,
                    NULL,
                    '1986',
                    'N/A',
                    'Fast Eddie Felson teaches a cocky but immensely talented protégé the ropes of pool hustling, which in turn inspires him to make an unlikely comeback.',
                    '15'
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
                AND m.Title = 'The Color of Money'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Color of Money' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'This Is England'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'This Is England',
                    '1h 41m',
                    7.7,
                    NULL,
                    NULL,
                    '2006',
                    'N/A',
                    'A young boy becomes friends with a gang of skinheads. Friends soon become like family, and relationships will be pushed to the very limit.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Shane'
                AND LastName = 'Meadows'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Shane', 
                    'Meadows',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Shane' 
                AND d.LastName = 'Meadows' 
                AND m.Title = 'This Is England'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Shane' AND LastName = 'Meadows'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'This Is England' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'It''s a Wonderful Life'
                AND ReleaseYear = '1946'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'It''s a Wonderful Life',
                    '2h 10m',
                    8.6,
                    NULL,
                    NULL,
                    '1946',
                    'Psychological Drama',
                    'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Frank'
                AND LastName = 'Capra'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Frank', 
                    'Capra',
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
                AND d.LastName = 'Capra' 
                AND m.Title = 'It''s a Wonderful Life'
                AND m.ReleaseYear = '1946'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Frank' AND LastName = 'Capra'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'It''s a Wonderful Life' AND ReleaseYear = '1946')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Children of Men'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Children of Men',
                    '1h 49m',
                    7.9,
                    NULL,
                    NULL,
                    '2006',
                    'Action',
                    'In 2027, in a chaotic world in which women have somehow become infertile, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Alfonso'
                AND LastName = 'Cuarón'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Alfonso', 
                    'Cuarón',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Alfonso' 
                AND d.LastName = 'Cuarón' 
                AND m.Title = 'Children of Men'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Alfonso' AND LastName = 'Cuarón'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Children of Men' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'In the Name of the Father'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'In the Name of the Father',
                    '2h 13m',
                    8.1,
                    NULL,
                    NULL,
                    '1993',
                    'Prison Drama',
                    'An Irish man''s coerced confession to an I.R.A. bombing he did not commit results in the imprisonment of his father as well. Meanwhile, a British lawyer fights to clear their names and free them.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jim'
                AND LastName = 'Sheridan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jim', 
                    'Sheridan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jim' 
                AND d.LastName = 'Sheridan' 
                AND m.Title = 'In the Name of the Father'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jim' AND LastName = 'Sheridan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'In the Name of the Father' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'American History X'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'American History X',
                    '1h 59m',
                    8.5,
                    NULL,
                    NULL,
                    '1998',
                    'Drama',
                    'Living a life marked by violence, neo-Nazi Derek finally goes to prison after killing two black youths. Upon his release, Derek vows to change; he hopes to prevent his brother, Danny, who idolizes Derek, from following in his footsteps.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tony'
                AND LastName = 'Kaye'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tony', 
                    'Kaye',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tony' 
                AND d.LastName = 'Kaye' 
                AND m.Title = 'American History X'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tony' AND LastName = 'Kaye'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'American History X' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Twelve Monkeys'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Twelve Monkeys',
                    '2h 9m',
                    8.0,
                    NULL,
                    NULL,
                    '1995',
                    'Time Travel',
                    'In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Terry'
                AND LastName = 'Gilliam'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Terry', 
                    'Gilliam',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Terry' 
                AND d.LastName = 'Gilliam' 
                AND m.Title = 'Twelve Monkeys'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Terry' AND LastName = 'Gilliam'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Twelve Monkeys' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dog Day Afternoon'
                AND ReleaseYear = '1975'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dog Day Afternoon',
                    '2h 5m',
                    8.0,
                    NULL,
                    NULL,
                    '1975',
                    'Crime',
                    'Three amateur robbers plan to hold up a Brooklyn bank. A nice, simple robbery: Walk in, take the money, and run. Unfortunately, the supposedly uncomplicated heist suddenly becomes a bizarre nightmare as everything that could go wrong does.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sidney'
                AND LastName = 'Lumet'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sidney', 
                    'Lumet',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sidney' 
                AND d.LastName = 'Lumet' 
                AND m.Title = 'Dog Day Afternoon'
                AND m.ReleaseYear = '1975'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sidney' AND LastName = 'Lumet'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dog Day Afternoon' AND ReleaseYear = '1975')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Untouchables'
                AND ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Untouchables',
                    '1h 59m',
                    7.8,
                    NULL,
                    NULL,
                    '1987',
                    'Police Procedural',
                    'During Prohibition, Treasury agent Eliot Ness sets out to stop ruthless Chicago gangster Al Capone, and assembles a small, incorruptible team to help him.',
                    '15'
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
                AND m.Title = 'The Untouchables'
                AND m.ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Brian' AND LastName = 'De Palma'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Untouchables' AND ReleaseYear = '1987')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Close Encounters of the Third Kind'
                AND ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Close Encounters of the Third Kind',
                    '2h 18m',
                    7.6,
                    NULL,
                    NULL,
                    '1977',
                    'N/A',
                    'Roy Neary, an Indiana electric lineman, finds his quiet and ordinary daily life turned upside down after a close encounter with a UFO, spurring him to an obsessed cross-country quest for answers as a momentous event approaches.',
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
                AND m.Title = 'Close Encounters of the Third Kind'
                AND m.ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Close Encounters of the Third Kind' AND ReleaseYear = '1977')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Good, the Bad and the Ugly'
                AND ReleaseYear = '1966'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Good, the Bad and the Ugly',
                    '2h 28m',
                    8.8,
                    NULL,
                    NULL,
                    '1966',
                    'Period Drama',
                    'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sergio'
                AND LastName = 'Leone'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sergio', 
                    'Leone',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sergio' 
                AND d.LastName = 'Leone' 
                AND m.Title = 'The Good, the Bad and the Ugly'
                AND m.ReleaseYear = '1966'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sergio' AND LastName = 'Leone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Good, the Bad and the Ugly' AND ReleaseYear = '1966')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Glengarry Glen Ross'
                AND ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Glengarry Glen Ross',
                    '1h 40m',
                    7.7,
                    NULL,
                    NULL,
                    '1992',
                    'Mystery',
                    'An examination of the machinations behind the scenes at a real estate office.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Foley'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Foley',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Foley' 
                AND m.Title = 'Glengarry Glen Ross'
                AND m.ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Foley'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Glengarry Glen Ross' AND ReleaseYear = '1992')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Wolf of Wall Street'
                AND ReleaseYear = '2013'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Wolf of Wall Street',
                    '3h',
                    8.2,
                    NULL,
                    NULL,
                    '2013',
                    'Satire',
                    'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.',
                    '18'
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
                AND m.Title = 'The Wolf of Wall Street'
                AND m.ReleaseYear = '2013'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Wolf of Wall Street' AND ReleaseYear = '2013')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Road to Perdition'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Road to Perdition',
                    '1h 57m',
                    7.7,
                    NULL,
                    NULL,
                    '2002',
                    'Psychological Drama',
                    'A mob enforcer''s son in 1930s Illinois witnesses a murder, forcing him and his father to take to the road, and his father down a path of redemption and revenge.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sam'
                AND LastName = 'Mendes'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sam', 
                    'Mendes',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sam' 
                AND d.LastName = 'Mendes' 
                AND m.Title = 'Road to Perdition'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sam' AND LastName = 'Mendes'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Road to Perdition' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Up'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Up',
                    '1h 36m',
                    8.3,
                    NULL,
                    NULL,
                    '2009',
                    'Adventure',
                    '78-year-old Carl Fredricksen travels to South America in his house equipped with balloons, inadvertently taking a young stowaway.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Pete'
                AND LastName = 'Docter, Bob Peterson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Pete', 
                    'Docter, Bob Peterson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Pete' 
                AND d.LastName = 'Docter, Bob Peterson' 
                AND m.Title = 'Up'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Pete' AND LastName = 'Docter, Bob Peterson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Up' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Natural Born Killers'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Natural Born Killers',
                    '1h 59m',
                    7.2,
                    NULL,
                    NULL,
                    '1994',
                    'Crime',
                    'Two victims of traumatized childhoods become lovers and psychopathic serial murderers irresponsibly glorified by the mass media.',
                    '18'
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
                AND m.Title = 'Natural Born Killers'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Oliver' AND LastName = 'Stone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Natural Born Killers' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Out of Sight'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Out of Sight',
                    '2h 3m',
                    7.0,
                    NULL,
                    NULL,
                    '1998',
                    'Drama',
                    'A career bank robber breaks out of jail, and shares a moment of mutual attraction with a U.S. Marshal he has kidnapped.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Steven'
                AND LastName = 'Soderbergh'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Steven', 
                    'Soderbergh',
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
                AND d.LastName = 'Soderbergh' 
                AND m.Title = 'Out of Sight'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Soderbergh'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Out of Sight' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Bourne Identity'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Bourne Identity',
                    '1h 59m',
                    7.8,
                    NULL,
                    NULL,
                    '2002',
                    'Spy',
                    'A man is picked up by a fishing boat, bullet-riddled and suffering from amnesia, before racing to elude assassins and attempting to regain his memory.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Doug'
                AND LastName = 'Liman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Doug', 
                    'Liman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Doug' 
                AND d.LastName = 'Liman' 
                AND m.Title = 'The Bourne Identity'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Doug' AND LastName = 'Liman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Bourne Identity' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'An American Werewolf in London'
                AND ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'An American Werewolf in London',
                    '1h 37m',
                    7.5,
                    NULL,
                    NULL,
                    '1981',
                    'Supernatural Horror',
                    'American college students David Kessler and Jack Goodman on a walking tour of Britain are attacked by a werewolf that none of the locals will admit exists. Jack dies. David recovers in a hospital, where he has nightmares.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Landis'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Landis',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Landis' 
                AND m.Title = 'An American Werewolf in London'
                AND m.ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Landis'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'An American Werewolf in London' AND ReleaseYear = '1981')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'United 93'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'United 93',
                    '1h 51m',
                    7.6,
                    NULL,
                    NULL,
                    '2006',
                    'History',
                    'A real-time account of the events on United Flight 93, one of the planes hijacked on September 11th, 2001 that crashed near Shanksville, Pennsylvania when passengers foiled the terrorist plot.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Greengrass'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Greengrass',
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
                AND d.LastName = 'Greengrass' 
                AND m.Title = 'United 93'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Greengrass'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'United 93' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Full Metal Jacket'
                AND ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Full Metal Jacket',
                    '1h 56m',
                    8.2,
                    NULL,
                    NULL,
                    '1987',
                    'N/A',
                    'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stanley'
                AND LastName = 'Kubrick'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stanley', 
                    'Kubrick',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stanley' 
                AND d.LastName = 'Kubrick' 
                AND m.Title = 'Full Metal Jacket'
                AND m.ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stanley' AND LastName = 'Kubrick'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Full Metal Jacket' AND ReleaseYear = '1987')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The General'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The General',
                    '2h 4m',
                    7.2,
                    NULL,
                    NULL,
                    '1998',
                    'Thriller',
                    'The real-life story of Dublin folk hero and criminal Martin Cahill, who pulled off two daring robberies in Ireland with his team, but attracted unwanted attention from the police, the I.R.A., the U.V.F., and members of his own team.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Boorman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Boorman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Boorman' 
                AND m.Title = 'The General'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Boorman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The General' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Deer Hunter'
                AND ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Deer Hunter',
                    '3h 3m',
                    8.1,
                    NULL,
                    NULL,
                    '1978',
                    'War',
                    'An in-depth examination of the ways in which the Vietnam War impacts and disrupts the lives of several friends in a small steel mill town in Pennsylvania.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Cimino'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Cimino',
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
                AND d.LastName = 'Cimino' 
                AND m.Title = 'The Deer Hunter'
                AND m.ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Cimino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Deer Hunter' AND ReleaseYear = '1978')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Desperado'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Desperado',
                    '1h 44m',
                    7.1,
                    NULL,
                    NULL,
                    '1995',
                    'One-Person Army Action',
                    'Former musician and gunslinger El Mariachi arrives at a small Mexican border town after being away for a long time. His past quickly catches up with him and he soon gets entangled with the local drug kingpin Bucho and his gang.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'Rodriguez'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'Rodriguez',
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
                AND d.LastName = 'Rodriguez' 
                AND m.Title = 'Desperado'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Rodriguez'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Desperado' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Interview with the Vampire: The Vampire Chronicles'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Interview with the Vampire: The Vampire Chronicles',
                    '2h 3m',
                    7.5,
                    NULL,
                    NULL,
                    '1994',
                    'Supernatural Horror',
                    'A vampire tells his epic life story: love, betrayal, loneliness, and hunger.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Neil'
                AND LastName = 'Jordan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Neil', 
                    'Jordan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Neil' 
                AND d.LastName = 'Jordan' 
                AND m.Title = 'Interview with the Vampire: The Vampire Chronicles'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Neil' AND LastName = 'Jordan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Interview with the Vampire: The Vampire Chronicles' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Things to Do in Denver When You''re Dead'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Things to Do in Denver When You''re Dead',
                    '1h 55m',
                    6.7,
                    NULL,
                    NULL,
                    '1995',
                    'Thriller',
                    'Five different criminals face imminent death after botching a job quite badly.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Gary'
                AND LastName = 'Fleder'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Gary', 
                    'Fleder',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Gary' 
                AND d.LastName = 'Fleder' 
                AND m.Title = 'Things to Do in Denver When You''re Dead'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Gary' AND LastName = 'Fleder'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Things to Do in Denver When You''re Dead' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Little Miss Sunshine'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Little Miss Sunshine',
                    '1h 41m',
                    7.8,
                    NULL,
                    NULL,
                    '2006',
                    'Comedy',
                    'A family determined to get their young daughter into the finals of a beauty pageant take a cross-country trip in their VW bus.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jonathan'
                AND LastName = 'Dayton, Valerie Faris'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jonathan', 
                    'Dayton, Valerie Faris',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jonathan' 
                AND d.LastName = 'Dayton, Valerie Faris' 
                AND m.Title = 'Little Miss Sunshine'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jonathan' AND LastName = 'Dayton, Valerie Faris'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Little Miss Sunshine' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Carlito''s Way'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Carlito''s Way',
                    '2h 24m',
                    7.9,
                    NULL,
                    NULL,
                    '1993',
                    'Thriller',
                    'A Puerto Rican former convict, just released from prison, pledges to stay away from drugs and violence despite the pressure around him and lead on to a better life outside of N.Y.C.',
                    '18'
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
                AND m.Title = 'Carlito''s Way'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Brian' AND LastName = 'De Palma'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Carlito''s Way' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Casino Royale'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Casino Royale',
                    '2h 24m',
                    8.0,
                    NULL,
                    NULL,
                    '2006',
                    'Adventure',
                    'After earning a licence to kill, secret agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, in Montenegro.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Martin'
                AND LastName = 'Campbell'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Martin', 
                    'Campbell',
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
                AND d.LastName = 'Campbell' 
                AND m.Title = 'Casino Royale'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Campbell'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Casino Royale' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dirty Harry'
                AND ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dirty Harry',
                    '1h 42m',
                    7.7,
                    NULL,
                    NULL,
                    '1971',
                    'Thriller',
                    'When a man calling himself "the Scorpio Killer" menaces San Francisco, tough-as-nails Police Inspector "Dirty" Harry Callahan is assigned to track down the crazed psychopath.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Don'
                AND LastName = 'Siegel, Clint Eastwood'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Don', 
                    'Siegel, Clint Eastwood',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Don' 
                AND d.LastName = 'Siegel, Clint Eastwood' 
                AND m.Title = 'Dirty Harry'
                AND m.ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Don' AND LastName = 'Siegel, Clint Eastwood'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dirty Harry' AND ReleaseYear = '1971')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Gremlins'
                AND ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Gremlins',
                    '1h 46m',
                    7.3,
                    NULL,
                    NULL,
                    '1984',
                    'Monster Horror',
                    'A young man inadvertently breaks three important rules concerning his new pet and unleashes a horde of malevolently mischievous monsters on a small town.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Joe'
                AND LastName = 'Dante'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Joe', 
                    'Dante',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Joe' 
                AND d.LastName = 'Dante' 
                AND m.Title = 'Gremlins'
                AND m.ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joe' AND LastName = 'Dante'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Gremlins' AND ReleaseYear = '1984')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Butch Cassidy and the Sundance Kid'
                AND ReleaseYear = '1969'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Butch Cassidy and the Sundance Kid',
                    '1h 50m',
                    8.0,
                    NULL,
                    NULL,
                    '1969',
                    'Western',
                    'In 1890s Wyoming, Butch Cassidy and The Sundance Kid lead a band of outlaws. When a train robbery goes wrong, they find themselves on the run with a posse hard on their heels..',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'George'
                AND LastName = 'Roy Hill'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'George', 
                    'Roy Hill',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'George' 
                AND d.LastName = 'Roy Hill' 
                AND m.Title = 'Butch Cassidy and the Sundance Kid'
                AND m.ReleaseYear = '1969'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'George' AND LastName = 'Roy Hill'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Butch Cassidy and the Sundance Kid' AND ReleaseYear = '1969')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Ocean''s Eleven'
                AND ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Ocean''s Eleven',
                    '1h 56m',
                    7.7,
                    NULL,
                    NULL,
                    '2001',
                    'Thriller',
                    'Danny Ocean, a gangster, rounds up a gang of associates to stage a sophisticated and elaborate casino heist which involves robbing three Las Vegas casinos simultaneously during a popular boxing event.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Steven'
                AND LastName = 'Soderbergh'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Steven', 
                    'Soderbergh',
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
                AND d.LastName = 'Soderbergh' 
                AND m.Title = 'Ocean''s Eleven'
                AND m.ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Soderbergh'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Ocean''s Eleven' AND ReleaseYear = '2001')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Lord of the Rings: The Two Towers'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Lord of the Rings: The Two Towers',
                    '2h 59m',
                    8.8,
                    NULL,
                    NULL,
                    '2002',
                    'Fantasy Epic',
                    'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Jackson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Jackson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Jackson' 
                AND m.Title = 'The Lord of the Rings: The Two Towers'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Jackson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Lord of the Rings: The Two Towers' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Amores perros'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Amores perros',
                    '2h 34m',
                    8.0,
                    NULL,
                    NULL,
                    '2000',
                    'N/A',
                    'An amateur dog fighter, a supermodel, and a derelict assassin, all separately struggling to find love, find their lives transformed by a devastating car wreck in Mexico City.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Alejandro'
                AND LastName = 'G. Iñárritu'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Alejandro', 
                    'G. Iñárritu',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Alejandro' 
                AND d.LastName = 'G. Iñárritu' 
                AND m.Title = 'Amores perros'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Alejandro' AND LastName = 'G. Iñárritu'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Amores perros' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan',
                    '1h 24m',
                    7.4,
                    NULL,
                    NULL,
                    '2006',
                    'Comedy',
                    'Kazakh TV talking head Borat is dispatched to the United States to report on the greatest country in the world.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Larry'
                AND LastName = 'Charles'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Larry', 
                    'Charles',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Larry' 
                AND d.LastName = 'Charles' 
                AND m.Title = 'Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Larry' AND LastName = 'Charles'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Borat: Cultural Learnings of America for Make Benefit Glorious Nation of Kazakhstan' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Austin Powers: The Spy Who Shagged Me'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Austin Powers: The Spy Who Shagged Me',
                    '1h 35m',
                    6.7,
                    NULL,
                    NULL,
                    '1999',
                    'Adventure',
                    'Dr. Evil is back and has invented a new time machine that allows him to go back to the 1960s and steal Austin Powers'' mojo, inadvertently leaving him "shagless".',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jay'
                AND LastName = 'Roach'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jay', 
                    'Roach',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jay' 
                AND d.LastName = 'Roach' 
                AND m.Title = 'Austin Powers: The Spy Who Shagged Me'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jay' AND LastName = 'Roach'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Austin Powers: The Spy Who Shagged Me' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Batman Returns'
                AND ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Batman Returns',
                    '2h 6m',
                    7.1,
                    NULL,
                    NULL,
                    '1992',
                    'Action',
                    'While Batman deals with a deformed man calling himself the Penguin wreaking havoc across Gotham with the help of a cruel businessman, a female employee of the latter becomes the Catwoman with her own vendetta.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tim'
                AND LastName = 'Burton'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tim', 
                    'Burton',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tim' 
                AND d.LastName = 'Burton' 
                AND m.Title = 'Batman Returns'
                AND m.ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tim' AND LastName = 'Burton'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Batman Returns' AND ReleaseYear = '1992')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Virgin Suicides'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Virgin Suicides',
                    '1h 37m',
                    7.2,
                    NULL,
                    NULL,
                    '1999',
                    'Drama',
                    'A group of male friends become obsessed with five mysterious sisters who are sheltered by their strict, religious parents in suburban Detroit in the mid 1970s.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sofia'
                AND LastName = 'Coppola'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sofia', 
                    'Coppola',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sofia' 
                AND d.LastName = 'Coppola' 
                AND m.Title = 'The Virgin Suicides'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sofia' AND LastName = 'Coppola'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Virgin Suicides' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '28 Days Later'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '28 Days Later',
                    '1h 53m',
                    7.5,
                    NULL,
                    NULL,
                    '2002',
                    'Drama',
                    'Four weeks after a mysterious, incurable virus spreads throughout the United Kingdom, a handful of survivors try to find sanctuary.',
                    '18'
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
                AND m.Title = '28 Days Later'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Danny' AND LastName = 'Boyle'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '28 Days Later' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Life Aquatic with Steve Zissou'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Life Aquatic with Steve Zissou',
                    '1h 59m',
                    7.2,
                    NULL,
                    NULL,
                    '2004',
                    'Adventure',
                    'With a plan to exact revenge on a legendary shark that killed his partner, oceanographer Steve Zissou (Bill Murray) rallies a crew that includes his estranged wife, a journalist, and a man who may or may not be his son.',
                    '15'
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
                AND m.Title = 'The Life Aquatic with Steve Zissou'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wes' AND LastName = 'Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Life Aquatic with Steve Zissou' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Requiem for a Dream'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Requiem for a Dream',
                    '1h 42m',
                    8.3,
                    NULL,
                    NULL,
                    '2000',
                    'N/A',
                    'The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Darren'
                AND LastName = 'Aronofsky'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Darren', 
                    'Aronofsky',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Darren' 
                AND d.LastName = 'Aronofsky' 
                AND m.Title = 'Requiem for a Dream'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Darren' AND LastName = 'Aronofsky'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Requiem for a Dream' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Italian Job'
                AND ReleaseYear = '1969'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Italian Job',
                    '1h 39m',
                    7.2,
                    NULL,
                    NULL,
                    '1969',
                    'Comedy',
                    'A comic caper movie about a plan to steal a gold shipment from the streets of Turin by creating a traffic jam.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Collinson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Collinson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Collinson' 
                AND m.Title = 'The Italian Job'
                AND m.ReleaseYear = '1969'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Collinson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Italian Job' AND ReleaseYear = '1969')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Get Carter'
                AND ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Get Carter',
                    '1h 52m',
                    7.3,
                    NULL,
                    NULL,
                    '1971',
                    'N/A',
                    'When his brother dies under mysterious circumstances in a car accident, London gangster Jack Carter travels to Newcastle to investigate.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Mike'
                AND LastName = 'Hodges'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Mike', 
                    'Hodges',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Mike' 
                AND d.LastName = 'Hodges' 
                AND m.Title = 'Get Carter'
                AND m.ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Mike' AND LastName = 'Hodges'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Get Carter' AND ReleaseYear = '1971')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Rules of Attraction'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Rules of Attraction',
                    '1h 50m',
                    6.6,
                    NULL,
                    NULL,
                    '2002',
                    'Romance',
                    'The incredibly spoiled and overprivileged students of Camden College are a backdrop for an unusual love triangle between a drug dealer, a virgin and a bisexual classmate.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Roger'
                AND LastName = 'Avary'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Roger', 
                    'Avary',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Roger' 
                AND d.LastName = 'Avary' 
                AND m.Title = 'The Rules of Attraction'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Roger' AND LastName = 'Avary'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Rules of Attraction' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Zodiac'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Zodiac',
                    '2h 37m',
                    7.7,
                    NULL,
                    NULL,
                    '2007',
                    'Psychological Thriller',
                    'Between 1968 and 1983, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.',
                    '15'
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
                AND m.Title = 'Zodiac'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Fincher'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Zodiac' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Hot Fuzz'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Hot Fuzz',
                    '2h 1m',
                    7.8,
                    NULL,
                    NULL,
                    '2007',
                    'Comedy',
                    'An overachieving London police sergeant is transferred to a village where the easygoing officers object to his fervor for regulations, all while a string of grisly murders strikes the town.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Edgar'
                AND LastName = 'Wright'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Edgar', 
                    'Wright',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Edgar' 
                AND d.LastName = 'Wright' 
                AND m.Title = 'Hot Fuzz'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Edgar' AND LastName = 'Wright'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Hot Fuzz' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'O Brother, Where Art Thou?'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'O Brother, Where Art Thou?',
                    '1h 47m',
                    7.7,
                    NULL,
                    NULL,
                    '2000',
                    'Period Drama',
                    'In the deep south during the 1930s, three escaped convicts search for hidden treasure while a relentless lawman pursues them.',
                    '12'
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
                AND m.Title = 'O Brother, Where Art Thou?'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joel' AND LastName = 'Coen, Ethan Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'O Brother, Where Art Thou?' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Braindead'
                AND ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Braindead',
                    '1h 44m',
                    7.5,
                    NULL,
                    NULL,
                    '1992',
                    'Slapstick',
                    'A young man''s mother is bitten by a Sumatran rat-monkey. She gets sick and dies, at which time she comes back to life, killing and eating dogs, nurses, friends, and neighbors.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Jackson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Jackson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Jackson' 
                AND m.Title = 'Braindead'
                AND m.ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Jackson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Braindead' AND ReleaseYear = '1992')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dumb and Dumber'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dumb and Dumber',
                    '1h 47m',
                    7.3,
                    NULL,
                    NULL,
                    '1994',
                    'Slapstick',
                    'After a woman leaves a briefcase at the airport terminal, a dumb limo driver and his dumber friend set out on a hilarious cross-country road trip to Aspen to return it.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Farrelly, Bobby Farrelly'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Farrelly, Bobby Farrelly',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Farrelly, Bobby Farrelly' 
                AND m.Title = 'Dumb and Dumber'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Farrelly, Bobby Farrelly'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dumb and Dumber' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Jungle Book'
                AND ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Jungle Book',
                    '1h 18m',
                    7.6,
                    NULL,
                    NULL,
                    '1967',
                    'Quest',
                    'Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Wolfgang'
                AND LastName = 'Reitherman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Wolfgang', 
                    'Reitherman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Wolfgang' 
                AND d.LastName = 'Reitherman' 
                AND m.Title = 'The Jungle Book'
                AND m.ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wolfgang' AND LastName = 'Reitherman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Jungle Book' AND ReleaseYear = '1967')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Bourne Ultimatum'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Bourne Ultimatum',
                    '1h 55m',
                    8.0,
                    NULL,
                    NULL,
                    '2007',
                    'Thriller',
                    'Jason Bourne dodges a ruthless C.I.A. official and his Agents from a new assassination program while searching for the origins of his life as a trained killer.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Greengrass'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Greengrass',
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
                AND d.LastName = 'Greengrass' 
                AND m.Title = 'The Bourne Ultimatum'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Greengrass'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Bourne Ultimatum' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Shallow Grave'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Shallow Grave',
                    '1h 29m',
                    7.2,
                    NULL,
                    NULL,
                    '1994',
                    'Thriller',
                    'Three friends discover their new flatmate dead but loaded with cash.',
                    '18'
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
                AND m.Title = 'Shallow Grave'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Danny' AND LastName = 'Boyle'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Shallow Grave' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'From Dusk Till Dawn'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'From Dusk Till Dawn',
                    '1h 48m',
                    7.2,
                    NULL,
                    NULL,
                    '1996',
                    'Vampire Horror',
                    'Two criminals and their hostages unknowingly seek temporary refuge in a truck stop populated by vampires, with chaotic results.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'Rodriguez'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'Rodriguez',
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
                AND d.LastName = 'Rodriguez' 
                AND m.Title = 'From Dusk Till Dawn'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Rodriguez'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'From Dusk Till Dawn' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Gone with the Wind'
                AND ReleaseYear = '1939'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Gone with the Wind',
                    '3h 58m',
                    8.2,
                    NULL,
                    NULL,
                    '1939',
                    'Romantic Epic',
                    'A sheltered and manipulative Southern belle and a roguish profiteer face off in a turbulent romance as the society around them crumbles with the end of slavery and is rebuilt during the Civil War and Reconstruction periods.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Victor'
                AND LastName = 'Fleming, George Cukor, Sam Wood'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Victor', 
                    'Fleming, George Cukor, Sam Wood',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Victor' 
                AND d.LastName = 'Fleming, George Cukor, Sam Wood' 
                AND m.Title = 'Gone with the Wind'
                AND m.ReleaseYear = '1939'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Victor' AND LastName = 'Fleming, George Cukor, Sam Wood'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Gone with the Wind' AND ReleaseYear = '1939')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'American Pie'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'American Pie',
                    '1h 35m',
                    7.0,
                    NULL,
                    NULL,
                    '1999',
                    'N/A',
                    'Four teenage boys enter a pact to lose their virginity by prom night.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Weitz, Chris Weitz'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Weitz, Chris Weitz',
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
                AND d.LastName = 'Weitz, Chris Weitz' 
                AND m.Title = 'American Pie'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Weitz, Chris Weitz'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'American Pie' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Slumdog Millionaire'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Slumdog Millionaire',
                    '2h',
                    8.0,
                    NULL,
                    NULL,
                    '2008',
                    'Drama',
                    'A teenager from the slums of Mumbai becomes a contestant on the show ''Kaun Banega Crorepati?'' When interrogated under suspicion of cheating, he revisits his past, revealing how he had all the answers.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Danny'
                AND LastName = 'Boyle, Loveleen Tandan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Danny', 
                    'Boyle, Loveleen Tandan',
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
                AND d.LastName = 'Boyle, Loveleen Tandan' 
                AND m.Title = 'Slumdog Millionaire'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Danny' AND LastName = 'Boyle, Loveleen Tandan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Slumdog Millionaire' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'On the Waterfront'
                AND ReleaseYear = '1954'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'On the Waterfront',
                    '1h 48m',
                    8.1,
                    NULL,
                    NULL,
                    '1954',
                    'N/A',
                    'An ex-prize fighter turned New Jersey longshoreman struggles to stand up to his corrupt union bosses, including his older brother, as he starts to connect with the grieving sister of one of the syndicate''s victims.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Elia'
                AND LastName = 'Kazan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Elia', 
                    'Kazan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Elia' 
                AND d.LastName = 'Kazan' 
                AND m.Title = 'On the Waterfront'
                AND m.ReleaseYear = '1954'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Elia' AND LastName = 'Kazan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'On the Waterfront' AND ReleaseYear = '1954')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Snatch'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Snatch',
                    '1h 44m',
                    8.2,
                    NULL,
                    NULL,
                    '2000',
                    'Comedy',
                    'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Guy'
                AND LastName = 'Ritchie'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Guy', 
                    'Ritchie',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Guy' 
                AND d.LastName = 'Ritchie' 
                AND m.Title = 'Snatch'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Guy' AND LastName = 'Ritchie'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Snatch' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Naked Gun: From the Files of Police Squad!'
                AND ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Naked Gun: From the Files of Police Squad!',
                    '1h 25m',
                    7.6,
                    NULL,
                    NULL,
                    '1988',
                    'Crime',
                    'Incompetent police Detective Frank Drebin must foil an attempt to assassinate Queen Elizabeth II.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Zucker'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Zucker',
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
                AND d.LastName = 'Zucker' 
                AND m.Title = 'The Naked Gun: From the Files of Police Squad!'
                AND m.ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Zucker'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Naked Gun: From the Files of Police Squad!' AND ReleaseYear = '1988')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'National Lampoon''s Animal House'
                AND ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'National Lampoon''s Animal House',
                    '1h 49m',
                    7.4,
                    NULL,
                    NULL,
                    '1978',
                    'N/A',
                    'At a 1962 college, Dean Vernon Wormer is determined to expel the entire Delta Tau Chi Fraternity, but those troublemakers have other plans for him.',
                    'AA'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Landis'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Landis',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Landis' 
                AND m.Title = 'National Lampoon''s Animal House'
                AND m.ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Landis'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'National Lampoon''s Animal House' AND ReleaseYear = '1978')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Three Kings'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Three Kings',
                    '1h 54m',
                    7.1,
                    NULL,
                    NULL,
                    '1999',
                    'Action',
                    'In the aftermath of the Persian Gulf War, four soldiers set out to steal gold that was stolen from Kuwait, but they discover people who desperately need their help.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'O. Russell'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'O. Russell',
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
                AND d.LastName = 'O. Russell' 
                AND m.Title = 'Three Kings'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'O. Russell'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Three Kings' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'In Bruges'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'In Bruges',
                    '1h 47m',
                    7.9,
                    NULL,
                    NULL,
                    '2008',
                    'Drama',
                    'After a job gone wrong, hitman Ray and his partner await orders from their ruthless boss in Bruges, Belgium, the last place in the world Ray wants to be.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Martin'
                AND LastName = 'McDonagh'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Martin', 
                    'McDonagh',
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
                AND d.LastName = 'McDonagh' 
                AND m.Title = 'In Bruges'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'McDonagh'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'In Bruges' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Toy Story 3'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Toy Story 3',
                    '1h 43m',
                    8.3,
                    NULL,
                    NULL,
                    '2010',
                    'Adventure',
                    'The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it''s up to Woody to convince the other toys that they weren''t abandoned and to return home.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Lee'
                AND LastName = 'Unkrich'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Lee', 
                    'Unkrich',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Lee' 
                AND d.LastName = 'Unkrich' 
                AND m.Title = 'Toy Story 3'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Lee' AND LastName = 'Unkrich'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Toy Story 3' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Cloverfield'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Cloverfield',
                    '1h 25m',
                    7.0,
                    NULL,
                    NULL,
                    '2008',
                    'Monster Horror',
                    'A group of friends venture deep into the streets of New York on a rescue mission during a rampaging monster attack.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Matt'
                AND LastName = 'Reeves'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Matt', 
                    'Reeves',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Matt' 
                AND d.LastName = 'Reeves' 
                AND m.Title = 'Cloverfield'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Matt' AND LastName = 'Reeves'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Cloverfield' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dawn of the Dead'
                AND ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dawn of the Dead',
                    '2h 7m',
                    7.8,
                    NULL,
                    NULL,
                    '1978',
                    'Horror',
                    'During an escalating zombie epidemic, two Philadelphia SWAT team members, a traffic reporter and his TV executive girlfriend seek refuge in a secluded shopping mall.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'George'
                AND LastName = 'A. Romero'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'George', 
                    'A. Romero',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'George' 
                AND d.LastName = 'A. Romero' 
                AND m.Title = 'Dawn of the Dead'
                AND m.ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'George' AND LastName = 'A. Romero'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dawn of the Dead' AND ReleaseYear = '1978')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Quiz Show'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Quiz Show',
                    '2h 13m',
                    7.5,
                    NULL,
                    NULL,
                    '1994',
                    'N/A',
                    'A young lawyer, Richard Goodwin, investigates a potentially fixed game show. Charles Van Doren, a big time show winner, is under Goodwin''s investigation.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'Redford'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'Redford',
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
                AND d.LastName = 'Redford' 
                AND m.Title = 'Quiz Show'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Redford'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Quiz Show' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Bittersweet Life'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Bittersweet Life',
                    '1h 59m',
                    7.5,
                    NULL,
                    NULL,
                    '2005',
                    'Thriller',
                    'Things go wrong for a high ranking mobster when he doesn''t follow his boss''s orders.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Kim'
                AND LastName = 'Jee-woon'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Kim', 
                    'Jee-woon',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Kim' 
                AND d.LastName = 'Jee-woon' 
                AND m.Title = 'A Bittersweet Life'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Kim' AND LastName = 'Jee-woon'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Bittersweet Life' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Sixth Sense'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Sixth Sense',
                    '1h 47m',
                    8.2,
                    NULL,
                    NULL,
                    '1999',
                    'Drama',
                    'A child psychologist starts treating a young boy with a disturbing secret.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'M.'
                AND LastName = 'Night Shyamalan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'M.', 
                    'Night Shyamalan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'M.' 
                AND d.LastName = 'Night Shyamalan' 
                AND m.Title = 'The Sixth Sense'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'M.' AND LastName = 'Night Shyamalan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Sixth Sense' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Long Good Friday'
                AND ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Long Good Friday',
                    '1h 54m',
                    7.6,
                    NULL,
                    NULL,
                    '1980',
                    'Mystery',
                    'An up-and-coming gangster is tested by the insurgence of an unknown, very powerful threat.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Mackenzie'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Mackenzie',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Mackenzie' 
                AND m.Title = 'The Long Good Friday'
                AND m.ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Mackenzie'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Long Good Friday' AND ReleaseYear = '1980')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Juno'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Juno',
                    '1h 36m',
                    7.4,
                    NULL,
                    NULL,
                    '2007',
                    'Teen Drama',
                    'Faced with an unplanned pregnancy, an offbeat young woman makes a selfless decision regarding the unborn child.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jason'
                AND LastName = 'Reitman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jason', 
                    'Reitman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jason' 
                AND d.LastName = 'Reitman' 
                AND m.Title = 'Juno'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jason' AND LastName = 'Reitman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Juno' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Planet of the Apes'
                AND ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Planet of the Apes',
                    '1h 52m',
                    8.0,
                    NULL,
                    NULL,
                    '1968',
                    'Time Travel',
                    'After being kept in hypersleep during a long expedition into deep space, an astronaut crew crash-lands in the 40th century on a planet where highly intelligent non-human ape species are dominant and humans are enslaved.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Franklin'
                AND LastName = 'J. Schaffner'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Franklin', 
                    'J. Schaffner',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Franklin' 
                AND d.LastName = 'J. Schaffner' 
                AND m.Title = 'Planet of the Apes'
                AND m.ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Franklin' AND LastName = 'J. Schaffner'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Planet of the Apes' AND ReleaseYear = '1968')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Kiss Kiss Bang Bang'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Kiss Kiss Bang Bang',
                    '1h 43m',
                    7.5,
                    NULL,
                    NULL,
                    '2005',
                    'Comedy',
                    'After being mistaken for an actor, a New York thief is sent to Hollywood to train under a private eye for a potential movie role, but the duo are thrown together with a struggling actress into a murder mystery.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Shane'
                AND LastName = 'Black'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Shane', 
                    'Black',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Shane' 
                AND d.LastName = 'Black' 
                AND m.Title = 'Kiss Kiss Bang Bang'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Shane' AND LastName = 'Black'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Kiss Kiss Bang Bang' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Jackie Brown'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Jackie Brown',
                    '2h 34m',
                    7.5,
                    NULL,
                    NULL,
                    '1997',
                    'Drama',
                    'A flight attendant with a criminal past gets nabbed by the ATF for smuggling. Under pressure to become an informant against the illegal arms dealer she works for, she must find a way to secure her future without getting killed.',
                    '15'
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
                AND m.Title = 'Jackie Brown'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Quentin' AND LastName = 'Tarantino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Jackie Brown' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Sideways'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Sideways',
                    '2h 7m',
                    7.5,
                    NULL,
                    NULL,
                    '2004',
                    'Comedy',
                    'Two men reaching middle age with not much to show but disappointment embark on a week-long road trip through California''s wine country, just as one is about to take a trip down the aisle.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Alexander'
                AND LastName = 'Payne'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Alexander', 
                    'Payne',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Alexander' 
                AND d.LastName = 'Payne' 
                AND m.Title = 'Sideways'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Alexander' AND LastName = 'Payne'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Sideways' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Edward Scissorhands'
                AND ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Edward Scissorhands',
                    '1h 45m',
                    7.9,
                    NULL,
                    NULL,
                    '1990',
                    'Drama',
                    'The solitary life of an artificial man - who was incompletely constructed and has scissors for hands - is upended when he is taken in by a suburban family.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tim'
                AND LastName = 'Burton'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tim', 
                    'Burton',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tim' 
                AND d.LastName = 'Burton' 
                AND m.Title = 'Edward Scissorhands'
                AND m.ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tim' AND LastName = 'Burton'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Edward Scissorhands' AND ReleaseYear = '1990')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Thin Red Line'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Thin Red Line',
                    '2h 50m',
                    7.6,
                    NULL,
                    NULL,
                    '1998',
                    'History',
                    'Adaptation of James Jones'' autobiographical 1962 novel, focusing on the conflict at Guadalcanal during the second World War.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Terrence'
                AND LastName = 'Malick'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Terrence', 
                    'Malick',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Terrence' 
                AND d.LastName = 'Malick' 
                AND m.Title = 'The Thin Red Line'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Terrence' AND LastName = 'Malick'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Thin Red Line' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Hotel Rwanda'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Hotel Rwanda',
                    '2h 1m',
                    8.1,
                    NULL,
                    NULL,
                    '2004',
                    'History',
                    'Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Terry'
                AND LastName = 'George'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Terry', 
                    'George',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Terry' 
                AND d.LastName = 'George' 
                AND m.Title = 'Hotel Rwanda'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Terry' AND LastName = 'George'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Hotel Rwanda' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Sexy Beast'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Sexy Beast',
                    '1h 29m',
                    7.3,
                    NULL,
                    NULL,
                    '2000',
                    'Drama',
                    'Brutal gangster Don Logan recruits "retired" safecracker Gal for one last job, but it goes badly for both of them.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jonathan'
                AND LastName = 'Glazer'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jonathan', 
                    'Glazer',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jonathan' 
                AND d.LastName = 'Glazer' 
                AND m.Title = 'Sexy Beast'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jonathan' AND LastName = 'Glazer'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Sexy Beast' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Swingers'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Swingers',
                    '1h 36m',
                    7.2,
                    NULL,
                    NULL,
                    '1996',
                    'N/A',
                    'A wannabe actor has a hard time moving on from a break-up, but he is lucky to have supportive friends.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Doug'
                AND LastName = 'Liman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Doug', 
                    'Liman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Doug' 
                AND d.LastName = 'Liman' 
                AND m.Title = 'Swingers'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Doug' AND LastName = 'Liman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Swingers' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Amélie'
                AND ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Amélie',
                    '2h 2m',
                    8.3,
                    NULL,
                    NULL,
                    '2001',
                    'Comedy',
                    'Despite being caught in her imaginative world, young waitress Amelie decides to help people find happiness. Her quest to spread joy leads her on a journey during which she finds true love.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jean-Pierre'
                AND LastName = 'Jeunet'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jean-Pierre', 
                    'Jeunet',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jean-Pierre' 
                AND d.LastName = 'Jeunet' 
                AND m.Title = 'Amélie'
                AND m.ReleaseYear = '2001'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jean-Pierre' AND LastName = 'Jeunet'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Amélie' AND ReleaseYear = '2001')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Girl with the Dragon Tattoo'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Girl with the Dragon Tattoo',
                    '2h 32m',
                    7.8,
                    NULL,
                    NULL,
                    '2009',
                    'Mystery',
                    'Influential industrialist Vanger''s niece Harriet disappeared under mysterious circumstances 40 years ago. As a last attempt at solving the case, he hires investigative journalist Mikael Blomkvist.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Niels'
                AND LastName = 'Arden Oplev'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Niels', 
                    'Arden Oplev',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Niels' 
                AND d.LastName = 'Arden Oplev' 
                AND m.Title = 'The Girl with the Dragon Tattoo'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Niels' AND LastName = 'Arden Oplev'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Girl with the Dragon Tattoo' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Cinema Paradiso'
                AND ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Cinema Paradiso',
                    '2h 54m',
                    8.5,
                    NULL,
                    NULL,
                    '1988',
                    'N/A',
                    'Salvatore, a famous film director, returns to his hometown for the funeral of the local theater''s film projectionist, Alfredo. He reminisces about his life as a young boy falling in love with cinema.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Giuseppe'
                AND LastName = 'Tornatore'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Giuseppe', 
                    'Tornatore',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Giuseppe' 
                AND d.LastName = 'Tornatore' 
                AND m.Title = 'Cinema Paradiso'
                AND m.ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Giuseppe' AND LastName = 'Tornatore'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Cinema Paradiso' AND ReleaseYear = '1988')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Witness for the Prosecution'
                AND ReleaseYear = '1957'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Witness for the Prosecution',
                    '1h 56m',
                    8.4,
                    NULL,
                    NULL,
                    '1957',
                    'Crime',
                    'A veteran British barrister must defend his client in a murder trial that has surprise after surprise.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Billy'
                AND LastName = 'Wilder'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Billy', 
                    'Wilder',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Billy' 
                AND d.LastName = 'Wilder' 
                AND m.Title = 'Witness for the Prosecution'
                AND m.ReleaseYear = '1957'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Billy' AND LastName = 'Wilder'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Witness for the Prosecution' AND ReleaseYear = '1957')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Apartment'
                AND ReleaseYear = '1960'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Apartment',
                    '2h 5m',
                    8.3,
                    NULL,
                    NULL,
                    '1960',
                    'Romantic Comedy',
                    'A Manhattan insurance clerk tries to rise in his company by letting its executives use his apartment for trysts, but office politics and his own romantic hopes complicate matters.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Billy'
                AND LastName = 'Wilder'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Billy', 
                    'Wilder',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Billy' 
                AND d.LastName = 'Wilder' 
                AND m.Title = 'The Apartment'
                AND m.ReleaseYear = '1960'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Billy' AND LastName = 'Wilder'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Apartment' AND ReleaseYear = '1960')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Meet the Parents'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Meet the Parents',
                    '1h 48m',
                    7.0,
                    NULL,
                    NULL,
                    '2000',
                    'Romance',
                    'Chicago male nurse and chronic under-achiever Greg Focker meets his charming teacher girlfriend Pam Byrnes'' parents Jack and Dina before proposing, but suspicious Jack is an overprotective former CIA agent - every date''s worst nightmare.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jay'
                AND LastName = 'Roach'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jay', 
                    'Roach',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jay' 
                AND d.LastName = 'Roach' 
                AND m.Title = 'Meet the Parents'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jay' AND LastName = 'Roach'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Meet the Parents' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Right Stuff'
                AND ReleaseYear = '1983'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Right Stuff',
                    '3h 13m',
                    7.8,
                    NULL,
                    NULL,
                    '1983',
                    'Drama',
                    'The U.S. space program''s development from the breaking of the sound barrier to selection of the Mercury 7 astronauts, from a group of test pilots with a more seat-of-the-pants approach than the program''s more cautious engineers preferred.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Philip'
                AND LastName = 'Kaufman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Philip', 
                    'Kaufman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Philip' 
                AND d.LastName = 'Kaufman' 
                AND m.Title = 'The Right Stuff'
                AND m.ReleaseYear = '1983'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Philip' AND LastName = 'Kaufman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Right Stuff' AND ReleaseYear = '1983')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Catch Me If You Can'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Catch Me If You Can',
                    '2h 21m',
                    8.1,
                    NULL,
                    NULL,
                    '2002',
                    'Period Drama',
                    'Barely 17 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.',
                    '12A'
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
                AND m.Title = 'Catch Me If You Can'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steven' AND LastName = 'Spielberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Catch Me If You Can' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Saturday Night Fever'
                AND ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Saturday Night Fever',
                    '1h 58m',
                    6.8,
                    NULL,
                    NULL,
                    '1977',
                    'N/A',
                    'Anxious about his future after high school, a 19-year-old Italian-American from Brooklyn tries to escape the harsh reality of his bleak family life by dominating the dance floor at the local disco.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Badham'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Badham',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Badham' 
                AND m.Title = 'Saturday Night Fever'
                AND m.ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Badham'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Saturday Night Fever' AND ReleaseYear = '1977')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Anchorman: The Legend of Ron Burgundy'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Anchorman: The Legend of Ron Burgundy',
                    '1h 34m',
                    7.1,
                    NULL,
                    NULL,
                    '2004',
                    'N/A',
                    'In the 1970s, an anchorman''s stint as San Diego''s top-rated newsreader is challenged when an ambitious newswoman becomes his co-anchor.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Adam'
                AND LastName = 'McKay'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Adam', 
                    'McKay',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Adam' 
                AND d.LastName = 'McKay' 
                AND m.Title = 'Anchorman: The Legend of Ron Burgundy'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Adam' AND LastName = 'McKay'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Anchorman: The Legend of Ron Burgundy' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Happiness'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Happiness',
                    '2h 14m',
                    7.7,
                    NULL,
                    NULL,
                    '1998',
                    'Comedy',
                    'The lives of several individuals intertwine as they go about their lives in their own unique ways, engaging in acts which society as a whole might find disturbing in a desperate search for human connection.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Todd'
                AND LastName = 'Solondz'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Todd', 
                    'Solondz',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Todd' 
                AND d.LastName = 'Solondz' 
                AND m.Title = 'Happiness'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Todd' AND LastName = 'Solondz'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Happiness' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Knocked Up'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Knocked Up',
                    '2h 9m',
                    6.9,
                    NULL,
                    NULL,
                    '2007',
                    'Romance',
                    'For fun-loving party animal Ben Stone, the last thing he ever expected was for his one-night stand to show up on his doorstep eight weeks later to tell him she''s pregnant with his child.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Judd'
                AND LastName = 'Apatow'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Judd', 
                    'Apatow',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Judd' 
                AND d.LastName = 'Apatow' 
                AND m.Title = 'Knocked Up'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Judd' AND LastName = 'Apatow'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Knocked Up' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'District 9'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'District 9',
                    '1h 52m',
                    7.9,
                    NULL,
                    NULL,
                    '2009',
                    'Action',
                    'In a future Earth in which aliens are isolated in a remote ghetto, a government agent finds himself banished there.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Neill'
                AND LastName = 'Blomkamp'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Neill', 
                    'Blomkamp',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Neill' 
                AND d.LastName = 'Blomkamp' 
                AND m.Title = 'District 9'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Neill' AND LastName = 'Blomkamp'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'District 9' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Fahrenheit 9/11'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Fahrenheit 9/11',
                    '2h 2m',
                    7.5,
                    NULL,
                    NULL,
                    '2004',
                    'Documentary',
                    'Michael Moore''s view on what happened to the United States after 9/11 and how the Bush Administration allegedly used the tragic event to push forward its agenda for unjust wars in Afghanistan and Iraq.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Moore'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Moore',
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
                AND d.LastName = 'Moore' 
                AND m.Title = 'Fahrenheit 9/11'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Moore'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Fahrenheit 9/11' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Star Trek'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Star Trek',
                    '2h 7m',
                    7.9,
                    NULL,
                    NULL,
                    '2009',
                    'Adventure',
                    'The brash James T. Kirk tries to live up to his father''s legacy with Mr. Spock keeping him in check as a vengeful Romulan from the future creates black holes to destroy the Federation one planet at a time.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'J.J.'
                AND LastName = 'Abrams'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'J.J.', 
                    'Abrams',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'J.J.' 
                AND d.LastName = 'Abrams' 
                AND m.Title = 'Star Trek'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'J.J.' AND LastName = 'Abrams'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Star Trek' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Senna'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Senna',
                    '1h 46m',
                    8.5,
                    NULL,
                    NULL,
                    '2010',
                    'Documentary',
                    'A documentary on Brazilian Formula One racing driver Ayrton Senna, who won the F1 world championship three times before his death at age 34.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Asif'
                AND LastName = 'Kapadia'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Asif', 
                    'Kapadia',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Asif' 
                AND d.LastName = 'Kapadia' 
                AND m.Title = 'Senna'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Asif' AND LastName = 'Kapadia'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Senna' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Raid'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Raid',
                    '1h 41m',
                    7.6,
                    NULL,
                    NULL,
                    '2011',
                    'Crime',
                    'A S.W.A.T. team becomes trapped in a tenement run by a ruthless mobster and his army of killers and thugs.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Gareth'
                AND LastName = 'Evans'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Gareth', 
                    'Evans',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Gareth' 
                AND d.LastName = 'Evans' 
                AND m.Title = 'The Raid'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Gareth' AND LastName = 'Evans'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Raid' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Brick'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Brick',
                    '1h 50m',
                    7.1,
                    NULL,
                    NULL,
                    '2005',
                    'Drama',
                    'A teenage loner pushes his way into the underworld of a high school crime ring to investigate the disappearance of his ex-girlfriend.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Rian'
                AND LastName = 'Johnson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Rian', 
                    'Johnson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Rian' 
                AND d.LastName = 'Johnson' 
                AND m.Title = 'Brick'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Rian' AND LastName = 'Johnson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Brick' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Lives of Others'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Lives of Others',
                    '2h 17m',
                    8.4,
                    NULL,
                    NULL,
                    '2006',
                    'Drama',
                    'In 1984 East Berlin, an agent of the secret police conducting surveillance on a writer and his lover finds himself becoming increasingly absorbed by their lives.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Florian'
                AND LastName = 'Henckel von Donnersmarck'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Florian', 
                    'Henckel von Donnersmarck',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Florian' 
                AND d.LastName = 'Henckel von Donnersmarck' 
                AND m.Title = 'The Lives of Others'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Florian' AND LastName = 'Henckel von Donnersmarck'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Lives of Others' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'When We Were Kings'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'When We Were Kings',
                    '1h 28m',
                    7.9,
                    NULL,
                    NULL,
                    '1996',
                    'Sport',
                    'Boxing documentary on the 1974 world heavyweight championship bout between defending champion, George Foreman, and the underdog challenger, Muhammad Ali.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Leon'
                AND LastName = 'Gast'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Leon', 
                    'Gast',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Leon' 
                AND d.LastName = 'Gast' 
                AND m.Title = 'When We Were Kings'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Leon' AND LastName = 'Gast'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'When We Were Kings' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Groundhog Day'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Groundhog Day',
                    '1h 41m',
                    8.0,
                    NULL,
                    NULL,
                    '1993',
                    'Holiday Romance',
                    'A narcissistic, self-centered weatherman finds himself in a time loop on Groundhog Day.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Harold'
                AND LastName = 'Ramis'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Harold', 
                    'Ramis',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Harold' 
                AND d.LastName = 'Ramis' 
                AND m.Title = 'Groundhog Day'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Harold' AND LastName = 'Ramis'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Groundhog Day' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'All the President''s Men'
                AND ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'All the President''s Men',
                    '2h 18m',
                    7.9,
                    NULL,
                    NULL,
                    '1976',
                    'Workplace Drama',
                    '"The Washington Post" reporters Bob Woodward and Carl Bernstein uncover the details of the Watergate scandal that leads to President Richard Nixon''s resignation.',
                    'AA'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Alan'
                AND LastName = 'J. Pakula'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Alan', 
                    'J. Pakula',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Alan' 
                AND d.LastName = 'J. Pakula' 
                AND m.Title = 'All the President''s Men'
                AND m.ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Alan' AND LastName = 'J. Pakula'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'All the President''s Men' AND ReleaseYear = '1976')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Quiet Place'
                AND ReleaseYear = '2018'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Quiet Place',
                    '1h 30m',
                    7.5,
                    NULL,
                    NULL,
                    '2018',
                    'Horror',
                    'A family struggles for survival in a world invaded by blind alien creatures with ultra-sensitive hearing.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Krasinski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Krasinski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Krasinski' 
                AND m.Title = 'A Quiet Place'
                AND m.ReleaseYear = '2018'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Krasinski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Quiet Place' AND ReleaseYear = '2018')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Unbreakable'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Unbreakable',
                    '1h 46m',
                    7.3,
                    NULL,
                    NULL,
                    '2000',
                    'Thriller',
                    'A man learns something extraordinary about himself after a devastating accident.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'M.'
                AND LastName = 'Night Shyamalan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'M.', 
                    'Night Shyamalan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'M.' 
                AND d.LastName = 'Night Shyamalan' 
                AND m.Title = 'Unbreakable'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'M.' AND LastName = 'Night Shyamalan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Unbreakable' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Pan''s Labyrinth'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Pan''s Labyrinth',
                    '1h 58m',
                    8.2,
                    NULL,
                    NULL,
                    '2006',
                    'Period Drama',
                    'In 1944 Spain, a girl is sent to live with her ruthless stepfather. During the night, she meets a fairy who takes her to an old faun. He tells her she''s a princess, but must prove her royalty by surviving three gruesome tasks.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Guillermo'
                AND LastName = 'del Toro'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Guillermo', 
                    'del Toro',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Guillermo' 
                AND d.LastName = 'del Toro' 
                AND m.Title = 'Pan''s Labyrinth'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Guillermo' AND LastName = 'del Toro'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Pan''s Labyrinth' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Hugo'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Hugo',
                    '2h 6m',
                    7.5,
                    NULL,
                    NULL,
                    '2011',
                    'Fantasy',
                    'In 1931 Paris, an orphan living in the walls of a train station gets wrapped up in a mystery involving his late father and an automaton.',
                    'U'
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
                AND m.Title = 'Hugo'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Hugo' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Sunshine'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Sunshine',
                    '1h 47m',
                    7.2,
                    NULL,
                    NULL,
                    '2007',
                    'Sci-Fi',
                    'A team of international astronauts is sent on a dangerous mission to reignite the dying Sun with a nuclear fission bomb in 2057.',
                    '15'
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
                AND m.Title = 'Sunshine'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Danny' AND LastName = 'Boyle'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Sunshine' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The King of Kong'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The King of Kong',
                    '1h 19m',
                    8.0,
                    NULL,
                    NULL,
                    '2007',
                    'N/A',
                    'Die-hard gamers compete to break world records on classic arcade games.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Seth'
                AND LastName = 'Gordon'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Seth', 
                    'Gordon',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Seth' 
                AND d.LastName = 'Gordon' 
                AND m.Title = 'The King of Kong'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Seth' AND LastName = 'Gordon'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The King of Kong' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The People vs. Larry Flynt'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The People vs. Larry Flynt',
                    '2h 10m',
                    7.3,
                    NULL,
                    NULL,
                    '1996',
                    'N/A',
                    'The story of controversial pornography publisher Larry Flynt, and how he became a defender of free speech.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Milos'
                AND LastName = 'Forman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Milos', 
                    'Forman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Milos' 
                AND d.LastName = 'Forman' 
                AND m.Title = 'The People vs. Larry Flynt'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Milos' AND LastName = 'Forman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The People vs. Larry Flynt' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Superbad'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Superbad',
                    '1h 53m',
                    7.6,
                    NULL,
                    NULL,
                    '2007',
                    'Teen Comedy',
                    'Two co-dependent high school seniors are forced to deal with separation anxiety after their plan to stage a booze-soaked party goes awry.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Greg'
                AND LastName = 'Mottola'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Greg', 
                    'Mottola',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Greg' 
                AND d.LastName = 'Mottola' 
                AND m.Title = 'Superbad'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Greg' AND LastName = 'Mottola'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Superbad' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Serenity'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Serenity',
                    '1h 59m',
                    7.8,
                    NULL,
                    NULL,
                    '2005',
                    'Sci-Fi',
                    'The crew of the ship Serenity try to evade an assassin sent to recapture telepath River.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Joss'
                AND LastName = 'Whedon'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Joss', 
                    'Whedon',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Joss' 
                AND d.LastName = 'Whedon' 
                AND m.Title = 'Serenity'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joss' AND LastName = 'Whedon'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Serenity' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Night of the Living Dead'
                AND ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Night of the Living Dead',
                    '1h 36m',
                    7.8,
                    NULL,
                    NULL,
                    '1968',
                    'Zombie Horror',
                    'A ragtag group of Pennsylvanians barricade themselves in an old farmhouse to remain safe from a horde of flesh-eating ghouls that are ravaging the Northeast of the United States.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'George'
                AND LastName = 'A. Romero'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'George', 
                    'A. Romero',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'George' 
                AND d.LastName = 'A. Romero' 
                AND m.Title = 'Night of the Living Dead'
                AND m.ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'George' AND LastName = 'A. Romero'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Night of the Living Dead' AND ReleaseYear = '1968')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Austin Powers: International Man of Mystery'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Austin Powers: International Man of Mystery',
                    '1h 34m',
                    7.0,
                    NULL,
                    NULL,
                    '1997',
                    'Comedy',
                    'A world-class playboy and part-time secret agent from the 1960s emerges after thirty years in a cryogenic state to battle with his nemesis Dr. Evil.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jay'
                AND LastName = 'Roach'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jay', 
                    'Roach',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jay' 
                AND d.LastName = 'Roach' 
                AND m.Title = 'Austin Powers: International Man of Mystery'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jay' AND LastName = 'Roach'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Austin Powers: International Man of Mystery' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '28 Weeks Later'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '28 Weeks Later',
                    '1h 40m',
                    6.9,
                    NULL,
                    NULL,
                    '2007',
                    'N/A',
                    'Six months after the rage virus was inflicted on the population of Great Britain, the US Army helps to secure a small area of London for the survivors to repopulate and start again. But not everything goes according to plan.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Juan'
                AND LastName = 'Carlos Fresnadillo'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Juan', 
                    'Carlos Fresnadillo',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Juan' 
                AND d.LastName = 'Carlos Fresnadillo' 
                AND m.Title = '28 Weeks Later'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Juan' AND LastName = 'Carlos Fresnadillo'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '28 Weeks Later' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Thin Blue Line'
                AND ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Thin Blue Line',
                    '1h 41m',
                    7.9,
                    NULL,
                    NULL,
                    '1988',
                    'N/A',
                    'A film that successfully argued that a man was wrongly convicted for murder by a corrupt justice system in Dallas County, Texas.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Errol'
                AND LastName = 'Morris'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Errol', 
                    'Morris',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Errol' 
                AND d.LastName = 'Morris' 
                AND m.Title = 'The Thin Blue Line'
                AND m.ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Errol' AND LastName = 'Morris'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Thin Blue Line' AND ReleaseYear = '1988')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dog Soldiers'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dog Soldiers',
                    '1h 45m',
                    6.8,
                    NULL,
                    NULL,
                    '2002',
                    'Thriller',
                    'A routine military exercise turns into a nightmare in the Scottish wilderness.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Neil'
                AND LastName = 'Marshall'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Neil', 
                    'Marshall',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Neil' 
                AND d.LastName = 'Marshall' 
                AND m.Title = 'Dog Soldiers'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Neil' AND LastName = 'Marshall'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dog Soldiers' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dead Poets Society'
                AND ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dead Poets Society',
                    '2h 8m',
                    8.1,
                    NULL,
                    NULL,
                    '1989',
                    'Drama',
                    'Maverick teacher John Keating returns in 1959 to the prestigious New England boys'' boarding school where he was once a star student, using poetry to embolden his pupils to new heights of self-expression.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Weir'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Weir',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Weir' 
                AND m.Title = 'Dead Poets Society'
                AND m.ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Weir'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dead Poets Society' AND ReleaseYear = '1989')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Get Shorty'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Get Shorty',
                    '1h 45m',
                    6.9,
                    NULL,
                    NULL,
                    '1995',
                    'Crime',
                    'A mobster travels to Hollywood to collect a debt, and discovers that the movie business is much the same as his current job.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Barry'
                AND LastName = 'Sonnenfeld'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Barry', 
                    'Sonnenfeld',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Barry' 
                AND d.LastName = 'Sonnenfeld' 
                AND m.Title = 'Get Shorty'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Barry' AND LastName = 'Sonnenfeld'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Get Shorty' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Bad Santa'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Bad Santa',
                    '1h 32m',
                    7.0,
                    NULL,
                    NULL,
                    '2003',
                    'Crime',
                    'A miserable conman and his partner pose as Santa and his Little Helper to rob department stores on Christmas Eve. But they run into problems when the conman befriends a troubled kid.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Terry'
                AND LastName = 'Zwigoff'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Terry', 
                    'Zwigoff',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Terry' 
                AND d.LastName = 'Zwigoff' 
                AND m.Title = 'Bad Santa'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Terry' AND LastName = 'Zwigoff'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Bad Santa' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Ghostbusters'
                AND ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Ghostbusters',
                    '1h 45m',
                    7.8,
                    NULL,
                    NULL,
                    '1984',
                    'Action',
                    'Three parapsychologists forced out of their university funding set up shop as a unique ghost removal service in New York City, attracting frightened yet skeptical customers.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ivan'
                AND LastName = 'Reitman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ivan', 
                    'Reitman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ivan' 
                AND d.LastName = 'Reitman' 
                AND m.Title = 'Ghostbusters'
                AND m.ReleaseYear = '1984'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ivan' AND LastName = 'Reitman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Ghostbusters' AND ReleaseYear = '1984')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Donnie Brasco'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Donnie Brasco',
                    '2h 7m',
                    7.7,
                    NULL,
                    NULL,
                    '1997',
                    'Crime',
                    'An FBI undercover agent infiltrates the mob and finds himself identifying more with the Mafia life--at the expense of his regular one.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Mike'
                AND LastName = 'Newell'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Mike', 
                    'Newell',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Mike' 
                AND d.LastName = 'Newell' 
                AND m.Title = 'Donnie Brasco'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Mike' AND LastName = 'Newell'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Donnie Brasco' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Top Gun'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Top Gun',
                    '1h 49m',
                    6.9,
                    NULL,
                    NULL,
                    '1986',
                    'N/A',
                    'The Top Gun Naval Fighter Weapons School is where the best of the best train to refine their elite flying skills. When hotshot fighter pilot Maverick is sent to the school, his reckless attitude and cocky demeanor put him at odds with the other pilots, especially the cool and col...',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tony'
                AND LastName = 'Scott'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tony', 
                    'Scott',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tony' 
                AND d.LastName = 'Scott' 
                AND m.Title = 'Top Gun'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tony' AND LastName = 'Scott'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Top Gun' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '500 Days of Summer'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '500 Days of Summer',
                    '1h 35m',
                    7.7,
                    NULL,
                    NULL,
                    '2009',
                    'Drama',
                    'After being dumped by the girl he believes to be his soulmate, hopeless romantic Tom Hansen reflects on their relationship to try and figure out where things went wrong and how he can win her back.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Marc'
                AND LastName = 'Webb'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Marc', 
                    'Webb',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Marc' 
                AND d.LastName = 'Webb' 
                AND m.Title = '500 Days of Summer'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Marc' AND LastName = 'Webb'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '500 Days of Summer' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Chopper'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Chopper',
                    '1h 34m',
                    7.1,
                    NULL,
                    NULL,
                    '2000',
                    'Crime',
                    'Chopper tells the intense story of Mark "Chopper" Read, a legendary criminal who wrote his autobiography while serving a jail sentence in prison. His book, "From the Inside", upon which the film is based, was a best-seller.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Andrew'
                AND LastName = 'Dominik'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Andrew', 
                    'Dominik',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Andrew' 
                AND d.LastName = 'Dominik' 
                AND m.Title = 'Chopper'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Andrew' AND LastName = 'Dominik'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Chopper' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Breakfast Club'
                AND ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Breakfast Club',
                    '1h 37m',
                    7.8,
                    NULL,
                    NULL,
                    '1985',
                    'Comedy',
                    'Five high school students meet in Saturday detention and discover how they have a great deal more in common than they thought.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Hughes'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Hughes',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Hughes' 
                AND m.Title = 'The Breakfast Club'
                AND m.ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Hughes'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Breakfast Club' AND ReleaseYear = '1985')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Grosse Pointe Blank'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Grosse Pointe Blank',
                    '1h 47m',
                    7.3,
                    NULL,
                    NULL,
                    '1997',
                    'Comedy',
                    'Professional assassin Martin Blank is sent on a mission to a small Detroit suburb, Grosse Pointe--where, by coincidence, his 10-year high-school reunion party is about to take place.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'George'
                AND LastName = 'Armitage'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'George', 
                    'Armitage',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'George' 
                AND d.LastName = 'Armitage' 
                AND m.Title = 'Grosse Pointe Blank'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'George' AND LastName = 'Armitage'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Grosse Pointe Blank' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'John Wick: Chapter 3 - Parabellum'
                AND ReleaseYear = '2019'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'John Wick: Chapter 3 - Parabellum',
                    '2h 10m',
                    7.4,
                    NULL,
                    NULL,
                    '2019',
                    'Crime',
                    'John Wick is on the run after killing a member of the international assassins'' guild, and with a $14 million price tag on his head, he is the target of hit men and women everywhere.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Chad'
                AND LastName = 'Stahelski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Chad', 
                    'Stahelski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Chad' 
                AND d.LastName = 'Stahelski' 
                AND m.Title = 'John Wick: Chapter 3 - Parabellum'
                AND m.ReleaseYear = '2019'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Chad' AND LastName = 'Stahelski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'John Wick: Chapter 3 - Parabellum' AND ReleaseYear = '2019')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Dirty Dozen'
                AND ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Dirty Dozen',
                    '2h 30m',
                    7.7,
                    NULL,
                    NULL,
                    '1967',
                    'N/A',
                    'During World War II, a rebellious U.S. Army Major is assigned a dozen convicted murderers to train and lead them into a mass assassination mission of German officers.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'Aldrich'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'Aldrich',
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
                AND d.LastName = 'Aldrich' 
                AND m.Title = 'The Dirty Dozen'
                AND m.ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Aldrich'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Dirty Dozen' AND ReleaseYear = '1967')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'To Kill a Mockingbird'
                AND ReleaseYear = '1962'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'To Kill a Mockingbird',
                    '2h 9m',
                    8.3,
                    NULL,
                    NULL,
                    '1962',
                    'Drama',
                    'A widowed lawyer in Depression-era Alabama defends a black man against a false rape charge while teaching his young children about the sad reality of prejudice.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'Mulligan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'Mulligan',
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
                AND d.LastName = 'Mulligan' 
                AND m.Title = 'To Kill a Mockingbird'
                AND m.ReleaseYear = '1962'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Mulligan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'To Kill a Mockingbird' AND ReleaseYear = '1962')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Harold and Maude'
                AND ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Harold and Maude',
                    '1h 31m',
                    7.9,
                    NULL,
                    NULL,
                    '1971',
                    'Comedy',
                    'Young, rich, and obsessed with death, Harold finds himself changed forever when he meets lively septuagenarian Maude at a funeral.',
                    'AA'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Hal'
                AND LastName = 'Ashby'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Hal', 
                    'Ashby',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Hal' 
                AND d.LastName = 'Ashby' 
                AND m.Title = 'Harold and Maude'
                AND m.ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Hal' AND LastName = 'Ashby'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Harold and Maude' AND ReleaseYear = '1971')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Waltz with Bashir'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Waltz with Bashir',
                    '1h 30m',
                    8.0,
                    NULL,
                    NULL,
                    '2008',
                    'History Documentary',
                    'An Israeli film director interviews fellow veterans of the 1982 invasion of Lebanon to reconstruct his own memories of his term of service in that conflict.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ari'
                AND LastName = 'Folman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ari', 
                    'Folman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ari' 
                AND d.LastName = 'Folman' 
                AND m.Title = 'Waltz with Bashir'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ari' AND LastName = 'Folman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Waltz with Bashir' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Shame'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Shame',
                    '1h 41m',
                    7.2,
                    NULL,
                    NULL,
                    '2011',
                    'N/A',
                    'A nymphomaniac''s carefully cultivated private life falls apart after his sister arrives for an indefinite stay.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Steve'
                AND LastName = 'McQueen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Steve', 
                    'McQueen',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Steve' 
                AND d.LastName = 'McQueen' 
                AND m.Title = 'Shame'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Steve' AND LastName = 'McQueen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Shame' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Kill Bill: Vol. 2'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Kill Bill: Vol. 2',
                    '2h 17m',
                    8.0,
                    NULL,
                    NULL,
                    '2004',
                    'Action',
                    'The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd, and the treacherous, one-eyed Elle.',
                    '18'
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
                AND m.Title = 'Kill Bill: Vol. 2'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Quentin' AND LastName = 'Tarantino'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Kill Bill: Vol. 2' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Pirates of the Caribbean: The Curse of the Black Pearl'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Pirates of the Caribbean: The Curse of the Black Pearl',
                    '2h 23m',
                    8.1,
                    NULL,
                    NULL,
                    '2003',
                    'Sword & Sandal',
                    'Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save Elizabeth Swann, the governor''s daughter and his love, from Jack''s former pirate allies, who are now undead.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Gore'
                AND LastName = 'Verbinski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Gore', 
                    'Verbinski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Gore' 
                AND d.LastName = 'Verbinski' 
                AND m.Title = 'Pirates of the Caribbean: The Curse of the Black Pearl'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Gore' AND LastName = 'Verbinski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Pirates of the Caribbean: The Curse of the Black Pearl' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Bottle Rocket'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Bottle Rocket',
                    '1h 31m',
                    6.9,
                    NULL,
                    NULL,
                    '1996',
                    'Crime',
                    'Three friends plan to pull off a simple robbery and go on the run.',
                    '15'
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
                AND m.Title = 'Bottle Rocket'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wes' AND LastName = 'Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Bottle Rocket' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Star Wars: Episode V - The Empire Strikes Back'
                AND ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Star Wars: Episode V - The Empire Strikes Back',
                    '2h 4m',
                    8.7,
                    NULL,
                    NULL,
                    '1980',
                    'Fantasy Epic',
                    'After the Empire overpowers the Rebel Alliance, Luke Skywalker begins his Jedi training with Yoda. At the same time, Darth Vader and bounty hunter Boba Fett pursue his friends across the galaxy.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Irvin'
                AND LastName = 'Kershner'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Irvin', 
                    'Kershner',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Irvin' 
                AND d.LastName = 'Kershner' 
                AND m.Title = 'Star Wars: Episode V - The Empire Strikes Back'
                AND m.ReleaseYear = '1980'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Irvin' AND LastName = 'Kershner'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Star Wars: Episode V - The Empire Strikes Back' AND ReleaseYear = '1980')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Jackass: The Movie'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Jackass: The Movie',
                    '1h 25m',
                    6.6,
                    NULL,
                    NULL,
                    '2002',
                    'Documentary',
                    'Johnny Knoxville and his band of maniacs perform a variety of stunts and gross-out gags on the big screen for the first time.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jeff'
                AND LastName = 'Tremaine'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jeff', 
                    'Tremaine',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jeff' 
                AND d.LastName = 'Tremaine' 
                AND m.Title = 'Jackass: The Movie'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jeff' AND LastName = 'Tremaine'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Jackass: The Movie' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Point Break'
                AND ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Point Break',
                    '2h 2m',
                    7.3,
                    NULL,
                    NULL,
                    '1991',
                    'Thriller',
                    'An F.B.I. Agent goes undercover to catch a gang of surfers who may be bank robbers.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Kathryn'
                AND LastName = 'Bigelow'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Kathryn', 
                    'Bigelow',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Kathryn' 
                AND d.LastName = 'Bigelow' 
                AND m.Title = 'Point Break'
                AND m.ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Kathryn' AND LastName = 'Bigelow'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Point Break' AND ReleaseYear = '1991')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Squid and the Whale'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Squid and the Whale',
                    '1h 21m',
                    7.3,
                    NULL,
                    NULL,
                    '2005',
                    'N/A',
                    'Follows two young boys dealing with their parents'' divorce in Brooklyn in the 1980s.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Noah'
                AND LastName = 'Baumbach'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Noah', 
                    'Baumbach',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Noah' 
                AND d.LastName = 'Baumbach' 
                AND m.Title = 'The Squid and the Whale'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Noah' AND LastName = 'Baumbach'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Squid and the Whale' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Network'
                AND ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Network',
                    '2h 1m',
                    8.1,
                    NULL,
                    NULL,
                    '1976',
                    'N/A',
                    'A television network cynically exploits a deranged former anchor''s ravings and revelations about mass media for its own profit, but finds that his message may be difficult to control.',
                    'AA'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sidney'
                AND LastName = 'Lumet'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sidney', 
                    'Lumet',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sidney' 
                AND d.LastName = 'Lumet' 
                AND m.Title = 'Network'
                AND m.ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sidney' AND LastName = 'Lumet'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Network' AND ReleaseYear = '1976')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Irishman'
                AND ReleaseYear = '2019'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Irishman',
                    '3h 29m',
                    7.8,
                    NULL,
                    NULL,
                    '2019',
                    'Period Drama',
                    'An illustration of Frank Sheeran''s life, from W.W.II veteran to hit-man for the Bufalino crime family and his alleged assassination of his close friend Jimmy Hoffa.',
                    '15'
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
                AND m.Title = 'The Irishman'
                AND m.ReleaseYear = '2019'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Irishman' AND ReleaseYear = '2019')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Once Upon a Time in the West'
                AND ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Once Upon a Time in the West',
                    '2h 46m',
                    8.5,
                    NULL,
                    NULL,
                    '1968',
                    'Drama',
                    'A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sergio'
                AND LastName = 'Leone'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sergio', 
                    'Leone',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sergio' 
                AND d.LastName = 'Leone' 
                AND m.Title = 'Once Upon a Time in the West'
                AND m.ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sergio' AND LastName = 'Leone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Once Upon a Time in the West' AND ReleaseYear = '1968')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'RoboCop'
                AND ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'RoboCop',
                    '1h 42m',
                    7.6,
                    NULL,
                    NULL,
                    '1987',
                    'Action',
                    'In a dystopic and crime-ridden Detroit, a terminally wounded cop returns to the force as a powerful cyborg haunted by submerged memories.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Verhoeven'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Verhoeven',
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
                AND d.LastName = 'Verhoeven' 
                AND m.Title = 'RoboCop'
                AND m.ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Verhoeven'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'RoboCop' AND ReleaseYear = '1987')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Bonnie and Clyde'
                AND ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Bonnie and Clyde',
                    '1h 51m',
                    7.7,
                    NULL,
                    NULL,
                    '1967',
                    'Action',
                    'Bored waitress Bonnie Parker falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Arthur'
                AND LastName = 'Penn'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Arthur', 
                    'Penn',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Arthur' 
                AND d.LastName = 'Penn' 
                AND m.Title = 'Bonnie and Clyde'
                AND m.ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Arthur' AND LastName = 'Penn'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Bonnie and Clyde' AND ReleaseYear = '1967')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'South Park: Bigger, Longer & Uncut'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'South Park: Bigger, Longer & Uncut',
                    '1h 21m',
                    7.7,
                    NULL,
                    NULL,
                    '1999',
                    'Farce',
                    'When Stan Marsh and his friends go see an R-rated movie, they start cursing and their parents think that Canada is to blame.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Trey'
                AND LastName = 'Parker'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Trey', 
                    'Parker',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Trey' 
                AND d.LastName = 'Parker' 
                AND m.Title = 'South Park: Bigger, Longer & Uncut'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Trey' AND LastName = 'Parker'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'South Park: Bigger, Longer & Uncut' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Texas Chain Saw Massacre'
                AND ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Texas Chain Saw Massacre',
                    '1h 23m',
                    7.4,
                    NULL,
                    NULL,
                    '1974',
                    'Splatter Horror',
                    'Five friends head out to rural Texas to visit the grave of a grandfather. On the way they stumble across what appears to be a deserted house, only to discover something sinister within. Something armed with a chainsaw.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tobe'
                AND LastName = 'Hooper'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tobe', 
                    'Hooper',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tobe' 
                AND d.LastName = 'Hooper' 
                AND m.Title = 'The Texas Chain Saw Massacre'
                AND m.ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tobe' AND LastName = 'Hooper'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Texas Chain Saw Massacre' AND ReleaseYear = '1974')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dodgeball: A True Underdog Story'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dodgeball: A True Underdog Story',
                    '1h 32m',
                    6.7,
                    NULL,
                    NULL,
                    '2004',
                    'Sport',
                    'A group of misfits enter a Las Vegas dodgeball tournament in order to save their cherished local gym from the onslaught of a corporate health fitness chain.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Rawson'
                AND LastName = 'Marshall Thurber'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Rawson', 
                    'Marshall Thurber',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Rawson' 
                AND d.LastName = 'Marshall Thurber' 
                AND m.Title = 'Dodgeball: A True Underdog Story'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Rawson' AND LastName = 'Marshall Thurber'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dodgeball: A True Underdog Story' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Skin I Live In'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Skin I Live In',
                    '2h',
                    7.6,
                    NULL,
                    NULL,
                    '2011',
                    'Mystery',
                    'A brilliant plastic surgeon, haunted by past tragedies, creates a type of synthetic skin that withstands any kind of damage. His guinea pig: a mysterious and volatile woman who holds the key to his obsession.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Pedro'
                AND LastName = 'Almodóvar'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Pedro', 
                    'Almodóvar',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Pedro' 
                AND d.LastName = 'Almodóvar' 
                AND m.Title = 'The Skin I Live In'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Pedro' AND LastName = 'Almodóvar'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Skin I Live In' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Ruby Sparks'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Ruby Sparks',
                    '1h 44m',
                    7.2,
                    NULL,
                    NULL,
                    '2012',
                    'Fantasy',
                    'A novelist struggling with writer''s block finds romance in a most unusual way: by creating a female character he thinks will love him, then willing her into existence.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jonathan'
                AND LastName = 'Dayton, Valerie Faris'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jonathan', 
                    'Dayton, Valerie Faris',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jonathan' 
                AND d.LastName = 'Dayton, Valerie Faris' 
                AND m.Title = 'Ruby Sparks'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jonathan' AND LastName = 'Dayton, Valerie Faris'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Ruby Sparks' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Layer Cake'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Layer Cake',
                    '1h 45m',
                    7.3,
                    NULL,
                    NULL,
                    '2004',
                    'Thriller',
                    'A successful cocaine dealer gets two tough assignments from his boss on the eve of his planned early retirement.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Matthew'
                AND LastName = 'Vaughn'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Matthew', 
                    'Vaughn',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Matthew' 
                AND d.LastName = 'Vaughn' 
                AND m.Title = 'Layer Cake'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Matthew' AND LastName = 'Vaughn'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Layer Cake' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Rounders'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Rounders',
                    '2h 1m',
                    7.3,
                    NULL,
                    NULL,
                    '1998',
                    'N/A',
                    'A young, reformed gambler must return to playing high stakes poker to help a friend pay off loan sharks, while balancing his relationship with his girlfriend and his commitments to law school.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Dahl'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Dahl',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Dahl' 
                AND m.Title = 'Rounders'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Dahl'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Rounders' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Superman'
                AND ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Superman',
                    '2h 23m',
                    7.4,
                    NULL,
                    NULL,
                    '1978',
                    'Adventure',
                    'An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home''s first and greatest superhero.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Richard'
                AND LastName = 'Donner'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Richard', 
                    'Donner',
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
                AND d.LastName = 'Donner' 
                AND m.Title = 'Superman'
                AND m.ReleaseYear = '1978'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Richard' AND LastName = 'Donner'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Superman' AND ReleaseYear = '1978')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Day of the Dead'
                AND ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Day of the Dead',
                    '1h 41m',
                    7.1,
                    NULL,
                    NULL,
                    '1985',
                    'Thriller',
                    'As the world is overrun by zombies, a group of scientists and military personnel sheltering in an underground bunker in Florida must decide on how they should deal with the undead horde.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'George'
                AND LastName = 'A. Romero'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'George', 
                    'A. Romero',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'George' 
                AND d.LastName = 'A. Romero' 
                AND m.Title = 'Day of the Dead'
                AND m.ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'George' AND LastName = 'A. Romero'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Day of the Dead' AND ReleaseYear = '1985')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Marathon Man'
                AND ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Marathon Man',
                    '2h 5m',
                    7.4,
                    NULL,
                    NULL,
                    '1976',
                    'N/A',
                    'After the murder of his older brother, a New York history student is hounded by shadowy government agents on the trail of a Nazi war criminal who is trying to retrieve smuggled diamonds.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Schlesinger'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Schlesinger',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Schlesinger' 
                AND m.Title = 'Marathon Man'
                AND m.ReleaseYear = '1976'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Schlesinger'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Marathon Man' AND ReleaseYear = '1976')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Midnight Cowboy'
                AND ReleaseYear = '1969'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Midnight Cowboy',
                    '1h 53m',
                    7.8,
                    NULL,
                    NULL,
                    '1969',
                    'N/A',
                    'A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Schlesinger'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Schlesinger',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Schlesinger' 
                AND m.Title = 'Midnight Cowboy'
                AND m.ReleaseYear = '1969'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Schlesinger'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Midnight Cowboy' AND ReleaseYear = '1969')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Life of Brian'
                AND ReleaseYear = '1979'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Life of Brian',
                    '1h 34m',
                    8.0,
                    NULL,
                    NULL,
                    '1979',
                    'Comedy',
                    'Born on the original Christmas in the stable next door to Jesus Christ, Brian of Nazareth spends his life being mistaken for a messiah.',
                    'AA'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Terry'
                AND LastName = 'Jones'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Terry', 
                    'Jones',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Terry' 
                AND d.LastName = 'Jones' 
                AND m.Title = 'Life of Brian'
                AND m.ReleaseYear = '1979'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Terry' AND LastName = 'Jones'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Life of Brian' AND ReleaseYear = '1979')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Raising Arizona'
                AND ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Raising Arizona',
                    '1h 34m',
                    7.3,
                    NULL,
                    NULL,
                    '1987',
                    'Crime',
                    'When a childless couple--an ex-con and an ex-cop--decide to help themselves to one of another family''s quintuplets, their lives become more complicated than they anticipated.',
                    '15'
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
                AND m.Title = 'Raising Arizona'
                AND m.ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joel' AND LastName = 'Coen, Ethan Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Raising Arizona' AND ReleaseYear = '1987')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Moon'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Moon',
                    '1h 37m',
                    7.8,
                    NULL,
                    NULL,
                    '2009',
                    'Mystery',
                    'Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet''s power problems.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Duncan'
                AND LastName = 'Jones'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Duncan', 
                    'Jones',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Duncan' 
                AND d.LastName = 'Jones' 
                AND m.Title = 'Moon'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Duncan' AND LastName = 'Jones'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Moon' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Clerks'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Clerks',
                    '1h 32m',
                    7.7,
                    NULL,
                    NULL,
                    '1994',
                    'N/A',
                    'A day in the lives of two convenience clerks named Dante and Randal as they annoy customers, discuss movies, and play hockey on the store roof.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Kevin'
                AND LastName = 'Smith'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Kevin', 
                    'Smith',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Kevin' 
                AND d.LastName = 'Smith' 
                AND m.Title = 'Clerks'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Kevin' AND LastName = 'Smith'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Clerks' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Drag Me to Hell'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Drag Me to Hell',
                    '1h 39m',
                    6.6,
                    NULL,
                    NULL,
                    '2009',
                    'N/A',
                    'A loan officer who evicts an old woman from her home finds herself the recipient of a supernatural curse. Desperate, she turns to a seer to try and save her soul, while evil forces work to push her to a breaking point.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sam'
                AND LastName = 'Raimi'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sam', 
                    'Raimi',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sam' 
                AND d.LastName = 'Raimi' 
                AND m.Title = 'Drag Me to Hell'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sam' AND LastName = 'Raimi'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Drag Me to Hell' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Brazil'
                AND ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Brazil',
                    '2h 12m',
                    7.8,
                    NULL,
                    NULL,
                    '1985',
                    'Steampunk',
                    'A bureaucrat in a dystopic society becomes an enemy of the state as he pursues the woman of his dreams.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Terry'
                AND LastName = 'Gilliam'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Terry', 
                    'Gilliam',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Terry' 
                AND d.LastName = 'Gilliam' 
                AND m.Title = 'Brazil'
                AND m.ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Terry' AND LastName = 'Gilliam'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Brazil' AND ReleaseYear = '1985')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Bourne Supremacy'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Bourne Supremacy',
                    '1h 48m',
                    7.7,
                    NULL,
                    NULL,
                    '2004',
                    'Mystery',
                    'When Jason Bourne is framed for a CIA operation gone awry, he is forced to resume his former life as a trained assassin to survive.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Greengrass'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Greengrass',
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
                AND d.LastName = 'Greengrass' 
                AND m.Title = 'The Bourne Supremacy'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Greengrass'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Bourne Supremacy' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Three Colours: Red'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Three Colours: Red',
                    '1h 39m',
                    8.1,
                    NULL,
                    NULL,
                    '1994',
                    'Drama',
                    'A model discovers a retired judge is keen on invading people''s privacy.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Krzysztof'
                AND LastName = 'Kieslowski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Krzysztof', 
                    'Kieslowski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Krzysztof' 
                AND d.LastName = 'Kieslowski' 
                AND m.Title = 'Three Colours: Red'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Krzysztof' AND LastName = 'Kieslowski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Three Colours: Red' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A History of Violence'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A History of Violence',
                    '1h 36m',
                    7.4,
                    NULL,
                    NULL,
                    '2005',
                    'Crime',
                    'A mild-mannered man becomes a local hero through an act of violence, which sets off repercussions that will shake his family to its very core.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Cronenberg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Cronenberg',
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
                AND d.LastName = 'Cronenberg' 
                AND m.Title = 'A History of Violence'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Cronenberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A History of Violence' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Hangover'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Hangover',
                    '1h 40m',
                    7.7,
                    NULL,
                    NULL,
                    '2009',
                    'N/A',
                    'Three buddies wake up from a bachelor party in Las Vegas with no memory of the previous night and the bachelor missing. They must make their way around the city in order to find their friend in time for his wedding.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Todd'
                AND LastName = 'Phillips'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Todd', 
                    'Phillips',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Todd' 
                AND d.LastName = 'Phillips' 
                AND m.Title = 'The Hangover'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Todd' AND LastName = 'Phillips'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Hangover' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Scott Pilgrim vs. the World'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Scott Pilgrim vs. the World',
                    '1h 52m',
                    7.6,
                    NULL,
                    NULL,
                    '2010',
                    'Teen Fantasy',
                    'In a magically realistic version of Toronto, a young man must defeat his new girlfriend''s seven evil exes one by one in order to win her heart.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Edgar'
                AND LastName = 'Wright'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Edgar', 
                    'Wright',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Edgar' 
                AND d.LastName = 'Wright' 
                AND m.Title = 'Scott Pilgrim vs. the World'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Edgar' AND LastName = 'Wright'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Scott Pilgrim vs. the World' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Producers'
                AND ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Producers',
                    '1h 28m',
                    7.5,
                    NULL,
                    NULL,
                    '1967',
                    'N/A',
                    'A stage-play producer devises a plan to make money by producing a sure-fire flop.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Mel'
                AND LastName = 'Brooks'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Mel', 
                    'Brooks',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Mel' 
                AND d.LastName = 'Brooks' 
                AND m.Title = 'The Producers'
                AND m.ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Mel' AND LastName = 'Brooks'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Producers' AND ReleaseYear = '1967')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Animal Kingdom'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Animal Kingdom',
                    '1h 53m',
                    7.2,
                    NULL,
                    NULL,
                    '2010',
                    'Crime',
                    'A seventeen-year-old navigates his survival amongst an explosive criminal family and the detective who thinks he can save him.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Michôd'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Michôd',
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
                AND d.LastName = 'Michôd' 
                AND m.Title = 'Animal Kingdom'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Michôd'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Animal Kingdom' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Hudsucker Proxy'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Hudsucker Proxy',
                    '1h 51m',
                    7.2,
                    NULL,
                    NULL,
                    '1994',
                    'Drama',
                    'A naive business graduate is installed as president of a manufacturing company as part of a stock scam.',
                    'PG'
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
                AND m.Title = 'The Hudsucker Proxy'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joel' AND LastName = 'Coen, Ethan Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Hudsucker Proxy' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Jerry Maguire'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Jerry Maguire',
                    '2h 19m',
                    7.3,
                    NULL,
                    NULL,
                    '1996',
                    'Workplace Drama',
                    'When a sports agent has a moral epiphany and is fired for expressing it, he decides to put his new philosophy to the test as an independent agent with the only athlete who stays with him and his former colleague.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Cameron'
                AND LastName = 'Crowe'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Cameron', 
                    'Crowe',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Cameron' 
                AND d.LastName = 'Crowe' 
                AND m.Title = 'Jerry Maguire'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Cameron' AND LastName = 'Crowe'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Jerry Maguire' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Speed'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Speed',
                    '1h 56m',
                    7.3,
                    NULL,
                    NULL,
                    '1994',
                    'Adventure',
                    'A young police officer must prevent a bomb exploding aboard a city bus by keeping its speed above 50 mph.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jan'
                AND LastName = 'de Bont'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jan', 
                    'de Bont',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jan' 
                AND d.LastName = 'de Bont' 
                AND m.Title = 'Speed'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jan' AND LastName = 'de Bont'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Speed' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'True Grit'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'True Grit',
                    '1h 50m',
                    7.6,
                    NULL,
                    NULL,
                    '2010',
                    'N/A',
                    'A stubborn teenager enlists the help of a tough U.S. Marshal to track down her father''s murderer.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ethan'
                AND LastName = 'Coen, Joel Coen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ethan', 
                    'Coen, Joel Coen',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ethan' 
                AND d.LastName = 'Coen, Joel Coen' 
                AND m.Title = 'True Grit'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ethan' AND LastName = 'Coen, Joel Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'True Grit' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Cool Hand Luke'
                AND ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Cool Hand Luke',
                    '2h 7m',
                    8.0,
                    NULL,
                    NULL,
                    '1967',
                    'Drama',
                    'A laid-back Southern man is sentenced to two years in a rural prison, but refuses to conform.',
                    'A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stuart'
                AND LastName = 'Rosenberg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stuart', 
                    'Rosenberg',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stuart' 
                AND d.LastName = 'Rosenberg' 
                AND m.Title = 'Cool Hand Luke'
                AND m.ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stuart' AND LastName = 'Rosenberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Cool Hand Luke' AND ReleaseYear = '1967')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Zombieland'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Zombieland',
                    '1h 28m',
                    7.5,
                    NULL,
                    NULL,
                    '2009',
                    'Zombie Horror',
                    'A shy student trying to reach his family in Ohio, a gun-toting bruiser in search of the last Twinkie and a pair of sisters striving to get to an amusement park join forces in a trek across a zombie-filled America.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ruben'
                AND LastName = 'Fleischer'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ruben', 
                    'Fleischer',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ruben' 
                AND d.LastName = 'Fleischer' 
                AND m.Title = 'Zombieland'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ruben' AND LastName = 'Fleischer'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Zombieland' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'American: The Bill Hicks Story'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'American: The Bill Hicks Story',
                    '1h 42m',
                    7.7,
                    NULL,
                    NULL,
                    '2009',
                    'Comedy',
                    'Photo-animated feature documentary, uniquely narrated by the 10 people who knew Bill best.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Matt'
                AND LastName = 'Harlock, Paul Thomas'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Matt', 
                    'Harlock, Paul Thomas',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Matt' 
                AND d.LastName = 'Harlock, Paul Thomas' 
                AND m.Title = 'American: The Bill Hicks Story'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Matt' AND LastName = 'Harlock, Paul Thomas'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'American: The Bill Hicks Story' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Crash'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Crash',
                    '1h 52m',
                    7.7,
                    NULL,
                    NULL,
                    '2004',
                    'Thriller',
                    'Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Haggis'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Haggis',
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
                AND d.LastName = 'Haggis' 
                AND m.Title = 'Crash'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Haggis'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Crash' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Graduate'
                AND ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Graduate',
                    '1h 46m',
                    8.0,
                    NULL,
                    NULL,
                    '1967',
                    'Comedy',
                    'A disillusioned college graduate finds himself torn between his older lover and her daughter.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Mike'
                AND LastName = 'Nichols'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Mike', 
                    'Nichols',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Mike' 
                AND d.LastName = 'Nichols' 
                AND m.Title = 'The Graduate'
                AND m.ReleaseYear = '1967'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Mike' AND LastName = 'Nichols'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Graduate' AND ReleaseYear = '1967')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Bronx Tale'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Bronx Tale',
                    '2h 1m',
                    7.8,
                    NULL,
                    NULL,
                    '1993',
                    'Drama',
                    'An intense drama about a boy torn between his tough, hard-working father and a violent yet charismatic crime boss.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'De Niro'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'De Niro',
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
                AND d.LastName = 'De Niro' 
                AND m.Title = 'A Bronx Tale'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'De Niro'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Bronx Tale' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Let the Right One In'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Let the Right One In',
                    '1h 54m',
                    7.8,
                    NULL,
                    NULL,
                    '2008',
                    'Psychological Drama',
                    'Oskar, an overlooked and bullied boy, finds love and revenge through Eli, a beautiful but peculiar girl.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tomas'
                AND LastName = 'Alfredson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tomas', 
                    'Alfredson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tomas' 
                AND d.LastName = 'Alfredson' 
                AND m.Title = 'Let the Right One In'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tomas' AND LastName = 'Alfredson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Let the Right One In' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'As Good as It Gets'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'As Good as It Gets',
                    '2h 19m',
                    7.7,
                    NULL,
                    NULL,
                    '1997',
                    'Romance',
                    'A single mother and waitress, a misanthropic author, and a gay artist form an unlikely friendship after the artist is assaulted in a robbery.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'L. Brooks'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'L. Brooks',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'L. Brooks' 
                AND m.Title = 'As Good as It Gets'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'L. Brooks'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'As Good as It Gets' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Das Boot'
                AND ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Das Boot',
                    '2h 29m',
                    8.4,
                    NULL,
                    NULL,
                    '1981',
                    'N/A',
                    'A German U-boat stalks the frigid waters of the North Atlantic as its young crew experience the sheer terror and claustrophobic life of a submariner in World War II.',
                    'AA'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Wolfgang'
                AND LastName = 'Petersen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Wolfgang', 
                    'Petersen',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Wolfgang' 
                AND d.LastName = 'Petersen' 
                AND m.Title = 'Das Boot'
                AND m.ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wolfgang' AND LastName = 'Petersen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Das Boot' AND ReleaseYear = '1981')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Serious Man'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Serious Man',
                    '1h 46m',
                    7.0,
                    NULL,
                    NULL,
                    '2009',
                    'Quirky Comedy',
                    'Larry Gopnik, a Midwestern physics teacher, watches his life unravel over multiple sudden incidents. Despite seeking meaning and answers amidst his turmoils, he seems to keep sinking.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ethan'
                AND LastName = 'Coen, Joel Coen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ethan', 
                    'Coen, Joel Coen',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ethan' 
                AND d.LastName = 'Coen, Joel Coen' 
                AND m.Title = 'A Serious Man'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ethan' AND LastName = 'Coen, Joel Coen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Serious Man' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Fly'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Fly',
                    '1h 36m',
                    7.6,
                    NULL,
                    NULL,
                    '1986',
                    'Horror',
                    'A brilliant but eccentric scientist begins to transform into a giant man/fly hybrid after one of his experiments goes horribly wrong.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Cronenberg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Cronenberg',
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
                AND d.LastName = 'Cronenberg' 
                AND m.Title = 'The Fly'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Cronenberg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Fly' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Wrestler'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Wrestler',
                    '1h 49m',
                    7.9,
                    NULL,
                    NULL,
                    '2008',
                    'Sport',
                    'A faded professional wrestler must retire, but finds his quest for a new life outside the ring a dispiriting struggle.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Darren'
                AND LastName = 'Aronofsky'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Darren', 
                    'Aronofsky',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Darren' 
                AND d.LastName = 'Aronofsky' 
                AND m.Title = 'The Wrestler'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Darren' AND LastName = 'Aronofsky'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Wrestler' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Titanic'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Titanic',
                    '3h 14m',
                    7.9,
                    NULL,
                    NULL,
                    '1997',
                    'Romantic Epic',
                    'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Cameron'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Cameron',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Cameron' 
                AND m.Title = 'Titanic'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Cameron'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Titanic' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Finding Nemo'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Finding Nemo',
                    '1h 40m',
                    8.2,
                    NULL,
                    NULL,
                    '2003',
                    'Quest',
                    'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Andrew'
                AND LastName = 'Stanton, Lee Unkrich'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Andrew', 
                    'Stanton, Lee Unkrich',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Andrew' 
                AND d.LastName = 'Stanton, Lee Unkrich' 
                AND m.Title = 'Finding Nemo'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Andrew' AND LastName = 'Stanton, Lee Unkrich'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Finding Nemo' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Fugitive'
                AND ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Fugitive',
                    '2h 10m',
                    7.8,
                    NULL,
                    NULL,
                    '1993',
                    'Drama',
                    'Dr. Richard Kimble, unjustly accused of murdering his wife, must find the real killer while being the target of a nationwide manhunt led by a seasoned U.S. Marshal.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Andrew'
                AND LastName = 'Davis'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Andrew', 
                    'Davis',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Andrew' 
                AND d.LastName = 'Davis' 
                AND m.Title = 'The Fugitive'
                AND m.ReleaseYear = '1993'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Andrew' AND LastName = 'Davis'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Fugitive' AND ReleaseYear = '1993')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Star Wars: Episode IV - A New Hope'
                AND ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Star Wars: Episode IV - A New Hope',
                    '2h 1m',
                    8.6,
                    NULL,
                    NULL,
                    '1977',
                    'Quest',
                    'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'George'
                AND LastName = 'Lucas'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'George', 
                    'Lucas',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'George' 
                AND d.LastName = 'Lucas' 
                AND m.Title = 'Star Wars: Episode IV - A New Hope'
                AND m.ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'George' AND LastName = 'Lucas'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Star Wars: Episode IV - A New Hope' AND ReleaseYear = '1977')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Hustler'
                AND ReleaseYear = '1961'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Hustler',
                    '2h 14m',
                    7.9,
                    NULL,
                    NULL,
                    '1961',
                    'N/A',
                    'An up-and-coming pool player plays a long-time champion in a single high-stakes match.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Robert'
                AND LastName = 'Rossen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Robert', 
                    'Rossen',
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
                AND d.LastName = 'Rossen' 
                AND m.Title = 'The Hustler'
                AND m.ReleaseYear = '1961'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Robert' AND LastName = 'Rossen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Hustler' AND ReleaseYear = '1961')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Fistful of Dollars'
                AND ReleaseYear = '1964'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Fistful of Dollars',
                    '1h 39m',
                    7.9,
                    NULL,
                    NULL,
                    '1964',
                    'Western',
                    'A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sergio'
                AND LastName = 'Leone'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sergio', 
                    'Leone',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sergio' 
                AND d.LastName = 'Leone' 
                AND m.Title = 'A Fistful of Dollars'
                AND m.ReleaseYear = '1964'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sergio' AND LastName = 'Leone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Fistful of Dollars' AND ReleaseYear = '1964')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Don''t Look Now'
                AND ReleaseYear = '1973'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Don''t Look Now',
                    '1h 50m',
                    7.1,
                    NULL,
                    NULL,
                    '1973',
                    'Horror',
                    'A married couple grieving the recent death of their young daughter are in Venice when they encounter two elderly sisters, one of whom is psychic and brings a warning from beyond.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Nicolas'
                AND LastName = 'Roeg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Nicolas', 
                    'Roeg',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Nicolas' 
                AND d.LastName = 'Roeg' 
                AND m.Title = 'Don''t Look Now'
                AND m.ReleaseYear = '1973'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Nicolas' AND LastName = 'Roeg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Don''t Look Now' AND ReleaseYear = '1973')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Fantastic Mr. Fox'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Fantastic Mr. Fox',
                    '1h 27m',
                    7.9,
                    NULL,
                    NULL,
                    '2009',
                    'Stop Motion Animation',
                    'An urbane fox cannot resist returning to his farm raiding ways and then must help his community survive the farmers'' retaliation.',
                    'PG'
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
                AND m.Title = 'Fantastic Mr. Fox'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wes' AND LastName = 'Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Fantastic Mr. Fox' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Mist'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Mist',
                    '2h 6m',
                    7.1,
                    NULL,
                    NULL,
                    '2007',
                    'Sci-Fi',
                    'A thick fog descends upon a rural community, killing anyone caught outside, survivors seek refuge in a local store. Trapped in a darkened cloud of pure horror, the frightened denizens of the town must fend off murderous monster waves.',
                    '15'
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
                AND m.Title = 'The Mist'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Frank' AND LastName = 'Darabont'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Mist' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Field of Dreams'
                AND ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Field of Dreams',
                    '1h 47m',
                    7.5,
                    NULL,
                    NULL,
                    '1989',
                    'Family',
                    'Iowa farmer Ray Kinsella is inspired by a voice he can''t ignore to pursue a dream he can hardly believe. Supported by his wife, Ray begins the quest by turning his ordinary cornfield into a place where dreams can come true.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Phil'
                AND LastName = 'Alden Robinson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Phil', 
                    'Alden Robinson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Phil' 
                AND d.LastName = 'Alden Robinson' 
                AND m.Title = 'Field of Dreams'
                AND m.ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Phil' AND LastName = 'Alden Robinson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Field of Dreams' AND ReleaseYear = '1989')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Rise of the Planet of the Apes'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Rise of the Planet of the Apes',
                    '1h 45m',
                    7.6,
                    NULL,
                    NULL,
                    '2011',
                    'Thriller',
                    'A substance designed to help the brain repair itself gives advanced intelligence to a chimpanzee who leads an ape uprising.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Rupert'
                AND LastName = 'Wyatt'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Rupert', 
                    'Wyatt',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Rupert' 
                AND d.LastName = 'Wyatt' 
                AND m.Title = 'Rise of the Planet of the Apes'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Rupert' AND LastName = 'Wyatt'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Rise of the Planet of the Apes' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Moneyball'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Moneyball',
                    '2h 13m',
                    7.6,
                    NULL,
                    NULL,
                    '2011',
                    'Drama',
                    'Oakland A''s general manager Billy Beane''s successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Bennett'
                AND LastName = 'Miller'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Bennett', 
                    'Miller',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Bennett' 
                AND d.LastName = 'Miller' 
                AND m.Title = 'Moneyball'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Bennett' AND LastName = 'Miller'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Moneyball' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Jackass Number Two'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Jackass Number Two',
                    '1h 32m',
                    7.0,
                    NULL,
                    NULL,
                    '2006',
                    'N/A',
                    'Chris Pontius, Johnny Knoxville, Steve-O, Bam Margera, and the whole crew return to the screen to raise the stakes higher than ever before.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jeff'
                AND LastName = 'Tremaine'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jeff', 
                    'Tremaine',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jeff' 
                AND d.LastName = 'Tremaine' 
                AND m.Title = 'Jackass Number Two'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jeff' AND LastName = 'Tremaine'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Jackass Number Two' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Fighter'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Fighter',
                    '1h 56m',
                    7.8,
                    NULL,
                    NULL,
                    '2010',
                    'Drama',
                    'Based on the story of Micky Ward, a fledgling boxer who tries to escape the shadow of his more famous but troubled older boxing brother and get his own shot at greatness.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'O. Russell'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'O. Russell',
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
                AND d.LastName = 'O. Russell' 
                AND m.Title = 'The Fighter'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'O. Russell'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Fighter' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Mud'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Mud',
                    '2h 10m',
                    7.4,
                    NULL,
                    NULL,
                    '2012',
                    'Adventure',
                    'Two young boys encounter a fugitive and form a pact to help him evade the vigilantes that are on his trail and to reunite him with his true love.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jeff'
                AND LastName = 'Nichols'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jeff', 
                    'Nichols',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jeff' 
                AND d.LastName = 'Nichols' 
                AND m.Title = 'Mud'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jeff' AND LastName = 'Nichols'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Mud' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Headhunters'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Headhunters',
                    '1h 40m',
                    7.5,
                    NULL,
                    NULL,
                    '2011',
                    'Crime',
                    'An accomplished headhunter risks everything to obtain a valuable painting owned by a former mercenary.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Morten'
                AND LastName = 'Tyldum'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Morten', 
                    'Tyldum',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Morten' 
                AND d.LastName = 'Tyldum' 
                AND m.Title = 'Headhunters'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Morten' AND LastName = 'Tyldum'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Headhunters' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'This Is the End'
                AND ReleaseYear = '2013'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'This Is the End',
                    '1h 47m',
                    6.6,
                    NULL,
                    NULL,
                    '2013',
                    'Fantasy',
                    'Six Los Angeles celebrities are stuck in James Franco''s house after a series of devastating events just destroyed the city. Inside, the group not only have to face the apocalypse, but themselves.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Evan'
                AND LastName = 'Goldberg, Seth Rogen'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Evan', 
                    'Goldberg, Seth Rogen',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Evan' 
                AND d.LastName = 'Goldberg, Seth Rogen' 
                AND m.Title = 'This Is the End'
                AND m.ReleaseYear = '2013'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Evan' AND LastName = 'Goldberg, Seth Rogen'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'This Is the End' AND ReleaseYear = '2013')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Gone Girl'
                AND ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Gone Girl',
                    '2h 29m',
                    8.1,
                    NULL,
                    NULL,
                    '2014',
                    'Suspense Mystery',
                    'The husband of a missing woman becomes the chief suspect in her disappearance.',
                    '18'
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
                AND m.Title = 'Gone Girl'
                AND m.ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Fincher'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Gone Girl' AND ReleaseYear = '2014')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Guardians of the Galaxy'
                AND ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Guardians of the Galaxy',
                    '2h 1m',
                    8.0,
                    NULL,
                    NULL,
                    '2014',
                    'Action',
                    'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Gunn'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Gunn',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Gunn' 
                AND m.Title = 'Guardians of the Galaxy'
                AND m.ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Gunn'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Guardians of the Galaxy' AND ReleaseYear = '2014')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Raid 2'
                AND ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Raid 2',
                    '2h 30m',
                    7.9,
                    NULL,
                    NULL,
                    '2014',
                    'Thriller',
                    'Only a short time after the first raid, Rama goes undercover with the thugs of Jakarta and plans to bring down the syndicate and uncover the corruption within his police force.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Gareth'
                AND LastName = 'Evans'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Gareth', 
                    'Evans',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Gareth' 
                AND d.LastName = 'Evans' 
                AND m.Title = 'The Raid 2'
                AND m.ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Gareth' AND LastName = 'Evans'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Raid 2' AND ReleaseYear = '2014')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Mad Max: Fury Road'
                AND ReleaseYear = '2015'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Mad Max: Fury Road',
                    '2h',
                    8.1,
                    NULL,
                    NULL,
                    '2015',
                    'Desert Adventure',
                    'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshipper and a drifter named Max.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'George'
                AND LastName = 'Miller'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'George', 
                    'Miller',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'George' 
                AND d.LastName = 'Miller' 
                AND m.Title = 'Mad Max: Fury Road'
                AND m.ReleaseYear = '2015'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'George' AND LastName = 'Miller'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Mad Max: Fury Road' AND ReleaseYear = '2015')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Descent'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Descent',
                    '1h 39m',
                    7.2,
                    NULL,
                    NULL,
                    '2005',
                    'Adventure',
                    'A caving expedition goes horribly wrong, as the explorers become trapped and ultimately pursued by a strange breed of predators.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Neil'
                AND LastName = 'Marshall'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Neil', 
                    'Marshall',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Neil' 
                AND d.LastName = 'Marshall' 
                AND m.Title = 'The Descent'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Neil' AND LastName = 'Marshall'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Descent' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Patriots Day'
                AND ReleaseYear = '2016'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Patriots Day',
                    '2h 13m',
                    7.3,
                    NULL,
                    NULL,
                    '2016',
                    'Action',
                    'The story of the 2013 Boston Marathon bombing and the aftermath, which includes the city-wide manhunt to find the terrorists responsible.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Peter'
                AND LastName = 'Berg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Peter', 
                    'Berg',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Peter' 
                AND d.LastName = 'Berg' 
                AND m.Title = 'Patriots Day'
                AND m.ReleaseYear = '2016'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Peter' AND LastName = 'Berg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Patriots Day' AND ReleaseYear = '2016')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '2001: A Space Odyssey'
                AND ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '2001: A Space Odyssey',
                    '2h 29m',
                    8.3,
                    NULL,
                    NULL,
                    '1968',
                    'Space Sci-Fi',
                    'When a mysterious artifact is uncovered on the Moon, a spacecraft manned by two humans and one supercomputer is sent to Jupiter to find its origins.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stanley'
                AND LastName = 'Kubrick'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stanley', 
                    'Kubrick',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stanley' 
                AND d.LastName = 'Kubrick' 
                AND m.Title = '2001: A Space Odyssey'
                AND m.ReleaseYear = '1968'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stanley' AND LastName = 'Kubrick'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '2001: A Space Odyssey' AND ReleaseYear = '1968')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Insomnia'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Insomnia',
                    '1h 58m',
                    7.2,
                    NULL,
                    NULL,
                    '2002',
                    'Drama',
                    'Will Dormer, a police detective, is sent to investigate a teenage girl''s murder to a small fishing town where he accidentally shoots his co-detective and is afflicted by insomnia brought by the guilt.',
                    '15'
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
                AND m.Title = 'Insomnia'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Christopher' AND LastName = 'Nolan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Insomnia' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Capturing the Friedmans'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Capturing the Friedmans',
                    '1h 47m',
                    7.6,
                    NULL,
                    NULL,
                    '2003',
                    'Documentary',
                    'Documentary on the Friedmans, a seemingly typical, upper-middle-class Jewish family whose world is instantly transformed when the father and his youngest son are arrested and charged with shocking and horrible crimes.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Andrew'
                AND LastName = 'Jarecki'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Andrew', 
                    'Jarecki',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Andrew' 
                AND d.LastName = 'Jarecki' 
                AND m.Title = 'Capturing the Friedmans'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Andrew' AND LastName = 'Jarecki'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Capturing the Friedmans' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Curious Case of Benjamin Button'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Curious Case of Benjamin Button',
                    '2h 46m',
                    7.8,
                    NULL,
                    NULL,
                    '2008',
                    'Drama',
                    'Benjamin Button, born in 1918 with the physical state of an elderly man, ages in reverse. He experiences love and break-ups, ecstasy and sorrow, and timelessness by the time he dies in 2003 as a baby.',
                    '12A'
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
                AND m.Title = 'The Curious Case of Benjamin Button'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Fincher'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Curious Case of Benjamin Button' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Batman'
                AND ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Batman',
                    '2h 6m',
                    7.5,
                    NULL,
                    NULL,
                    '1989',
                    'Urban Adventure',
                    'The Dark Knight of Gotham City begins his war on crime with his first major enemy being Jack Napier, a criminal who becomes the clownishly homicidal Joker.',
                    '12'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tim'
                AND LastName = 'Burton'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tim', 
                    'Burton',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tim' 
                AND d.LastName = 'Burton' 
                AND m.Title = 'Batman'
                AND m.ReleaseYear = '1989'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tim' AND LastName = 'Burton'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Batman' AND ReleaseYear = '1989')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Sleepy Hollow'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Sleepy Hollow',
                    '1h 45m',
                    7.3,
                    NULL,
                    NULL,
                    '1999',
                    'Fantasy',
                    'Ichabod Crane is sent to Sleepy Hollow to investigate the decapitations of three people; the culprit is legendary apparition The Headless Horseman.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tim'
                AND LastName = 'Burton'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tim', 
                    'Burton',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tim' 
                AND d.LastName = 'Burton' 
                AND m.Title = 'Sleepy Hollow'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tim' AND LastName = 'Burton'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Sleepy Hollow' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Third Man'
                AND ReleaseYear = '1949'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Third Man',
                    '1h 44m',
                    8.1,
                    NULL,
                    NULL,
                    '1949',
                    'Mystery',
                    'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Carol'
                AND LastName = 'Reed'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Carol', 
                    'Reed',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Carol' 
                AND d.LastName = 'Reed' 
                AND m.Title = 'The Third Man'
                AND m.ReleaseYear = '1949'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Carol' AND LastName = 'Reed'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Third Man' AND ReleaseYear = '1949')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Spider-Man 2'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Spider-Man 2',
                    '2h 7m',
                    7.5,
                    NULL,
                    NULL,
                    '2004',
                    'Adventure',
                    'Peter Parker is beset with troubles in his failing personal life as he battles a former brilliant scientist named Otto Octavius.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sam'
                AND LastName = 'Raimi'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sam', 
                    'Raimi',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sam' 
                AND d.LastName = 'Raimi' 
                AND m.Title = 'Spider-Man 2'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sam' AND LastName = 'Raimi'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Spider-Man 2' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '24 Hour Party People'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '24 Hour Party People',
                    '1h 57m',
                    7.3,
                    NULL,
                    NULL,
                    '2002',
                    'Music',
                    'In 1976, Tony Wilson sets up Factory Records and brings Manchester''s music to the world.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Winterbottom'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Winterbottom',
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
                AND d.LastName = 'Winterbottom' 
                AND m.Title = '24 Hour Party People'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Winterbottom'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '24 Hour Party People' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Blair Witch Project'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Blair Witch Project',
                    '1h 21m',
                    6.5,
                    NULL,
                    NULL,
                    '1999',
                    'Psychological Horror',
                    'Three film students vanish after traveling into a Maryland forest to film a documentary on the local Blair Witch legend, leaving only their footage behind.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Daniel'
                AND LastName = 'Myrick, Eduardo Sánchez'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Daniel', 
                    'Myrick, Eduardo Sánchez',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Daniel' 
                AND d.LastName = 'Myrick, Eduardo Sánchez' 
                AND m.Title = 'The Blair Witch Project'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Daniel' AND LastName = 'Myrick, Eduardo Sánchez'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Blair Witch Project' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'End of Watch'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'End of Watch',
                    '1h 49m',
                    7.6,
                    NULL,
                    NULL,
                    '2012',
                    'Action',
                    'Shot documentary-style, this film follows the daily grind of two young police officers in LA who are partners and friends and what happens when they meet criminal forces greater than themselves.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Ayer'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Ayer',
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
                AND d.LastName = 'Ayer' 
                AND m.Title = 'End of Watch'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Ayer'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'End of Watch' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'WALL·E'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'WALL·E',
                    '1h 38m',
                    8.4,
                    NULL,
                    NULL,
                    '2008',
                    'Dystopian Sci-Fi',
                    'A robot who is responsible for cleaning a waste-covered Earth meets another robot and falls in love with her. Together, they set out on a journey that will alter the fate of mankind.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Andrew'
                AND LastName = 'Stanton'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Andrew', 
                    'Stanton',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Andrew' 
                AND d.LastName = 'Stanton' 
                AND m.Title = 'WALL·E'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Andrew' AND LastName = 'Stanton'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'WALL·E' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Imposter'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Imposter',
                    '1h 39m',
                    7.5,
                    NULL,
                    NULL,
                    '2012',
                    'Psychological Thriller',
                    'A documentary centered on a young man in Spain who claims to a grieving Texas family that he is their 16-year-old son who has been missing for 3 years.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Bart'
                AND LastName = 'Layton'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Bart', 
                    'Layton',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Bart' 
                AND d.LastName = 'Layton' 
                AND m.Title = 'The Imposter'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Bart' AND LastName = 'Layton'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Imposter' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Salvador'
                AND ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Salvador',
                    '2h 2m',
                    7.4,
                    NULL,
                    NULL,
                    '1986',
                    'War',
                    'A burnt-out photojournalist becomes involved in a Central American revolution.',
                    '18'
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
                AND m.Title = 'Salvador'
                AND m.ReleaseYear = '1986'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Oliver' AND LastName = 'Stone'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Salvador' AND ReleaseYear = '1986')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'X-Men 2'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'X-Men 2',
                    '2h 14m',
                    7.4,
                    NULL,
                    NULL,
                    '2003',
                    'Thriller',
                    'When anti-mutant Colonel William Stryker kidnaps Professor X and attacks his school, the X-Men must ally with their archenemy Magneto to stop him.',
                    '12A'
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
                AND m.Title = 'X-Men 2'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Bryan' AND LastName = 'Singer'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'X-Men 2' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Spider-Man'
                AND ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Spider-Man',
                    '2h 1m',
                    7.4,
                    NULL,
                    NULL,
                    '2002',
                    'Adventure',
                    'After being bitten by a genetically-modified spider, a shy teenager gains spider-like abilities that he uses to fight injustice as a masked superhero and face a vengeful enemy.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Sam'
                AND LastName = 'Raimi'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Sam', 
                    'Raimi',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Sam' 
                AND d.LastName = 'Raimi' 
                AND m.Title = 'Spider-Man'
                AND m.ReleaseYear = '2002'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Sam' AND LastName = 'Raimi'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Spider-Man' AND ReleaseYear = '2002')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'North by Northwest'
                AND ReleaseYear = '1959'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'North by Northwest',
                    '2h 16m',
                    8.3,
                    NULL,
                    NULL,
                    '1959',
                    'Mystery',
                    'A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies, and falls for a woman whose loyalties he begins to doubt.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Alfred'
                AND LastName = 'Hitchcock'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Alfred', 
                    'Hitchcock',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Alfred' 
                AND d.LastName = 'Hitchcock' 
                AND m.Title = 'North by Northwest'
                AND m.ReleaseYear = '1959'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Alfred' AND LastName = 'Hitchcock'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'North by Northwest' AND ReleaseYear = '1959')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Inside Man'
                AND ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Inside Man',
                    '2h 9m',
                    7.6,
                    NULL,
                    NULL,
                    '2006',
                    'Mystery',
                    'A police detective, a bank robber, and a high-power broker enter high-stakes negotiations after the criminal''s brilliant heist spirals into a hostage situation.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Spike'
                AND LastName = 'Lee'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Spike', 
                    'Lee',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Spike' 
                AND d.LastName = 'Lee' 
                AND m.Title = 'Inside Man'
                AND m.ReleaseYear = '2006'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Spike' AND LastName = 'Lee'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Inside Man' AND ReleaseYear = '2006')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Face/Off'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Face/Off',
                    '2h 18m',
                    7.3,
                    NULL,
                    NULL,
                    '1997',
                    'Sci-Fi',
                    'To foil a terrorist plot, FBI agent Sean Archer assumes the identity of the criminal Castor Troy who murdered his son through facial transplant surgery, but the crook wakes up prematurely and vows revenge.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Woo'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Woo',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Woo' 
                AND m.Title = 'Face/Off'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Woo'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Face/Off' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Lego Movie'
                AND ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Lego Movie',
                    '1h 40m',
                    7.7,
                    NULL,
                    NULL,
                    '2014',
                    'Quest',
                    'An ordinary LEGO construction worker, thought to be the prophesied as "special", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Phil'
                AND LastName = 'Lord, Christopher Miller'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Phil', 
                    'Lord, Christopher Miller',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Phil' 
                AND d.LastName = 'Lord, Christopher Miller' 
                AND m.Title = 'The Lego Movie'
                AND m.ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Phil' AND LastName = 'Lord, Christopher Miller'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Lego Movie' AND ReleaseYear = '2014')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Battle Royale'
                AND ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Battle Royale',
                    '1h 54m',
                    7.5,
                    NULL,
                    NULL,
                    '2000',
                    'Thriller',
                    'In the future, the Japanese government captures a class of ninth-grade students and forces them to kill one another under the revolutionary "Battle Royale" act.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Kinji'
                AND LastName = 'Fukasaku'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Kinji', 
                    'Fukasaku',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Kinji' 
                AND d.LastName = 'Fukasaku' 
                AND m.Title = 'Battle Royale'
                AND m.ReleaseYear = '2000'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Kinji' AND LastName = 'Fukasaku'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Battle Royale' AND ReleaseYear = '2000')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Mission: Impossible - Ghost Protocol'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Mission: Impossible - Ghost Protocol',
                    '2h 12m',
                    7.4,
                    NULL,
                    NULL,
                    '2011',
                    'Thriller',
                    'The IMF is shut down when it''s implicated in the bombing of the Kremlin, causing Ethan Hunt and his new team to go rogue to clear their organization''s name.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Brad'
                AND LastName = 'Bird'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Brad', 
                    'Bird',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Brad' 
                AND d.LastName = 'Bird' 
                AND m.Title = 'Mission: Impossible - Ghost Protocol'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Brad' AND LastName = 'Bird'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Mission: Impossible - Ghost Protocol' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Mission: Impossible'
                AND ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Mission: Impossible',
                    '1h 50m',
                    7.2,
                    NULL,
                    NULL,
                    '1996',
                    'Adventure',
                    'An American agent, under false suspicion of disloyalty, must discover and expose the real spy without the help of his organization.',
                    'PG'
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
                AND m.Title = 'Mission: Impossible'
                AND m.ReleaseYear = '1996'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Brian' AND LastName = 'De Palma'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Mission: Impossible' AND ReleaseYear = '1996')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Collateral'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Collateral',
                    '2h',
                    7.5,
                    NULL,
                    NULL,
                    '2004',
                    'Thriller',
                    'A cab driver finds himself the hostage of an engaging contract killer as he makes his rounds from hit to hit during one night in Los Angeles.',
                    '15'
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
                AND m.Title = 'Collateral'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Mann'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Collateral' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Edge of Tomorrow'
                AND ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Edge of Tomorrow',
                    '1h 53m',
                    7.9,
                    NULL,
                    NULL,
                    '2014',
                    'Time Travel',
                    'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Doug'
                AND LastName = 'Liman'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Doug', 
                    'Liman',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Doug' 
                AND d.LastName = 'Liman' 
                AND m.Title = 'Edge of Tomorrow'
                AND m.ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Doug' AND LastName = 'Liman'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Edge of Tomorrow' AND ReleaseYear = '2014')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Snowpiercer'
                AND ReleaseYear = '2013'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Snowpiercer',
                    '2h 6m',
                    7.1,
                    NULL,
                    NULL,
                    '2013',
                    'Drama',
                    'In a future where a failed climate change experiment has killed all life except for the survivors who boarded the Snowpiercer (a train that travels around the globe), a new class system emerges.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Bong'
                AND LastName = 'Joon Ho'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Bong', 
                    'Joon Ho',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Bong' 
                AND d.LastName = 'Joon Ho' 
                AND m.Title = 'Snowpiercer'
                AND m.ReleaseYear = '2013'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Bong' AND LastName = 'Joon Ho'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Snowpiercer' AND ReleaseYear = '2013')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Blade'
                AND ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Blade',
                    '2h',
                    7.1,
                    NULL,
                    NULL,
                    '1998',
                    'Action',
                    'A half-vampire, half-mortal man becomes a protector of the mortal race, while slaying evil vampires.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stephen'
                AND LastName = 'Norrington'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stephen', 
                    'Norrington',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stephen' 
                AND d.LastName = 'Norrington' 
                AND m.Title = 'Blade'
                AND m.ReleaseYear = '1998'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stephen' AND LastName = 'Norrington'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Blade' AND ReleaseYear = '1998')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Artist'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Artist',
                    '1h 40m',
                    7.8,
                    NULL,
                    NULL,
                    '2011',
                    'Comedy',
                    'When George, a silent movie superstar, meets Peppy Miller, a dancer, sparks fly between the two. However, after the introduction of talking pictures, their fortunes change, affecting their dynamic.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michel'
                AND LastName = 'Hazanavicius'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michel', 
                    'Hazanavicius',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Michel' 
                AND d.LastName = 'Hazanavicius' 
                AND m.Title = 'The Artist'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michel' AND LastName = 'Hazanavicius'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Artist' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Crying Game'
                AND ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Crying Game',
                    '1h 52m',
                    7.2,
                    NULL,
                    NULL,
                    '1992',
                    'Crime',
                    'A British soldier kidnapped by the IRA soon befriends one of his captors, who then becomes drawn into the soldier''s world.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Neil'
                AND LastName = 'Jordan'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Neil', 
                    'Jordan',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Neil' 
                AND d.LastName = 'Jordan' 
                AND m.Title = 'The Crying Game'
                AND m.ReleaseYear = '1992'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Neil' AND LastName = 'Jordan'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Crying Game' AND ReleaseYear = '1992')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Grizzly Man'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Grizzly Man',
                    '1h 43m',
                    7.8,
                    NULL,
                    NULL,
                    '2005',
                    'N/A',
                    'A devastating and heart-rending take on grizzly bear activists Timothy Treadwell and Amie Huguenard, who were killed in October of 2003 while living among grizzly bears in Alaska.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Werner'
                AND LastName = 'Herzog'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Werner', 
                    'Herzog',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Werner' 
                AND d.LastName = 'Herzog' 
                AND m.Title = 'Grizzly Man'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Werner' AND LastName = 'Herzog'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Grizzly Man' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Starship Troopers'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Starship Troopers',
                    '2h 9m',
                    7.3,
                    NULL,
                    NULL,
                    '1997',
                    'Action',
                    'Humans, in a fascist militaristic future, wage war with giant alien bugs.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Paul'
                AND LastName = 'Verhoeven'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Paul', 
                    'Verhoeven',
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
                AND d.LastName = 'Verhoeven' 
                AND m.Title = 'Starship Troopers'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Paul' AND LastName = 'Verhoeven'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Starship Troopers' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dig!'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dig!',
                    '1h 47m',
                    7.7,
                    NULL,
                    NULL,
                    '2004',
                    'N/A',
                    'A documentary on the once-promising American rock bands The Brian Jonestown Massacre and The Dandy Warhols, and the friendship/rivalry between their respective founders, Anton Newcombe and Courtney Taylor.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ondi'
                AND LastName = 'Timoner'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ondi', 
                    'Timoner',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ondi' 
                AND d.LastName = 'Timoner' 
                AND m.Title = 'Dig!'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ondi' AND LastName = 'Timoner'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dig!' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Hidden (Caché)'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Hidden (Caché)',
                    '1h 57m',
                    7.3,
                    NULL,
                    NULL,
                    '2005',
                    'Thriller',
                    'A married couple is terrorized by a series of surveillance videotapes left on their front porch.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Haneke'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Haneke',
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
                AND d.LastName = 'Haneke' 
                AND m.Title = 'Hidden (Caché)'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Haneke'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Hidden (Caché)' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Come and See'
                AND ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Come and See',
                    '2h 22m',
                    8.3,
                    NULL,
                    NULL,
                    '1985',
                    'War Epic',
                    'After finding an old rifle, a young boy joins the Soviet resistance movement against ruthless German forces and experiences the horrors of World War II.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Elem'
                AND LastName = 'Klimov'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Elem', 
                    'Klimov',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Elem' 
                AND d.LastName = 'Klimov' 
                AND m.Title = 'Come and See'
                AND m.ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Elem' AND LastName = 'Klimov'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Come and See' AND ReleaseYear = '1985')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '13 Assassins'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '13 Assassins',
                    '2h 21m',
                    7.5,
                    NULL,
                    NULL,
                    '2010',
                    'Action',
                    'A group of assassins come together for a suicide mission to kill an evil lord.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Takashi'
                AND LastName = 'Miike'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Takashi', 
                    'Miike',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Takashi' 
                AND d.LastName = 'Miike' 
                AND m.Title = '13 Assassins'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Takashi' AND LastName = 'Miike'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '13 Assassins' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Gone Baby Gone'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Gone Baby Gone',
                    '1h 54m',
                    7.6,
                    NULL,
                    NULL,
                    '2007',
                    'Crime',
                    'Two Boston area detectives investigate a little girl''s kidnapping, which ultimately turns into a crisis both professionally and personally.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ben'
                AND LastName = 'Affleck'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ben', 
                    'Affleck',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ben' 
                AND d.LastName = 'Affleck' 
                AND m.Title = 'Gone Baby Gone'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ben' AND LastName = 'Affleck'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Gone Baby Gone' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Rango'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Rango',
                    '1h 47m',
                    7.3,
                    NULL,
                    NULL,
                    '2011',
                    'Contemporary Western',
                    'Rango is an ordinary chameleon who accidentally winds up in the town of Dirt, a lawless outpost in the Wild West in desperate need of a new sheriff.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Gore'
                AND LastName = 'Verbinski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Gore', 
                    'Verbinski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Gore' 
                AND d.LastName = 'Verbinski' 
                AND m.Title = 'Rango'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Gore' AND LastName = 'Verbinski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Rango' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Three Colors: White'
                AND ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Three Colors: White',
                    '1h 32m',
                    7.6,
                    NULL,
                    NULL,
                    '1994',
                    'Tragic Romance',
                    'After his wife divorces him, a Polish immigrant plots to get even with her.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Krzysztof'
                AND LastName = 'Kieslowski'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Krzysztof', 
                    'Kieslowski',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Krzysztof' 
                AND d.LastName = 'Kieslowski' 
                AND m.Title = 'Three Colors: White'
                AND m.ReleaseYear = '1994'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Krzysztof' AND LastName = 'Kieslowski'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Three Colors: White' AND ReleaseYear = '1994')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Murderball'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Murderball',
                    '1h 25m',
                    7.7,
                    NULL,
                    NULL,
                    '2005',
                    'N/A',
                    'Quadriplegics, who play full-contact rugby in wheelchairs, overcome unimaginable obstacles to compete in the Paralympic Games in Athens, Greece.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Henry'
                AND LastName = 'Alex Rubin, Dana Adam Shapiro'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Henry', 
                    'Alex Rubin, Dana Adam Shapiro',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Henry' 
                AND d.LastName = 'Alex Rubin, Dana Adam Shapiro' 
                AND m.Title = 'Murderball'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Henry' AND LastName = 'Alex Rubin, Dana Adam Shapiro'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Murderball' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dogville'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dogville',
                    '2h 58m',
                    8.0,
                    NULL,
                    NULL,
                    '2003',
                    'Drama',
                    'A woman on the run from the mob is reluctantly accepted in a small Colorado community in exchange for labor, but when a search visits the town she finds out that their support has a price.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Lars'
                AND LastName = 'von Trier'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Lars', 
                    'von Trier',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Lars' 
                AND d.LastName = 'von Trier' 
                AND m.Title = 'Dogville'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Lars' AND LastName = 'von Trier'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dogville' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Blow Out'
                AND ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Blow Out',
                    '1h 48m',
                    7.4,
                    NULL,
                    NULL,
                    '1981',
                    'Drama',
                    'A movie sound recordist accidentally records the evidence that proves that a car accident was actually murder and consequently finds himself in danger.',
                    'X'
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
                AND m.Title = 'Blow Out'
                AND m.ReleaseYear = '1981'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Brian' AND LastName = 'De Palma'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Blow Out' AND ReleaseYear = '1981')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Marley'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Marley',
                    '2h 24m',
                    7.9,
                    NULL,
                    NULL,
                    '2012',
                    'N/A',
                    'A documentary on the life, music, and legacy of Bob Marley.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Kevin'
                AND LastName = 'Macdonald'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Kevin', 
                    'Macdonald',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Kevin' 
                AND d.LastName = 'Macdonald' 
                AND m.Title = 'Marley'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Kevin' AND LastName = 'Macdonald'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Marley' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'American Splendor'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'American Splendor',
                    '1h 41m',
                    7.4,
                    NULL,
                    NULL,
                    '2003',
                    'N/A',
                    'An original mix of fiction and reality illuminates the life of comic book hero everyman Harvey Pekar.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Shari'
                AND LastName = 'Springer Berman, Robert Pulcini'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Shari', 
                    'Springer Berman, Robert Pulcini',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Shari' 
                AND d.LastName = 'Springer Berman, Robert Pulcini' 
                AND m.Title = 'American Splendor'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Shari' AND LastName = 'Springer Berman, Robert Pulcini'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'American Splendor' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Changeling'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Changeling',
                    '2h 21m',
                    7.7,
                    NULL,
                    NULL,
                    '2008',
                    'Biography',
                    'After Christine''s son goes missing, she reaches out to the LAPD to find him, but when they try to pass off an impostor as her son to quiet public protests, she refuses to accept him or give up hope.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Clint'
                AND LastName = 'Eastwood'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Clint', 
                    'Eastwood',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Clint' 
                AND d.LastName = 'Eastwood' 
                AND m.Title = 'Changeling'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Clint' AND LastName = 'Eastwood'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Changeling' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Braveheart'
                AND ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Braveheart',
                    '2h 58m',
                    8.3,
                    NULL,
                    NULL,
                    '1995',
                    'War Epic',
                    'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Mel'
                AND LastName = 'Gibson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Mel', 
                    'Gibson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Mel' 
                AND d.LastName = 'Gibson' 
                AND m.Title = 'Braveheart'
                AND m.ReleaseYear = '1995'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Mel' AND LastName = 'Gibson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Braveheart' AND ReleaseYear = '1995')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Fisher King'
                AND ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Fisher King',
                    '2h 17m',
                    7.5,
                    NULL,
                    NULL,
                    '1991',
                    'Fantasy',
                    'A former radio DJ, suicidally despondent because of a terrible mistake he made, finds redemption in helping a deranged homeless man who was an unwitting victim of that mistake.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Terry'
                AND LastName = 'Gilliam'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Terry', 
                    'Gilliam',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Terry' 
                AND d.LastName = 'Gilliam' 
                AND m.Title = 'The Fisher King'
                AND m.ReleaseYear = '1991'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Terry' AND LastName = 'Gilliam'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Fisher King' AND ReleaseYear = '1991')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Wild at Heart'
                AND ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Wild at Heart',
                    '2h 5m',
                    7.2,
                    NULL,
                    NULL,
                    '1990',
                    'Drama',
                    'Young lovers Sailor and Lula run from the variety of weirdos that Lula''s mom has hired to kill Sailor.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'David'
                AND LastName = 'Lynch'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'David', 
                    'Lynch',
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
                AND d.LastName = 'Lynch' 
                AND m.Title = 'Wild at Heart'
                AND m.ReleaseYear = '1990'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'David' AND LastName = 'Lynch'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Wild at Heart' AND ReleaseYear = '1990')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Control'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Control',
                    '2h 2m',
                    7.6,
                    NULL,
                    NULL,
                    '2007',
                    'Drama',
                    'A profile of Ian Curtis, the enigmatic singer of Joy Division whose personal, professional, and romantic troubles led him to die by suicide at the age of 23.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Anton'
                AND LastName = 'Corbijn'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Anton', 
                    'Corbijn',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Anton' 
                AND d.LastName = 'Corbijn' 
                AND m.Title = 'Control'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Anton' AND LastName = 'Corbijn'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Control' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'In the Loop'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'In the Loop',
                    '1h 46m',
                    7.4,
                    NULL,
                    NULL,
                    '2009',
                    'N/A',
                    'A political satire about a group of skeptical American and British operatives attempting to prevent a war between two countries.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Armando'
                AND LastName = 'Iannucci'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Armando', 
                    'Iannucci',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Armando' 
                AND d.LastName = 'Iannucci' 
                AND m.Title = 'In the Loop'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Armando' AND LastName = 'Iannucci'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'In the Loop' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Cop Land'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Cop Land',
                    '1h 45m',
                    7.0,
                    NULL,
                    NULL,
                    '1997',
                    'Thriller',
                    'The Sheriff of a suburban New Jersey community, populated by New York City police officers, slowly discovers the town is a front for mob connections and corruption.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'Mangold'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'Mangold',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'Mangold' 
                AND m.Title = 'Cop Land'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'Mangold'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Cop Land' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Oldboy'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Oldboy',
                    '2h',
                    8.3,
                    NULL,
                    NULL,
                    '2003',
                    'Action',
                    'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must track down his captor in five days.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Park'
                AND LastName = 'Chan-wook'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Park', 
                    'Chan-wook',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Park' 
                AND d.LastName = 'Chan-wook' 
                AND m.Title = 'Oldboy'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Park' AND LastName = 'Chan-wook'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Oldboy' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Black Swan'
                AND ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Black Swan',
                    '1h 48m',
                    8.0,
                    NULL,
                    NULL,
                    '2010',
                    'Thriller',
                    'Nina is a talented but unstable ballerina on the verge of stardom. Pushed to the breaking point by her artistic director and a seductive rival, Nina''s grip on reality slips, plunging her into a waking nightmare.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Darren'
                AND LastName = 'Aronofsky'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Darren', 
                    'Aronofsky',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Darren' 
                AND d.LastName = 'Aronofsky' 
                AND m.Title = 'Black Swan'
                AND m.ReleaseYear = '2010'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Darren' AND LastName = 'Aronofsky'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Black Swan' AND ReleaseYear = '2010')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Memories of Murder'
                AND ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Memories of Murder',
                    '2h 11m',
                    8.1,
                    NULL,
                    NULL,
                    '2003',
                    'Serial Killer',
                    'In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Bong'
                AND LastName = 'Joon Ho'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Bong', 
                    'Joon Ho',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Bong' 
                AND d.LastName = 'Joon Ho' 
                AND m.Title = 'Memories of Murder'
                AND m.ReleaseYear = '2003'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Bong' AND LastName = 'Joon Ho'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Memories of Murder' AND ReleaseYear = '2003')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Willy Wonka & the Chocolate Factory'
                AND ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Willy Wonka & the Chocolate Factory',
                    '1h 40m',
                    7.8,
                    NULL,
                    NULL,
                    '1971',
                    'Comedy',
                    'A poor but hopeful boy seeks one of the five coveted golden tickets that will send him on a tour of Willy Wonka''s mysterious chocolate factory.',
                    'U'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Mel'
                AND LastName = 'Stuart'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Mel', 
                    'Stuart',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Mel' 
                AND d.LastName = 'Stuart' 
                AND m.Title = 'Willy Wonka & the Chocolate Factory'
                AND m.ReleaseYear = '1971'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Mel' AND LastName = 'Stuart'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Willy Wonka & the Chocolate Factory' AND ReleaseYear = '1971')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Argo'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Argo',
                    '2h',
                    7.7,
                    NULL,
                    NULL,
                    '2012',
                    'Political Thriller',
                    'Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1979.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ben'
                AND LastName = 'Affleck'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ben', 
                    'Affleck',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ben' 
                AND d.LastName = 'Affleck' 
                AND m.Title = 'Argo'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ben' AND LastName = 'Affleck'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Argo' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Dawn of the Planet of the Apes'
                AND ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Dawn of the Planet of the Apes',
                    '2h 10m',
                    7.6,
                    NULL,
                    NULL,
                    '2014',
                    'Drama',
                    'The fragile peace between apes and humans is threatened as mistrust and betrayal threaten to plunge both tribes into a war for dominance over the Earth.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Matt'
                AND LastName = 'Reeves'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Matt', 
                    'Reeves',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Matt' 
                AND d.LastName = 'Reeves' 
                AND m.Title = 'Dawn of the Planet of the Apes'
                AND m.ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Matt' AND LastName = 'Reeves'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Dawn of the Planet of the Apes' AND ReleaseYear = '2014')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Taking of Pelham One Two Three'
                AND ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Taking of Pelham One Two Three',
                    '1h 44m',
                    7.6,
                    NULL,
                    NULL,
                    '1974',
                    'Crime',
                    'Four armed men hijack a New York City subway car and demand a ransom for the passengers. The city''s police are faced with a conundrum: Even if it''s paid, how could they get away?',
                    'AA'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Joseph'
                AND LastName = 'Sargent'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Joseph', 
                    'Sargent',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Joseph' 
                AND d.LastName = 'Sargent' 
                AND m.Title = 'The Taking of Pelham One Two Three'
                AND m.ReleaseYear = '1974'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Joseph' AND LastName = 'Sargent'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Taking of Pelham One Two Three' AND ReleaseYear = '1974')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = '50/50'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    '50/50',
                    '1h 40m',
                    7.6,
                    NULL,
                    NULL,
                    '2011',
                    'Romance',
                    'Inspired by a true story, a comedy centered on a 27-year-old guy who learns of his cancer diagnosis and his subsequent struggle to beat the disease.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jonathan'
                AND LastName = 'Levine'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jonathan', 
                    'Levine',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jonathan' 
                AND d.LastName = 'Levine' 
                AND m.Title = '50/50'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jonathan' AND LastName = 'Levine'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = '50/50' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Notting Hill'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Notting Hill',
                    '2h 4m',
                    7.2,
                    NULL,
                    NULL,
                    '1999',
                    'Showbiz Drama',
                    'A set of circumstances makes Anna Scott, a famous actress, fall in love with William Thacker, owner of a bookstore in Notting Hill. But the paparazzi''s fascination with her complicates their bond.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Roger'
                AND LastName = 'Michell'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Roger', 
                    'Michell',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Roger' 
                AND d.LastName = 'Michell' 
                AND m.Title = 'Notting Hill'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Roger' AND LastName = 'Michell'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Notting Hill' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Grand Budapest Hotel'
                AND ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Grand Budapest Hotel',
                    '1h 39m',
                    8.1,
                    NULL,
                    NULL,
                    '2014',
                    'Comedy',
                    'A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel''s glorious years under an exceptional concierge.',
                    '15'
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
                AND m.Title = 'The Grand Budapest Hotel'
                AND m.ReleaseYear = '2014'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wes' AND LastName = 'Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Grand Budapest Hotel' AND ReleaseYear = '2014')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Proposition'
                AND ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Proposition',
                    '1h 44m',
                    7.3,
                    NULL,
                    NULL,
                    '2005',
                    'Crime',
                    'A lawman apprehends a notorious outlaw and gives him nine days to kill his older brother, or else they''ll execute his younger brother.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'John'
                AND LastName = 'Hillcoat'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'John', 
                    'Hillcoat',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'John' 
                AND d.LastName = 'Hillcoat' 
                AND m.Title = 'The Proposition'
                AND m.ReleaseYear = '2005'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'John' AND LastName = 'Hillcoat'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Proposition' AND ReleaseYear = '2005')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Bernie'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Bernie',
                    '1h 39m',
                    6.8,
                    NULL,
                    NULL,
                    '2011',
                    'Comedy',
                    'In small-town Texas, an affable mortician strikes up a friendship with a wealthy widow, though when she starts to become controlling, he goes to great lengths to separate himself from her grasp.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Richard'
                AND LastName = 'Linklater'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Richard', 
                    'Linklater',
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
                AND d.LastName = 'Linklater' 
                AND m.Title = 'Bernie'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Richard' AND LastName = 'Linklater'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Bernie' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Aviator'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Aviator',
                    '2h 50m',
                    7.5,
                    NULL,
                    NULL,
                    '2004',
                    'Biography',
                    'A biopic depicting the early years of legendary director and aviator Howard Hughes'' career from the late 1920s to the mid 1940s.',
                    '12A'
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
                AND m.Title = 'The Aviator'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Martin' AND LastName = 'Scorsese'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Aviator' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Knuckle'
                AND ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Knuckle',
                    '1h 37m',
                    6.8,
                    NULL,
                    NULL,
                    '2011',
                    'N/A',
                    'An epic 12-year journey into the brutal and secretive world of Irish Traveler bare-knuckle fighting. This film follows a history of violent feuding between rival clans.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Ian'
                AND LastName = 'Palmer'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Ian', 
                    'Palmer',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Ian' 
                AND d.LastName = 'Palmer' 
                AND m.Title = 'Knuckle'
                AND m.ReleaseYear = '2011'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Ian' AND LastName = 'Palmer'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Knuckle' AND ReleaseYear = '2011')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Paths of Glory'
                AND ReleaseYear = '1957'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Paths of Glory',
                    '1h 28m',
                    8.4,
                    NULL,
                    NULL,
                    '1957',
                    'War',
                    'A colonel defends three of his soldiers in a court-martial after they abandon a suicidal attack.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Stanley'
                AND LastName = 'Kubrick'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Stanley', 
                    'Kubrick',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Stanley' 
                AND d.LastName = 'Kubrick' 
                AND m.Title = 'Paths of Glory'
                AND m.ReleaseYear = '1957'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Stanley' AND LastName = 'Kubrick'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Paths of Glory' AND ReleaseYear = '1957')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Hard Day''s Night'
                AND ReleaseYear = '1964'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Hard Day''s Night',
                    '1h 27m',
                    7.5,
                    NULL,
                    NULL,
                    '1964',
                    'Comedy',
                    'Over two "typical" days in the life of The Beatles, the boys struggle to keep themselves and Sir Paul McCartney''s mischievous grandfather in check while preparing for a live TV performance.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Richard'
                AND LastName = 'Lester'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Richard', 
                    'Lester',
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
                AND d.LastName = 'Lester' 
                AND m.Title = 'A Hard Day''s Night'
                AND m.ReleaseYear = '1964'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Richard' AND LastName = 'Lester'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Hard Day''s Night' AND ReleaseYear = '1964')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Holy Motors'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Holy Motors',
                    '1h 55m',
                    7.0,
                    NULL,
                    NULL,
                    '2012',
                    'N/A',
                    'A man boards a limousine to be driven to his day''s work: nine mysterious "appointments."',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Leos'
                AND LastName = 'Carax'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Leos', 
                    'Carax',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Leos' 
                AND d.LastName = 'Carax' 
                AND m.Title = 'Holy Motors'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Leos' AND LastName = 'Carax'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Holy Motors' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Moonrise Kingdom'
                AND ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Moonrise Kingdom',
                    '1h 34m',
                    7.8,
                    NULL,
                    NULL,
                    '2012',
                    'Romantic Comedy',
                    'Two 12-year-olds, who live on an island, fall in love with each other and elope into the wilderness. While people set out on a search mission, a violent storm approaching them catches their attention.',
                    '12A'
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
                AND m.Title = 'Moonrise Kingdom'
                AND m.ReleaseYear = '2012'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Wes' AND LastName = 'Anderson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Moonrise Kingdom' AND ReleaseYear = '2012')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Capitalism: A Love Story'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Capitalism: A Love Story',
                    '2h 7m',
                    7.4,
                    NULL,
                    NULL,
                    '2009',
                    'N/A',
                    'An examination of the social costs of corporate interests pursuing profits at the expense of the public good.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Michael'
                AND LastName = 'Moore'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Michael', 
                    'Moore',
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
                AND d.LastName = 'Moore' 
                AND m.Title = 'Capitalism: A Love Story'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Michael' AND LastName = 'Moore'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Capitalism: A Love Story' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Galaxy Quest'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Galaxy Quest',
                    '1h 42m',
                    7.4,
                    NULL,
                    NULL,
                    '1999',
                    'Adventure',
                    'The alumni cast of a space opera television series have to play their roles as the real thing when an alien race needs their help. However, they also have to defend both Earth and the alien race from a reptilian warlord.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Dean'
                AND LastName = 'Parisot'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Dean', 
                    'Parisot',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Dean' 
                AND d.LastName = 'Parisot' 
                AND m.Title = 'Galaxy Quest'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Dean' AND LastName = 'Parisot'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Galaxy Quest' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Room for Romeo Brass'
                AND ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Room for Romeo Brass',
                    '1h 30m',
                    7.5,
                    NULL,
                    NULL,
                    '1999',
                    'N/A',
                    'After stopping 12 y.o. Romeo and Gavin from being beaten up, Morell drives them home and meets Romeo''s adult sister and falls in love. The boys "help" him in his pursuit.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Shane'
                AND LastName = 'Meadows'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Shane', 
                    'Meadows',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Shane' 
                AND d.LastName = 'Meadows' 
                AND m.Title = 'A Room for Romeo Brass'
                AND m.ReleaseYear = '1999'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Shane' AND LastName = 'Meadows'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Room for Romeo Brass' AND ReleaseYear = '1999')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Big'
                AND ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Big',
                    '1h 44m',
                    7.3,
                    NULL,
                    NULL,
                    '1988',
                    'Comedy',
                    'After wishing to be made big, a teenage boy wakes the next morning to find himself mysteriously in the body of an adult.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Penny'
                AND LastName = 'Marshall'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Penny', 
                    'Marshall',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Penny' 
                AND d.LastName = 'Marshall' 
                AND m.Title = 'Big'
                AND m.ReleaseYear = '1988'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Penny' AND LastName = 'Marshall'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Big' AND ReleaseYear = '1988')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Mesrine Part 1: Killer Instinct'
                AND ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Mesrine Part 1: Killer Instinct',
                    '1h 53m',
                    7.5,
                    NULL,
                    NULL,
                    '2008',
                    'Biography',
                    'The story of the notorious French gangster Jacques Mesrine, with the focus on his life before the early 1970s and the events that led to him being declared Public Enemy No. 1 in France.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Jean-François'
                AND LastName = 'Richet'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Jean-François', 
                    'Richet',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Jean-François' 
                AND d.LastName = 'Richet' 
                AND m.Title = 'Mesrine Part 1: Killer Instinct'
                AND m.ReleaseYear = '2008'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Jean-François' AND LastName = 'Richet'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Mesrine Part 1: Killer Instinct' AND ReleaseYear = '2008')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Performance'
                AND ReleaseYear = '1970'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Performance',
                    '1h 45m',
                    6.7,
                    NULL,
                    NULL,
                    '1970',
                    'N/A',
                    'A violent East London gangster undergoes a transformation of identity while hiding from his former colleagues in the home of a jaded Bohemian rock star and his two girlfriends.',
                    'X'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Donald'
                AND LastName = 'Cammell, Nicolas Roeg'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Donald', 
                    'Cammell, Nicolas Roeg',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Donald' 
                AND d.LastName = 'Cammell, Nicolas Roeg' 
                AND m.Title = 'Performance'
                AND m.ReleaseYear = '1970'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Donald' AND LastName = 'Cammell, Nicolas Roeg'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Performance' AND ReleaseYear = '1970')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Michael Clayton'
                AND ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Michael Clayton',
                    '1h 59m',
                    7.2,
                    NULL,
                    NULL,
                    '2007',
                    'Mystery',
                    'A law firm brings in its "fixer" to remedy the situation after a lawyer has a breakdown while representing a chemical company that he knows is guilty in a multibillion-dollar class action suit.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Tony'
                AND LastName = 'Gilroy'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Tony', 
                    'Gilroy',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Tony' 
                AND d.LastName = 'Gilroy' 
                AND m.Title = 'Michael Clayton'
                AND m.ReleaseYear = '2007'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Tony' AND LastName = 'Gilroy'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Michael Clayton' AND ReleaseYear = '2007')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Fifth Element'
                AND ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Fifth Element',
                    '2h 6m',
                    7.6,
                    NULL,
                    NULL,
                    '1997',
                    'Adventure',
                    'In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr. Zorg at bay.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Luc'
                AND LastName = 'Besson'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Luc', 
                    'Besson',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Luc' 
                AND d.LastName = 'Besson' 
                AND m.Title = 'The Fifth Element'
                AND m.ReleaseYear = '1997'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Luc' AND LastName = 'Besson'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Fifth Element' AND ReleaseYear = '1997')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Shaun of the Dead'
                AND ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Shaun of the Dead',
                    '1h 39m',
                    7.9,
                    NULL,
                    NULL,
                    '2004',
                    'Zombie Horror',
                    'The uneventful, aimless lives of a London electronics salesman and his layabout roommate are disrupted by the zombie apocalypse.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Edgar'
                AND LastName = 'Wright'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Edgar', 
                    'Wright',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Edgar' 
                AND d.LastName = 'Wright' 
                AND m.Title = 'Shaun of the Dead'
                AND m.ReleaseYear = '2004'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Edgar' AND LastName = 'Wright'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Shaun of the Dead' AND ReleaseYear = '2004')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Spy Who Loved Me'
                AND ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Spy Who Loved Me',
                    '2h 5m',
                    7.0,
                    NULL,
                    NULL,
                    '1977',
                    'Thriller',
                    'James Bond investigates the hijacking of British and Russian submarines carrying nuclear warheads, with the help of a K.G.B. agent whose lover he killed.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Lewis'
                AND LastName = 'Gilbert'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Lewis', 
                    'Gilbert',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Lewis' 
                AND d.LastName = 'Gilbert' 
                AND m.Title = 'The Spy Who Loved Me'
                AND m.ReleaseYear = '1977'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Lewis' AND LastName = 'Gilbert'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Spy Who Loved Me' AND ReleaseYear = '1977')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'A Monster Calls'
                AND ReleaseYear = '2016'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'A Monster Calls',
                    '1h 48m',
                    7.4,
                    NULL,
                    NULL,
                    '2016',
                    'Family',
                    'Conor, a twelve-year-old boy, encounters an ancient tree monster who proceeds to help him cope with his mother''s terminal illness and being bullied in school.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'J.A.'
                AND LastName = 'Bayona'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'J.A.', 
                    'Bayona',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'J.A.' 
                AND d.LastName = 'Bayona' 
                AND m.Title = 'A Monster Calls'
                AND m.ReleaseYear = '2016'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'J.A.' AND LastName = 'Bayona'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'A Monster Calls' AND ReleaseYear = '2016')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'I, Tonya'
                AND ReleaseYear = '2017'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'I, Tonya',
                    '1h 59m',
                    7.5,
                    NULL,
                    NULL,
                    '2017',
                    'Biography',
                    'Competitive ice skater Tonya Harding rises amongst the ranks at the U.S. Figure Skating Championships, but her future in the activity is thrown into doubt when her ex-husband intervenes.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Craig'
                AND LastName = 'Gillespie'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Craig', 
                    'Gillespie',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Craig' 
                AND d.LastName = 'Gillespie' 
                AND m.Title = 'I, Tonya'
                AND m.ReleaseYear = '2017'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Craig' AND LastName = 'Gillespie'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'I, Tonya' AND ReleaseYear = '2017')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Secret in Their Eyes'
                AND ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Secret in Their Eyes',
                    '2h 9m',
                    8.2,
                    NULL,
                    NULL,
                    '2009',
                    'Period Drama',
                    'A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt him decades later.',
                    '18'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Juan'
                AND LastName = 'José Campanella'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Juan', 
                    'José Campanella',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Juan' 
                AND d.LastName = 'José Campanella' 
                AND m.Title = 'The Secret in Their Eyes'
                AND m.ReleaseYear = '2009'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Juan' AND LastName = 'José Campanella'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Secret in Their Eyes' AND ReleaseYear = '2009')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Broadcast News'
                AND ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Broadcast News',
                    '2h 13m',
                    7.3,
                    NULL,
                    NULL,
                    '1987',
                    'Drama',
                    'Two television network reporters - one smart but insecure, the other less knowledgeable but more telegenic - compete for the friendship, respect and romantic interest of a hard-driven, neurotic female producer.',
                    '15'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'James'
                AND LastName = 'L. Brooks'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'James', 
                    'L. Brooks',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'James' 
                AND d.LastName = 'L. Brooks' 
                AND m.Title = 'Broadcast News'
                AND m.ReleaseYear = '1987'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'James' AND LastName = 'L. Brooks'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Broadcast News' AND ReleaseYear = '1987')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'The Goonies'
                AND ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'The Goonies',
                    '1h 54m',
                    7.7,
                    NULL,
                    NULL,
                    '1985',
                    'Adventure',
                    'A group of young misfits called The Goonies discover an ancient map and set out on an adventure to find a legendary pirate''s long-lost treasure.',
                    '12A'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Richard'
                AND LastName = 'Donner'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Richard', 
                    'Donner',
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
                AND d.LastName = 'Donner' 
                AND m.Title = 'The Goonies'
                AND m.ReleaseYear = '1985'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Richard' AND LastName = 'Donner'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'The Goonies' AND ReleaseYear = '1985')
                );
            END;
            
            -- Insert movie details into Movies table
            IF NOT EXISTS (
                SELECT 1 
                FROM Movies 
                WHERE Title = 'Rebel Without a Cause'
                AND ReleaseYear = '1955'
            )
            BEGIN
                INSERT INTO Movies (Title, Duration, Rating, Language, Country, ReleaseYear, Genres, Plot, Rated)
                VALUES (
                    'Rebel Without a Cause',
                    '1h 51m',
                    7.6,
                    NULL,
                    NULL,
                    '1955',
                    'N/A',
                    'A rebellious young man with a troubled past comes to a new town, finding friends and enemies.',
                    'PG'
                );
            END;

            -- Insert director details into Directors table
            IF NOT EXISTS (
                SELECT 1 
                FROM Directors 
                WHERE FirstName = 'Nicholas'
                AND LastName = 'Ray'
                AND Country = NULL
            )
            BEGIN
                INSERT INTO Directors (FirstName, LastName, Country)
                VALUES (
                    'Nicholas', 
                    'Ray',
                    NULL
                );
            END;

            -- Associate director with movie in Director_Movie table
            IF NOT EXISTS (
                SELECT 1 
                FROM Director_Movie dm
                INNER JOIN Directors d ON dm.DirectorId = d.Id
                INNER JOIN Movies m ON dm.MovieId = m.Id
                WHERE d.FirstName = 'Nicholas' 
                AND d.LastName = 'Ray' 
                AND m.Title = 'Rebel Without a Cause'
                AND m.ReleaseYear = '1955'
            )
            BEGIN
                INSERT INTO Director_Movie (DirectorId, MovieId)
                VALUES (
                    (SELECT TOP 1 Id FROM Directors WHERE FirstName = 'Nicholas' AND LastName = 'Ray'),
                    (SELECT TOP 1 Id FROM Movies WHERE Title = 'Rebel Without a Cause' AND ReleaseYear = '1955')
                );
            END;
            