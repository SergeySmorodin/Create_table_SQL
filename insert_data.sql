
-- Вставка данных в таблицу Исполнитель
INSERT INTO Artist (Name) VALUES
('The Beatles'),
('Nirvana'),
('Adele'),
('Beyoncé'),
('Bloodhound Gang'),
('Frank Sinatra');

-- Вставка данных в таблицу Жанр
INSERT INTO Genre (Name) VALUES
('Rock'),
('Pop'),
('Grunge'),
('Punk'),
('Jazz');

-- Вставка данных в таблицу Альбом
INSERT INTO Album (Name, ReleaseYear) VALUES
('Abbey Road', 1969),
('Nevermind', 1991),
('25', 2015),
('Show Us Your Hits', 2011),
('My way', 1964),
('Demo', 2020);

-- Вставка данных в таблицу Исполнитель_Жанр
INSERT INTO ArtistGenre (ArtistID, GenreID) VALUES
(1, 1),  -- The Beatles - Rock
(2, 3),  -- Nirvana - Grunge
(3, 2),  -- Adele - Pop
(4, 2), -- Beyoncé - Pop
(5, 4),  -- Bloodhound Gang - Punk
(6, 5), -- Frank Sinatra - Jazz
(2, 1);  -- Nirvana - Rock

-- Вставка данных в таблицу Исполнитель_Альбом
INSERT INTO ArtistAlbum (ArtistID, AlbumID) VALUES
(1, 1),  -- The Beatles - Abbey Road
(2, 2),  -- Nirvana - Nevermind
(3, 3), -- Adele - 25
(5, 4),  -- Bloodhound Gang - Show Us Your Hits
(6, 5), -- Frank Sinatra - My way
(5, 6); -- Bloodhound Gang - Demo

-- Вставка данных в таблицу Трек
INSERT INTO Track (Name, Duration, AlbumID) VALUES
('Come Together', 259, 1),  -- Abbey Road
('Something', 182, 1),      -- Abbey Road
('Smells Like Teen Spirit', 301, 2),  -- Nevermind
('Come As You Are', 217, 2),  -- Nevermind
('Hello', 295, 3),          -- 25
('Someone Like You', 285, 3), -- 25
('I Hope You Die', 300, 4),  -- Show Us Your Hits
('My Way', 258, 5), -- My way
('myself', 241, 5),
('by myself', 256, 5),
('bemy self', 254, 5),
('myself by', 145, 5),
('by myself by', 235, 5),
('beemy', 251, 5),
('premyne', 200, 5);

-- Вставка данных в таблицу Сборник
INSERT INTO Compilation (Name, ReleaseYear) VALUES
('Greatest Hits', 2000),
('Rock Classics', 2010),
('Pop Sensations', 2015),
('Grunge Forever', 2020),
('Rock Party', 2020);

-- Вставка данных в таблицу Сборник_Трек
INSERT INTO CompilationTrack (CompilationID, TrackID) VALUES
(1, 1),  -- Come Together
(1, 3),  -- Smells Like Teen Spirit
(2, 1),  -- Come Together
(2, 4),  -- Come As You Are
(3, 5),  -- Hello
(3, 6), -- Someone Like You
(5, 7), -- I Hope You Die 
(1, 8); -- My Way

