# MovieDB_4402
Movie Database Project for CSC 4402: Database Management Systems

README
This README will guide you through importing the SQL database into MySQL Workbench and running the provided Python scripts (db_functions.py and cli.py) in PyCharm.

1. Prerequisites
Make sure you have the following installed on your system:

- MySQL Server: Ensure MySQL Server is installed.
- MySQL Workbench: To manage and access the database (These can be downloadeed here: https://dev.mysql.com/downloads/workbench/).
- Python 3.x: (Any version 3.6 or later of python) Required for running the Python scripts.
- PyCharm IDE or equivalent: For executing Python code.
- Required Python Libraries:
    - mysql-connector-python: Install this library using the following command:

        pip install mysql-connector-python
  
2. Importing the SQL Database into MySQL Workbench
Launch MySQL Workbench:

  - Open MySQL Workbench and connect to your MySQL server instance.
  - Create a New Database:
      - Run the following SQL command in the query editor to create the database:
          - CREATE DATABASE moviedb;
      - Import the SQL File:
          - Go to Server > Data Import.
          - Select Import from Self-Contained File and choose the provided SQL file (e.g., moviedb.sql).
          - Select the target schema as moviedb.
          - Click Start Import to load the database.
          - Verify the Import:
              - Run the following command in MySQL Workbench to check if the tables were imported correctly:
                  USE moviedb;
                  SHOW TABLES;
                
3. Setting Up the Python Scripts
  - Open the Project in PyCharm:
      - Copy db_functions.py and cli.py to your project directory.
      - Open PyCharm and load the project folder containing these files.
      - Configure the Database Connection:
            - Update the connect_to_db function in db_functions.py with your MySQL credentials:
                def connect_to_db():
                """Connect to the database."""
                return mysql.connector.connect(
                    host="localhost",
                    user="root",  # Replace with your MySQL username, likely just root
                    password="your_password",  # Replace with your MySQL password
                    database="moviedb"  # Ensure this matches the database name
                )
            - The important thing is to make sure the password variable has been changed to the one you set in you MySQL workbench
        
      - Install Required Python Libraries:
          - Open the terminal in PyCharm and run:
              - pip install mysql-connector-python

4. Running the Test Queries
    - The test_queries.sql file has been provided to be tested.
    - Open the file after uploading the database or copy its contents into another SQL File. 
    - For some of the queries in this file to work, they must be run before interacting with the CLI.
    - This is because they are adding data to a specific ID that is currently available but won't be if a movie or review are added through the CLI
                
6. Running the CLI Program
   - Run cli.py:
      - In PyCharm, right-click on cli.py and select Run 'cli'.
          - Main Menu:
              - The program will display a main menu with options to list movies, add movies, reviews, and more.
              - Usage:
                  - Follow the prompts to interact with the database (e.g., adding movies, viewing scores).
                
7. Notes
    - Ensure the MySQL server is running before executing the Python scripts.
    - If you encounter connection errors, double-check the connect_to_db function credentials.

8. Troubleshooting
    - Cannot Connect to MySQL:
    - Ensure your MySQL server is running and the credentials in db_functions.py are correct.
    - Missing Tables or Data:
    
    - Re-import the SQL file into MySQL Workbench.
    - Python Errors:
        - Ensure the required libraries are installed.
        - Check for typos in inputs (e.g., dates or numeric values).
    If you follow these steps and encounter issues, feel free to ask for help!
