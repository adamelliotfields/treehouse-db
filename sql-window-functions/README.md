### About this Workshop

Window functions are a powerful SQL feature that let you compare results against other results within a query. With them, you can you can compare one row to other rows in a query to calculate each row as a percent of the total, for example, or to add a moving average to a report.  

### Instructions

I created these files so you can follow along with the course on your own computer in Terminal or pgAdmin.  

I highly recommend installing PostgreSQL using Homebrew. It will initialize your database cluster in `/usr/local/var/postgres` and you can run `brew services start postgresql` to start/stop your database server.  

This is not a definitive guide to using PostgreSQL, so I'd recomend checkout out [PostgreSQL Tutorial](http://www.postgresqltutorial.com) if you're not familiar with how to use it.  

Note: Window Functions are not available in MySQL or SQLite (at this time). You must use PostgreSQL to follow along since you probably aren't running Oracle DB or Microsoft SQL Server on your Macbook.  

*Import using SQL dump files*  

1.  Download and extract the [zip](https://github.com/adamelliotfields/treehouse-db/raw/master/sql-windows-functions/sql-window-functions.zip).
2.  Use your text editor to find and replace my name (`adamfields`) with your PostgreSQL username (will be your OSX username if you installed using Homebrew)
3.  Run `psql` at the command line and connect to the database you want to import to
4.  Enter `\i /path/to/file.sql`  
