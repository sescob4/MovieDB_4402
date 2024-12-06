import mysql.connector
import datetime


def connect_to_db():
    """Connect to the database."""
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="your_password",  # Change to your own password
        database="moviedb"
    )


def list_movies():
    """Fetch all movies with full details."""
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT Title, ReleaseDate, Genre, Duration, AgeRating FROM Movies;")
    movies = cursor.fetchall()
    cursor.close()
    db.close()
    return movies


def display_movie_options():
    """Display all movies with their IDs to assist in selecting a movie for review."""
    print("\nAvailable Movies:")
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT MovieID, Title FROM Movies;")
    movies = cursor.fetchall()
    cursor.close()
    db.close()

    if movies:
        print(f"{'Movie ID':<10} {'Title':<50}")
        print("-" * 60)
        for movie_id, title in movies:
            print(f"{movie_id:<10} {title:<50}")
    else:
        print("No movies available. Please add a movie first.")


def list_all_movies():
    """List all movies with details."""
    print("\nList of All Movies:")
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT Title, ReleaseDate, Genre, Duration, AgeRating FROM Movies;")
    movies = cursor.fetchall()
    cursor.close()
    db.close()

    if movies:
        print(f"{'Title':<50} {'Release Date':<15} {'Genre':<25} {'Duration':<10} {'Age Rating':<10}")
        print("-" * 120)
        for title, release_date, genre, duration, age_rating in movies:
            # Format release_date if it's a date object
            if isinstance(release_date, (datetime.date, datetime.datetime)):
                release_date = release_date.strftime("%Y-%m-%d")
            print(f"{title:<50} {release_date:<15} {genre:<25} {duration:<10} {age_rating:<10}")
    else:
        print("No movies found.")


def list_companies():
    """List up to 5 companies for movie association."""
    print("\nAvailable Companies:")
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT CompanyID, Name FROM Company LIMIT 5;")  # List first 5 companies
    companies = cursor.fetchall()
    cursor.close()
    db.close()

    if companies:
        print(f"{'Company ID':<10} {'Name':<30}")
        print("-" * 40)
        for company_id, name in companies:
            print(f"{company_id:<10} {name:<30}")
    else:
        print("No companies found in the database.")


def is_valid_company_id(company_id):
    """Check if the given CompanyID exists in the database."""
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT COUNT(*) FROM Company WHERE CompanyID = %s", (company_id,))
    result = cursor.fetchone()[0]
    cursor.close()
    db.close()
    return result > 0


def is_valid_movie_id(movie_id):
    """Check if the given MovieID exists in the database."""
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT COUNT(*) FROM Movies WHERE MovieID = %s", (movie_id,))
    result = cursor.fetchone()[0]
    cursor.close()
    db.close()
    return result > 0


def get_next_movie_id():
    """Fetch the highest MovieID and increment it to get the next ID."""
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT MAX(MovieID) FROM Movies;")
    result = cursor.fetchone()[0]
    cursor.close()
    db.close()
    return (result + 1) if result else 1  # Start with 1 if no movies exist


def add_movie(title, release_date, genre, duration, age_rating, company_id):
    """Add a new movie to the database with an associated company and default AverageScore."""
    db = connect_to_db()
    cursor = db.cursor()

    # Get the next available MovieID
    next_movie_id = get_next_movie_id()

    # Insert the new movie
    query = """
        INSERT INTO Movies (MovieID, Title, ReleaseDate, Genre, Duration, AgeRating, CompanyID, AverageScore)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """
    cursor.execute(query, (next_movie_id, title, release_date, genre, duration, age_rating, company_id, 0))
    db.commit()
    print(f"Movie '{title}' added successfully with ID {next_movie_id}!")
    cursor.close()
    db.close()


def get_next_review_id():
    """Fetch the highest ReviewID and increment it to get the next ID."""
    db = connect_to_db()
    cursor = db.cursor()
    cursor.execute("SELECT MAX(ReviewID) FROM Reviews;")
    result = cursor.fetchone()[0]
    cursor.close()
    db.close()
    return (result + 1) if result else 1  # Start with 1 if no reviews exist


def update_movie_average_score(movie_id):
    """Update the AverageScore in the Movies table for a given MovieID."""
    db = connect_to_db()
    cursor = db.cursor()

    # Calculate the new average score
    query = """
        SELECT AVG(ReviewScore)
        FROM Reviews
        WHERE MovieID = %s
    """
    cursor.execute(query, (movie_id,))
    new_average_score = cursor.fetchone()[0]

    # Update the Movies table with the new average
    update_query = """
        UPDATE Movies
        SET AverageScore = %s
        WHERE MovieID = %s
    """
    cursor.execute(update_query, (new_average_score, movie_id))
    db.commit()
    cursor.close()
    db.close()


def add_review(movie_id, reviewer_name, review_score, review_date):
    """Add a review for a specific movie and update the movie's average review score."""
    db = connect_to_db()
    cursor = db.cursor()

    # Get the next available ReviewID
    next_review_id = get_next_review_id()

    # Insert the new review
    query = """
        INSERT INTO Reviews (ReviewID, MovieID, ReviewerName, ReviewScore, ReviewDate)
        VALUES (%s, %s, %s, %s, %s)
    """
    cursor.execute(query, (next_review_id, movie_id, reviewer_name, review_score, review_date))
    db.commit()

    # Update the average review score for the movie
    update_movie_average_score(movie_id)

    print(f"Review for Movie ID {movie_id} added successfully with Review ID {next_review_id}!")
    cursor.close()
    db.close()


def average_movie_scores():
    """Display average scores of movies in descending order."""
    print("\nAverage Movie Scores (Descending Order):")
    db = connect_to_db()
    cursor = db.cursor()
    query = """
        SELECT Title, COALESCE(AverageScore, 0) AS AvgScore
        FROM Movies
        ORDER BY AvgScore DESC;
    """
    cursor.execute(query)
    results = cursor.fetchall()
    cursor.close()
    db.close()

    if results:
        print(f"{'Title':<50} {'Average Score':<15}")
        print("-" * 70)
        for title, score in results:
            print(f"{title:<50} {score:<15.1f}")
    else:
        print("No movies found.")


def top_movies_and_studios():
    """List the top 3 rated movies by each studio and the top 3 studios with highest ratings."""
    print("\nTop 3 Rated Movies by Each Studio:")
    db = connect_to_db()
    cursor = db.cursor()

    # Query for top movies by each studio
    query_top_movies = """
        SELECT c.Name AS Studio, m.Title, m.AverageScore
        FROM Movies m
        JOIN Company c ON m.CompanyID = c.CompanyID
        WHERE m.AverageScore IS NOT NULL
        ORDER BY c.Name, m.AverageScore DESC;
    """
    cursor.execute(query_top_movies)
    top_movies = cursor.fetchall()

    # Group movies by studio and limit to top 3
    studios = {}
    for studio, title, score in top_movies:
        if studio not in studios:
            studios[studio] = []
        if len(studios[studio]) < 3:
            studios[studio].append((title, score))

    # Print the top 3 rated movies for each studio
    for studio, movies in studios.items():
        print(f"\nStudio: {studio}")
        print(f"{'Title':<50} {'Rating':<10}")
        print("-" * 65)
        for title, score in movies:
            print(f"{title:<50} {score:<10.1f}")

    # Query for top studios by average ratings
    print("\nTop 3 Studios with Highest Average Ratings:")
    query_top_studios = """
        SELECT c.Name AS Studio, AVG(m.AverageScore) AS AvgRating
        FROM Movies m
        JOIN Company c ON m.CompanyID = c.CompanyID
        WHERE m.AverageScore IS NOT NULL
        GROUP BY c.Name
        ORDER BY AvgRating DESC
        LIMIT 3;
    """
    cursor.execute(query_top_studios)
    top_studios = cursor.fetchall()
    cursor.close()
    db.close()

    # Print the top 3 studios
    print(f"{'Studio':<30} {'Average Rating':<15}")
    print("-" * 45)
    for studio, avg_rating in top_studios:
        print(f"{studio:<30} {avg_rating:<15.1f}")
