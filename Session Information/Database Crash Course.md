# Database Crash Course

*Hosted by [Ignacio X. Domínguez](https://people.engr.ncsu.edu/ixdoming/)*

Here you can find supplemental information for the Database Crash Course Workshop Session. This session is scheduled for Saturday, March 27th at 2pm.

* [Before the Workshop](#before-the-workshop)
* [Additional Resources](#additional-resources)


<a name="before-the-workshop"></a>
## Before the Workshop

To prepare to follow along the presentation please download and install the following resources:

* [MySQL Community Server](https://dev.mysql.com/downloads/mysql/)
* [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)

On Windows, there is an install wizard you can use. Make sure you download both MySQL Server and MySQL Workbench, and optionally any "connectors" you may need for the programming language(s) you will be using. If prompted during installation, select the standalone server option and make sure you enable TCP/IP connections on port 3306 (this is the default port).

<a name="additional-resources"></a>
## Additional Resources


* [Workshop Slides](db_session_files/DiamondHacksDBTalk.pdf)
* SQL Files
  * [Database Schema Creation](db_session_files/sql/schema.sql): This SQL file has code to create our database, create our tables, and add foreign key constraints.
  * [Sample Data](db_session_files/sql/sample_data.sql): This SQL file contains example `INSERT` statements to populate our tables with sample data.
  * [Example Queries](db_session_files/sql/queries.sql): Here are some sample queries for inspiration.
* [Code Examples Folder](db_session_files/code_examples): Here's the Python sample code used to connect to the database.
* [MySQL Connectors for several languages](https://dev.mysql.com/doc/connectors/en/)