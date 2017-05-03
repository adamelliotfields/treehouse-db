### About this Course

Building off of previous SQL courses, this course will begin to introduce the student to more complex database concepts. Students will learn to think about data as sets and subsets and practice achieving desired query results via such operations as inner and outer joins, unions and except. They will also be introduced to the concepts of Set Theory and Database Normalization to aid in understanding good query practices.  

### What you'll learn

What is a Relational Database?  
Database Normalization  
Database Keys  
Table Relationships  
Set Operations  

### Instructions

I created these files so you can follow along with the course on your own computer in Terminal or pgAdmin.  

I highly recommend installing PostgreSQL using Homebrew. It will initialize your database cluster in `/usr/local/var/postgres` and you can run `brew services start postgresql` to start/stop your database server.  

This is not a definitive guide to using PostgreSQL, so I'd recomend checkout out [PostgreSQL Tutorial](http://www.postgresqltutorial.com) if you're not familiar with how to use it.  

*Import using SQL dump files*  
1.  Download and extract the [zip](https://github.com/adamelliotfields/treehouse-db/raw/master/querying-relational-databases/querying-relational-databases.zip).  
2.  Use your text editor to find and replace my name (`adamfields`) with your PostgreSQL username (will be your OSX username if you installed using Homebrew)  
3.  Run `psql` at the command line and connect to the database you want to import to  
4.  Enter `\i /path/to/file.sql`  
