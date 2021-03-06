# Node-MySQL



## Bamazon
A mock storefront with departments and products. Customers, managers, and supervisors are able to use this app.

## Motivation
A Node app for customers to view items and place orders, for managers to perform inventory control and add new products, and for supervisors to track department profitability and add new departments. 
 

## Tech/framework used
<b>Built with</b>
- [Node.js](https://nodejs.org/en/)
- Javascript
- [MySQL](https://www.mysql.com/)
- [inquirer](https://www.npmjs.com/package/inquirer)
- [console.table](https://www.npmjs.com/package/console.table)

## Features
- Inquirer provides an easy to use UI with prompts asking the user what they would like to do. 
- Customers may purchase products from the available products in the database. 
- Managers have the ability to add inventory and new products to the databse. 
- Supervisors have the ability to view profit data by department and add new departments. 
- Console table organizes product, inventory, and department data in a concise manner within the CLI. 
- User input validation is present to ensure that customers cannot purchase more inventory than Bamazon has in stock, managers don't add products with no inventory, and supervisors cannot add departments that already exist.

## Installation
- Install [Node js](https://nodejs.org/en/)
- Clone the Bamazon repository to your machine
- Open CLI, navigate to the cloned repository, and run the following to install the npm package dependencies 

		npm install

- Open MySQL Workbench, SQL, or your preferred database management app. Open the "bamazon_db.sql" script from the cloned repo, and run it to set up the database and base product/department data.


- You're ready to go!

## How to use?

**Customers**
- Run the following in your CLI while inside your cloned repo directory

		node bamazonCustomer.js

- Select from the resulting screen whether you would like to view items.
- If you select view items, input and enter the item id that you would like to purchase
- Input and enter the quantity that you would like to buy
- If you would like to buy another item, repeat


**Managers**
- Run the following in your CLI while inside your cloned repo directory

		node bamazonManager.js

- Select from the resulting screen whether you would like to view products for sale, view low inventory, add to inventory,and add new product.
- If you select add to inventory, follow the prompts for item id to increase inventory on and quantity to increase inventory
- If you select add new product, follow the prompts for item name, department, price, and quantity in stock

# Copyright
Jose Leyva (C) 2019. All Rights Reserved.