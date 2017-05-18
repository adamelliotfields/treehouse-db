const Datastore = require('nedb');

const db = {};
db.posts = new Datastore({ filename: './nedb/posts.db', autoload: true });
db.users = new Datastore({ filename: './nedb/users.db', autoload: true });

db.users.remove({}, { multi: true }, () => {
  db.users.persistence.compactDatafile();
});

db.posts.remove({}, { multi: true }, () => {
  db.posts.persistence.compactDatafile();
});

const data = [
  { first: 'Herman', last: 'Melville', title: 'Moby Dick', body: 'Champollion deciphered the wrinkled granite hieroglyphics. But there is no Champollion to decipher the Egypt of every man\'s and every being\'s face. Physiognomy, like every other human science, is but a passing fable. If then, Sir William Jones, who read in thirty languages, could not read the simplest peasant\'s face in its profounder and more subtle meanings, how may unlettered Ishmael hope to read the awful Chaldee of the Sperm Whale\'s brow? I but put that brow before you. Read it if you can.' },
  { first: 'Jules', last: 'Verne', title: 'Around the World in 80 Days', body: '"Yes," returned Sir Francis, "burned alive. And, if she were not, you cannot conceive what treatment she would be obliged to submit to from her relatives. They would shave off her hair, feed her on a scanty allowance of rice, treat her with contempt; she would be looked upon as an unclean creature, and would die in some corner, like a scurvy dog. The prospect of so frightful an existence drives these poor creatures to the sacrifice much more than love or religious fanaticism. Sometimes, however, the sacrifice is really voluntary, and it requires the active interference of the Government to prevent it. Several years ago, when I was living at Bombay, a young widow asked permission of the governor to be burned along with her husband\'s body; but, as you may imagine, he refused. The woman left the town, took refuge with an independent rajah, and there carried out her self-devoted purpose."' },
  { first: 'Lewis', last: 'Carroll', title: 'Alice in Wonderland', body: 'Alice waited a little, half expecting to see it again, but it did not appear, and after a minute or two she walked on in the direction in which the March Hare was said to live. \'I\'ve seen hatters before,\' she said to herself; \'the March Hare will be much the most interesting, and perhaps as this is May it won\'t be raving mad—at least not so mad as it was in March.\' As she said this, she looked up, and there was the Cat again, sitting on a branch of a tree.' },
  { first: 'H.G.', last: 'Wells', title: 'The War of the Worlds', body: 'It was only when I got thus close to it that the strangeness of this object was at all evident to me. At the first glance it was really no more exciting than an overturned carriage or a tree blown across the road. Not so much so, indeed. It looked like a rusty gas float. It required a certain amount of scientific education to perceive that the grey scale of the Thing was no common oxide, that the yellowish-white metal that gleamed in the crack between the lid and the cylinder had an unfamiliar hue. "Extra-terrestrial" had no meaning for most of the onlookers.' }
];

data.forEach((item, index) => {
  db.users.insert({ first: item.first, last: item.last }, (err, doc) => {
    if (err) throw err;
    db.posts.insert({ title: item.title, body: item.body, author: doc._id });
  });
});
