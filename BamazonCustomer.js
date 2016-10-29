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
    console.log("connected as id " + connection.threadId);
})

connection.query('SELECT * FROM Products', function(err, res) {
    for (var i = 0; i < res.length; i++) {
        console.log(res[i].id + " | " + res[i].ProductName + " | " + res[i].DepartmentName + " | $" + res[i].Price);
    }
    console.log("-----------------------------------");
})

var start = function() {
	connection.query('SELECT * FROM Products', function(err, res) {
		//console.log(res);
    	inquirer.prompt({
        	name: "itemId",
        	type: "input",
       		message: "What is the item ID you would like to purchase?"
    	}).then(function(answer) {
    		for (var i = 0; i < res.length; i++) {
            	if (res[i].id == answer.itemId) {
                	var chosenItem = res[i].id;
                	 console.log("You have chosen item " + chosenItem);
                	inquirer.prompt({
                   		name: "quantity",
                    	type: "input",
                    	message: "How many would you like to order?"
            		}).then(function(amount){
                        console.log(chosenItem);
                		if (res[chosenItem].StockQuantity > parseInt(amount.quantity)){

                            var itemPrice = res[chosenItem].Price;

                            console.log(itemPrice);

        					//update stock ti a new variable
       						var newStock = res[chosenItem].StockQuantity - amount.quantity;

                            //query to database and change the stock amount.
       						var updateStock = 'UPDATE Products SET StockQuantity =' + newStock + 'WHERE id =' + chosenItem;
                            
                            connection.query(updateStock, function(err,res){
                                // the price of the item chosen * the answer quantity
                                var customerTotal = amount.quantity * itemPrice;

                                console.log("Order for " + amount.quantity + " was placed successfully!");
                                console.log("Your total is " + customerTotal);
                                start();

                            }) 
                    	} else {
                        	console.log("Insufficient quantity! there is only " + res[chosenItem].StockQuantity + " in stock.");
                        	
                        	start();
                    	} 		
       				})
    			}
			}
            //console.log(i);
		})
	})
}
start();
 