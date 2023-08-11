# fitness

 url :https://miflasiddeeque.github.io/fitness/
 source: https://github.com/MiflaSiddeeque/fitness

 The provided code is already an SQL dump that creates a database named `fitness_db` and its associated table `appointment_requests`, along with some sample data. This SQL dump is written to be executed on a MariaDB server.

If you're asking how to use this SQL dump to recreate the database and table on your own system, you can follow these steps:

1. Install a MariaDB Server: Ensure you have a MariaDB server installed and running on your system.

2. Create a Database: Open a MariaDB client (such as the MySQL command-line client) and create a new database named `fitness_db`:

   ```sql
   CREATE DATABASE fitness_db;
   ```

3. Use the SQL Dump: Save the provided SQL dump code to a file, for example, `fitness_db_dump.sql`. Then, use the following command to import the SQL dump into your MariaDB database:

   ```sh
   mysql -u username -p fitness_db < fitness_db_dump.sql
   ```

   Replace `username` with your MariaDB username and you'll be prompted to enter your password.

4. Verify: Once the import is successful, you should have the `fitness_db` database with the `appointment_requests` table and sample data.

Remember that the SQL dump provided includes the statements to create the database, table, and insert data. It's not necessary to modify the SQL dump itself unless you want to change the database or table names or modify the structure/data.

