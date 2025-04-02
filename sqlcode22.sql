db
monday
db.Students.find().pretty()
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Yuvansh Raj Saxena',
  location: 'Uttar Pradesh'
}
-- db.Students.updateOne({name:'Yuvansh Raj Saxena'}, {$set:{'name':'Yuvansh'}))
-- SyntaxError: Unexpected token, expected "," (1:73)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({name[33m:[39m[32m'Yuvansh Raj Saxena'[39m}[33m,[39m {$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Yuvansh'[39m})
--  [90m   |[39m                                                                          [31m[1m^[22m[39m[0m
-- db.Students.updateOne({'name':'Yuvansh Raj Saxena'}, {$set:{'name':'Yuvansh'}))
-- SyntaxError: Unexpected token, expected "," (1:75)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({[32m'name'[39m[33m:[39m[32m'Yuvansh Raj Saxena'[39m}[33m,[39m {$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Yuvansh'[39m})
--  [90m   |[39m                                                                            [31m[1m^[22m[39m[0m
-- db.Students.updateOne({'name':'Yuvansh Raj Saxena'} {$set:{'name':'Yuvansh'}))
-- SyntaxError: Unexpected token, expected "," (1:52)

-- [0m[31m[1m>[22m[39m[90m 1 |[39m db[33m.[39m[33mStudents[39m[33m.[39mupdateOne({[32m'name'[39m[33m:[39m[32m'Yuvansh Raj Saxena'[39m} {$set[33m:[39m{[32m'name'[39m[33m:[39m[32m'Yuvansh'[39m})
--  [90m   |[39m                                                     [31m[1m^[22m[39m[0m
db.Students.updateOne({name:'Yuvansh Raj Saxena'},{$set:{'name':'Yuvansh'}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
db.Students.find()
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Yuvansh',
  location: 'Uttar Pradesh'
}
db.Students.insertOne({});
{
  acknowledged: true,
  insertedId: ObjectId('67d9c0124528fa06b04ca584')
}
db.Students.insertOne({
  _id: 1,
  name: "Yash"
});
{
  acknowledged: true,
  insertedId: 1
}
db.Students.find();
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Aman',
  location: 'Uttar Pradesh'
}
{
  _id: ObjectId('67d9c0124528fa06b04ca584')
}
{
  _id: 1,
  name: 'Yash'
}
db.Students.insertOne({
  _id: null,
  name: "Aman"
});
{
  acknowledged: true,
  insertedId: ObjectId('67d9c0bd4528fa06b04ca585')
}
db.Students.insertOne({
  _id: null,
  name: "Yuvansh"
});
{
  acknowledged: true,
  insertedId: ObjectId('67d9c0c34528fa06b04ca586')
}
db.Students.find();
{
  _id: ObjectId('67d9b946726d52f6470e5b76'),
  name: 'Aman',
  location: 'Uttar Pradesh'
}
{
  _id: ObjectId('67d9c0124528fa06b04ca584')
}
{
  _id: 1,
  name: 'Yash'
}
{
  _id: ObjectId('67d9c0bd4528fa06b04ca585'),
  name: 'Aman'
}
{
  _id: ObjectId('67d9c0c34528fa06b04ca586'),
  name: 'Yuvansh'
}
db.Students.drop();
true
db.Books.insertMany([
  { title: "NoSQL Distilled", isbn: "0-4696-7030-4" },
  { title: "NoSQL in 7 Days", isbn: "0-4086-6859-8" },
  { title: "NoSQL Database", isbn: "0-2504-6932-4" }
]);
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('67d9c1d44528fa06b04ca588'),
    '1': ObjectId('67d9c1d44528fa06b04ca589'),
    '2': ObjectId('67d9c1d44528fa06b04ca58a')
  }
}
db.Books.find();
{
  _id: ObjectId('67d9c1d44528fa06b04ca588'),
  title: 'NoSQL Distilled',
  isbn: '0-4696-7030-4'
}
{
  _id: ObjectId('67d9c1d44528fa06b04ca589'),
  title: 'NoSQL in 7 Days',
  isbn: '0-4086-6859-8'
}
{
  _id: ObjectId('67d9c1d44528fa06b04ca58a'),
  title: 'NoSQL Database',
  isbn: '0-2504-6932-4'
}
db.Books.drop();
true
db.Books.insertOne([
  { title: "NoSQL Distilled", isbn: "0-4696-7030-4" },
  { title: "NoSQL in 7 Days", isbn: "0-4086-6859-8" },
  { title: "NoSQL Database", isbn: "0-2504-6932-4" }
]);
{
  acknowledged: true,
  insertedId: ObjectId('67d9c2074528fa06b04ca58b')
}
db.Books.find();
{
  '0': {
    title: 'NoSQL Distilled',
    isbn: '0-4696-7030-4'
  },
  '1': {
    title: 'NoSQL in 7 Days',
    isbn: '0-4086-6859-8'
  },
  '2': {
    title: 'NoSQL Database',
    isbn: '0-2504-6932-4'
  },
  _id: ObjectId('67d9c2074528fa06b04ca58b')
}
