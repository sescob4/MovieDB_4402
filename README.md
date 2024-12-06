# **MovieDB_4402**
**Movie Database Project for CSC 4402: Database Management Systems**

This project provides a movie database system that allows users to manage, query, and interact with movie data using Python scripts and a MySQL database.

---

## **README Overview**
This guide explains how to:
1. Import the SQL database ('moviedb.sql') into MySQL Workbench.
2. Set up and run the Python scripts (`db_functions.py` and `cli.py`) in PyCharm.
3. Test the database functionality with provided queries.

---

## **1. Prerequisites**
Ensure you have the following installed on your system:
- **MySQL Server**: Required for hosting the database.
- **MySQL Workbench**: To manage and interact with the database. [Download here](https://dev.mysql.com/downloads/workbench/).
- **Python 3.x**: Any version 3.6 or later is recommended.
- **PyCharm IDE**: Or any equivalent Python IDE for running and editing scripts.
- **Required Python Library**:
    - Install `mysql-connector-python` using the following command:
      ```bash
      pip install mysql-connector-python
      ```

---

## **2. Importing the SQL Database into MySQL Workbench**
1. **Launch MySQL Workbench** and connect to your MySQL server instance.
2. **Create a New Database**:
   - Open a new query tab and execute the following SQL command to create the database:
     ```sql
     CREATE DATABASE moviedb;
     ```
3. **Import the `.sql` File**:
   - Go to **Server > Data Import** in MySQL Workbench.
   - Select **Import from Self-Contained File** and choose the provided `moviedb.sql` file.
   - Choose the target schema as `moviedb`.
   - Click **Start Import** to load the database.
4. **Verify the Import**:
   - Run the following commands to ensure the tables were imported successfully:
     ```sql
     USE moviedb;
     SHOW TABLES;
     ```

---

## **3. Setting Up the Python Scripts**
1. **Copy the Scripts**:
   - Copy `db_functions.py` and `cli.py` to your project directory.
2. **Update the Database Connection**:
   - Edit the `connect_to_db` function in `db_functions.py` to match your MySQL credentials:
     ```python
     def connect_to_db():
         """Connect to the database."""
         return mysql.connector.connect(
             host="localhost",
             user="root",  # Replace with your MySQL username
             password="your_password",  # Replace with your MySQL password
             database="moviedb"  # Ensure this matches the database name
         )
     ```
3. **Install Required Libraries**:
   - Open the terminal in PyCharm and run if you haven't already:
     ```bash
     pip install mysql-connector-python
     ```

---

## **4. Running the Test Queries**
1. **Use the Provided SQL File**:
   - Open the `test_queries.sql` file in MySQL Workbench.
   - Execute each query to validate database functionality.
2. **Pre-CLI Query Execution**:
   - Some queries (e.g., inserting reviews) depend on specific available review IDS. Run these queries before interacting with the CLI to ensure the data is consistent and the test queries work as expected.

---

## **5. Running the CLI Program**
1. **Run `cli.py`**:
   - Open `cli.py` in PyCharm.
   - Right-click on the file and select **Run 'cli'**.
2. **Main Menu**:
   - You will see the following options:
     ```plaintext
     Main Menu
     1. List All Movies
     2. Get Average Movie Scores
     3. Top Movies and Studios
     4. Add a Movie
     5. Add a Review
     6. Exit
     ```
3. **Using the CLI**:
   - Follow the on-screen prompts to interact with the database (e.g., add movies, view scores, etc.).

---

## **6. Notes**
- **MySQL Server**: Ensure it is running before executing Python scripts.
- **Environment**: Run Python scripts in the same Python environment where dependencies are installed.

---

## **7. Troubleshooting**
### **Cannot Connect to MySQL**:
- Ensure your MySQL server is running.
- Verify credentials in the `connect_to_db` function (`db_functions.py`).
