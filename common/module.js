var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'hong'
})
connection.connect(function(err) {
    if (err) console.log(err);
})
exports.username = 'zhangsan';
exports.connection = connection;