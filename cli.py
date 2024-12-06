from db_functions import (
    list_all_movies,
    average_movie_scores,
    top_movies_and_studios,
    add_movie,
    add_review,
    display_movie_options,
    list_companies,
    is_valid_company_id,
    is_valid_movie_id
)


def main():
    while True:
        print("\nMain Menu")
        print("1. List all movies")
        print("2. Get average movie scores (Descending Order)")
        print("3. List top 3 movies and studios")
        print("4. Add a movie")
        print("5. Add a review")
        print("6. Exit")
        choice = input("Enter your choice: ")

        if choice == "1":
            # List all movies with details
            list_all_movies()
        elif choice == "2":
            # Display average movie scores in descending order
            average_movie_scores()
        elif choice == "3":
            # List top 3 movies and studios
            top_movies_and_studios()
        elif choice == "4":
            # Add a new movie
            title = input("Enter movie title: ")
            release_date = input("Enter release date (YYYY-MM-DD): ")
            genre = input("Enter genre: ")
            duration = input("Enter duration in minutes: ")
            if not duration.isdigit():
                print("Invalid duration. Please enter a valid number.")
                continue
            age_rating = input("Enter age rating (e.g., PG-13): ")

            # List companies for selection
            list_companies()
            company_id = input("Enter the Company ID for the movie (or press Enter to cancel): ")
            if company_id:
                try:
                    company_id = int(company_id)
                    if is_valid_company_id(company_id):
                        add_movie(title, release_date, genre, int(duration), age_rating, company_id)
                    else:
                        print("Invalid Company ID. Please select a valid option from the list.")
                except ValueError:
                    print("Invalid input. Please enter a number.")
            else:
                print("Movie addition canceled.")
        elif choice == "5":
            # Add a review for a movie
            display_movie_options()
            movie_id = input("Enter the Movie ID to add a review for (or press Enter to cancel): ")
            if movie_id:
                try:
                    movie_id = int(movie_id)
                    if is_valid_movie_id(movie_id):
                        reviewer_name = input("Enter reviewer name: ")
                        review_score = input("Enter review score: ")
                        if not review_score.replace('.', '', 1).isdigit():
                            print("Invalid score. Please enter a valid number.")
                            continue
                        review_date = input("Enter review date (YYYY-MM-DD): ")
                        add_review(movie_id, reviewer_name, float(review_score), review_date)
                    else:
                        print("Invalid Movie ID. Please select a valid option from the list.")
                except ValueError:
                    print("Invalid input. Please enter a number.")
            else:
                print("Review addition canceled.")
        elif choice == "6":
            # Exit the program
            print("Exiting the program.")
            break
        else:
            print("Invalid choice. Please try again.")


if __name__ == "__main__":
    main()
