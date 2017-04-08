# Bamazon
Stock Inventory app built using **MySQL**.

## Synopsis

This app will take in orders from customers and deplete stock from the store's inventory reflecting the change within the **MySQL** Database.

## Project Structure

### MySQL Database called Bamazon

**Products** Table

* table should have each of the following columns: 
  * ItemID (unique id for each product)
  * ProductName (Name of product)
  * DepartmentName
  * Price (cost to customer)
  * StockQuantity (how much of the product is available in stores)
  
**BamazonCustomer.js** 

1. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

2. The app then prompts users with two messages.

* The first asks them the ID of the product they would like to buy.
* The second message asks how many units of the product they would like to buy.

3. Once the customer has placed the order, the application checks if the store has enough of the product to meet the customer's request. If not, the app will log the phrase Insufficient quantity!, and then prevent the order from going through. However, if the store does have enough of the product, the application will fulfill the customer's order.

4. Once the update goes through, show the customer the total cost of their purchase.


## Motivation

Create a MySQL based application. 
