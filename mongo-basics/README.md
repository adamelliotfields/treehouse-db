### About this Course
MongoDB is one of the most exciting NoSQL database technologies. MongoDB's flexible structure speeds development and allows teams to produce robust applications more quickly. In this course students will learn how MongoDB works conceptually and how to interact with the database through its shell application.  

### What you'll learn
MongoDB  
NoSQL  
Documents  
Collections  
Records  

### Instructions
1.  Download and extract the [zip](https://raw.githubusercontent.com/adamelliotfields/treehouse-db/master/mongo-basics/mongo-basics.zip).
2.  Run `npm install` or `yarn install`.
3.  Run `node seed.js` to seed the collections.
4.  Run `node repl.js` to use the CLI.

### Notes
I used [NeDB](https://github.com/louischatriot/nedb) to complete this course, which is a JavaScript-based database that uses a subset of the MongoDB API. NeDB is a local, serverless database similar to SQLite.  

The `seed.js` file creates two collections - `users.db` and `posts.db` using the same schema as the course. Each post is given the author's ID for cross referencing.  

Since NeDB is pure JavaScript, you can use the Node REPL. I created a small file (`repl.js`) that loads the Node REPL with the NeDB module and database files imported to execute CRUD operations from the command line.  

Every MongoDB method used in this course can also be done in NeDB, but you'll need to read the docs (fortunately they are really good).  

**Creating documents:**  
`insert()` can be passed an optional callback function that returns the newly created document, including it's unique `_id`.  
```
db.posts.insert({title: 'Hello World'}, (error, document) => {
  if (error) throw error;
  console.log('Inserted document ID:', document._id)
});
```

**Reading documents:**  
The NeDB API methods return a cursor object - not the data. In order to access the data, you must use a callback function. The data will be an array of documents.  
```
db.posts.find({}, (error, data) => {
  if (error) throw error;
  console.log(data);
});
```

Get the keys for a document:  
```
db.posts.find({}, (error, data) => {
  if (error) throw error;
  console.log(Object.keys(data[0]));
});
```

Sorting, skipping, and limiting must be chained onto `find()`. Chaining `exec()` allows you to invoke a callback function:  
```
db.posts.find({}).sort({title: 1}).limit(1).exec((error, data) => {
  if (error) throw error;
  console.log(data);
});
```

Projections work the same as MongoDB. If you only want to return the title field:  
```
db.posts.find({}, {title: 1}, (error, data) => {
  if (error) throw error;
  console.log(data);
});
```

**Updating documents:**  
```
db.posts.update({title: 'Moby Dick'}, {$set: {title: 'In the Heart of the Sea'}}, {});
```

**Deleting documents**:  
```
db.posts.remove({title: 'In the Heart of the Sea'}, {});
```

The `seed.js` file will wipe the collections each time before seeding, so you can create, read, update, and delete to your heart's content!
