const repl = require('repl');
const Datastore = require('nedb');

const db = {};
db.posts = new Datastore({ filename: './nedb/posts.db', autoload: true });
db.users = new Datastore({ filename: './nedb/users.db', autoload: true });

const cli = repl.start();

cli.context.Datastore = Datastore;
cli.context.db = db;
