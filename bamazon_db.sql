
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(40) NULL,
  department_name VARCHAR(10) NULL,
  price DECIMAL(10,2) NULL,
  quantity INTEGER(10),
  PRIMARY KEY (id)
);
INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("A", "GAMING", 20.26, 150);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("B", "GAMING", 29.99, 100);

INSERT INTO products(product_name, department_name, price, quantity)
VALUES ("C", "Household", 55.88, 24);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("D", "Household", 18.75, 300);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("E", "Household", 16.99, 7);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("F", "Household", 22.79, 88);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("G", "Electronics", 10.99, 34);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("H", "Electronics", 6.99, 211);

INSERT INTO products (product_name, department_name, price, quantity)
VALUES ("I", "Electronics", 18.50, 120);


CREATE TABLE departments (
	department_id INT AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(100) NULL,
  over_head_costs DECIMAL(10,2) NULL,
  PRIMARY KEY (department_id)
);


INSERT INTO departments (department_name, over_head_costs)
VALUES ("Music", 2000), ("Movies", 2000), ("Electronics", 2000), ("Toys", 2000), ("Household", 2000), ("Clothes", 2000), ("Hardware", 3000),
			 ("Sports Equipment", 1200);


SELECT * FROM products;
SELECT * FROM departments;

SELECT department_id, departments.department_name, over_head_costs, SUM(product_sales) AS product_sales,
	SUM(product_sales) - over_head_costs AS total_profit
FROM departments
INNER JOIN products
ON departments.department_name = products.department_name
GROUP BY department_id;