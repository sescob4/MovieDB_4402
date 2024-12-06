CREATE DATABASE moviedb;
USE moviedb;

-- Company Table
CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    FoundedYear INT
);

-- Movies Table
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseDate DATE,
    Genre VARCHAR(100),
    Duration INT, -- Duration in minutes
    AgeRating VARCHAR(10), -- e.g., G, PG, PG-13, R
    CompanyID INT, -- Foreign Key
    AverageScore DECIMAL(3, 2), -- Average score out of 10 with 1 decimal place
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

-- Reviews Table
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    MovieID INT, -- Foreign Key
    ReviewerName VARCHAR(255),
    ReviewScore DECIMAL(3, 1), -- Score out of 10 with 1 decimal place
    ReviewDate DATE,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

-- Earnings Table
CREATE TABLE Earnings (
    EarningsID INT PRIMARY KEY,
    MovieID INT, -- Foreign Key
    BoxOfficeGross DECIMAL(15, 2), -- Total earnings with 2 decimal places
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

-- Actors Table
CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Nationality VARCHAR(100)
);

-- MovieActors Table
CREATE TABLE MovieActors (
    MovieID INT, -- Foreign Key
    ActorID INT, -- Foreign Key
    Role VARCHAR(255),
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);
