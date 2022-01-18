const mysql = require('mysql2');

const pool = mysql.createPool('mysql://bba1faf40bc6d9:09d46d26@us-cdbr-east-05.cleardb.net/heroku_248980a844888ba?reconnect=true');

module.exports = pool.promise();