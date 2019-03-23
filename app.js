//app.js

const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'password',
  database: 'job_posting'
});
connection.connect((err) => {
  if (err) throw err;
  console.log('Connected!');
});