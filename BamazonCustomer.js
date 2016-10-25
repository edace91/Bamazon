/* 
Running this application will first display 
all of the items available for sale. 
Include the ids, names, and prices 
of products for sale.
*/
var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root", //Your username
    password: "", //Your password
    database: "Bamazon"
})

connection.connect(function(err) {
    if (err) throw err;
    runSearch();
})
