# Udacity Tournament Results Project

This was the fourth project for the Udacity Full Stack Nanodegree. It takes predefined a list of players for a tournament, and matches the up against one another using swiss pairings.

### How to Run this Project Locally
This site was written in Python 2.7, using PostgreSQL as the database.
  - Download the latest version of Python 2.7 [here](https://www.python.org/downloads/)
  - Download PostgreSQL [here](https://www.postgresql.org/download/)

With everything installed you can now fork this repo, and clone it to your machine. To import the database schema, run PostgreSQL from the command line using the `psql` command. Then use `\i tournament.sql` to import the necessary tables. To test the pairings, use `python tournament_test.py` to run the test cases. If everything works, you should get a success message.