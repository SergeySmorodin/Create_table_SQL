-- Создание таблицы Исполнитель 
CREATE TABLE  if NOT EXISTS Artist (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Создание таблицы Жанр 
CREATE TABLE if NOT EXISTS Genre (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Создание таблицы Исполнитель_Жанр 
CREATE TABLE if NOT EXISTS ArtistGenre (
    ID SERIAL PRIMARY KEY,
    ArtistID INT REFERENCES Artist(ID) ON DELETE CASCADE,
    GenreID INT REFERENCES Genre(ID) ON DELETE CASCADE,
    UNIQUE (ArtistID, GenreID)  
);

-- Создание таблицы Альбом
CREATE TABLE IF NOT EXISTS Album (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ReleaseYear INT CHECK (ReleaseYear >= 1900 AND ReleaseYear <= EXTRACT(YEAR FROM CURRENT_DATE))
);

-- Создание таблицы Исполнитель_Альбом 
CREATE TABLE if NOT EXISTS ArtistAlbum (
    ID SERIAL PRIMARY KEY,
    ArtistID INT REFERENCES Artist(ID) ON DELETE CASCADE,
    AlbumID INT REFERENCES Album(ID) ON DELETE CASCADE,
    UNIQUE (ArtistID, AlbumID)
);

-- Создание таблицы Трек 
CREATE TABLE IF NOT EXISTS Track (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Duration INT CHECK (Duration > 0),  
    AlbumID INT REFERENCES Album(ID) ON DELETE CASCADE
);

-- Создание таблицы Сборник 
CREATE TABLE if NOT EXISTS Compilation (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ReleaseYear INT CHECK (ReleaseYear >= 1900 AND ReleaseYear <= EXTRACT(YEAR FROM CURRENT_DATE))
);

-- Создание таблицы Сборник_Трек
CREATE TABLE if NOT EXISTS CompilationTrack (
    ID SERIAL PRIMARY KEY,
    CompilationID INT REFERENCES Compilation(ID) ON DELETE CASCADE,
    TrackID INT REFERENCES Track(ID) ON DELETE CASCADE,
    UNIQUE (CompilationID, TrackID)  
);



