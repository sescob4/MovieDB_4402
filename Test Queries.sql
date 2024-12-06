use moviedb;

-- TEST QUERY 1
-- Displays all Movies from Movies Table
SELECT * from movies;

-- TEST QUERY 2
-- Lists Movies by Average Review Score in Descending Order
SELECT Title, AverageScore
FROM Movies
ORDER BY AverageScore DESC;

-- TEST QUERY 3
-- Selects Top 3 Movies and Movie Studios Based on Average Review Score
SELECT 
    c.Name AS Studio, 
    ROUND(AVG(m.AverageScore), 1) AS AvgRating
FROM Movies m
JOIN Company c ON m.CompanyID = c.CompanyID
WHERE m.AverageScore IS NOT NULL
GROUP BY c.Name
ORDER BY AvgRating DESC
LIMIT 3;

-- TEST QUERY 4
-- Adds Movie to Database
INSERT INTO Movies (
    MovieID, Title, ReleaseDate, Genre, Duration, AgeRating, CompanyID, AverageScore
) VALUES (
    26, 'Inception', '2010-07-16', 'Sci-Fi', 148, 'PG-13', 1, 0.00
);

-- Used to show success from Query 4 (AverageScore still 0 since no reviews yet)
SELECT * from movies
where MovieID = 26;


-- TEST QUERY 5
-- Insert New Review and Update Movie AverageScore
INSERT INTO Reviews (
    ReviewID, MovieID, ReviewerName, ReviewScore, ReviewDate
) VALUES (
    87, 26, 'Tom Brady', 9.5, '2024-12-03'
);

UPDATE Movies
SET AverageScore = (
    SELECT AVG(ReviewScore)
    FROM Reviews
    WHERE MovieID = 26
)
WHERE MovieID = 26;

-- Used to show success from Query 5 (Updated AverageScore in Movie Table and added Review to Reviews Table)
SELECT * from movies
where MovieID = 26;

SELECT * from reviews
where ReviewID = 87;
