### About this Course

SQL can be used to generate reports and present information on websites. This course covers powerful SQL features in helping you answer more interesting questions about your data.  

### What you'll learn

Ordering, limiting and paging through a result set  
Manipulating text  
Working with numbers  
Working with dates  

### Instructions

I created these files so you can follow along with the course on your own computer in Terminal or pgAdmin.  

I highly recommend installing PostgreSQL using Homebrew. It will initialize your database cluster in `/usr/local/var/postgres` and you can run `brew services start postgresql` to start/stop your database server.  

This is not a definitive guide to using PostgreSQL, so I'd recomend checkout out [PostgreSQL Tutorial](http://www.postgresqltutorial.com) if you're not familiar with how to use it.  

*Import using SQL dump files*  

1.  Download and extract the [zip](https://github.com/adamelliotfields/treehouse-db/raw/master/reporting-with-sql/reporting-with-sql.zip).  
2.  Use your text editor to find and replace my name (`adamfields`) with your PostgreSQL username (will be your OSX username if you installed using Homebrew)
3.  Run `psql` at the command line and connect to the database you want to import to
4.  Enter `\i /path/to/file.sql`  
