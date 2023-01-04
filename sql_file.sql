
-- create a table for all store locations
CREATE TABLE locations(location_id serial PRIMARY KEY, address varchar(255), city varchar(255), zipcode varchar(5), state varchar(255));
INSERT INTO locations VALUES (DEFAULT, '594 Goldleaf Lane', 'Mount Vernon', '62864', 'IL');
INSERT INTO locations VALUES (DEFAULT, '1692 Quincy Street', 'Philadelphia', '19108', 'PA');
INSERT INTO locations VALUES (DEFAULT, '456 Heron Way', 'Portland', '97205', 'OR');
INSERT INTO locations VALUES (DEFAULT, '3386 Earnhardt Drive', 'Pearcy', '71964', 'AZ');
INSERT INTO locations VALUES (DEFAULT, '1236 Joy Lane', 'Santa Ana', '92705', 'CA');
INSERT INTO locations VALUES (DEFAULT, '876 Dennison Street', 'Modesto', '95354', 'CA');
INSERT INTO locations VALUES (DEFAULT, '1513 Warner Street', 'Miami', '33161', 'FL');
INSERT INTO locations VALUES (DEFAULT, '3524 Poplar Chase Lane', 'Boise', '83702', 'ID');
INSERT INTO locations VALUES (DEFAULT, '1357 Rockford Mountain Lane', 'Garner', '27529', 'NC');
INSERT INTO locations VALUES (DEFAULT, '3803 Chatham Way', 'Washington', '20008', 'MD');
INSERT INTO locations VALUES (DEFAULT, '1470 Union Street', 'Seattle', '98119', 'WA');
INSERT INTO locations VALUES (DEFAULT, '3709 Alexander Drive', 'Wichita Falls', '76301', 'TX');
INSERT INTO locations VALUES (DEFAULT, '195 Hillcrest Avenue', 'New Laguna', '87038', 'NM');
INSERT INTO locations VALUES (DEFAULT, '3216 Lynch Street', 'San Francisco', '94107', 'CA');
INSERT INTO locations VALUES (DEFAULT, '1251 Jones Avenue', 'Winston Salem', '27107', 'NC');
INSERT INTO locations VALUES (DEFAULT, '617 White Lane', 'Fort Smith', '72908', 'AR');
INSERT INTO locations VALUES (DEFAULT, '4852 Pooh Bear Lane', 'Spartanburg', '29302', 'SC');
INSERT INTO locations VALUES (DEFAULT, '2929 Cherry Camp Road', 'Park Ridge', '60068', 'IL');
INSERT INTO locations VALUES (DEFAULT, '798 Olive Street', 'Wauseon', '43567', 'OH');
INSERT INTO locations VALUES (DEFAULT, '3854 Thrash Trail', 'East Otto', '14729', 'NY');

-- create a table for all store employees
CREATE TABLE employees(name varchar(255), position varchar(255), location_id SERIAL REFERENCES locations, employee_id serial PRIMARY KEY);
INSERT INTO employees VALUES ('John Gonzalez', 'Clerk', 1, DEFAULT);
INSERT INTO employees VALUES ('Dawn Israel', 'Clerk', 8, DEFAULT);
INSERT INTO employees VALUES ('Margaret Pemberton', 'Clerk', 6, DEFAULT);
INSERT INTO employees VALUES ('Kimberly Baeuche', 'Delivery Driver', 4, DEFAULT);
INSERT INTO employees VALUES ('Sandra Smith', 'Delivery Driver', 2, DEFAULT);
INSERT INTO employees VALUES ('Clara Moore', 'Delivery Driver', 3, DEFAULT);
INSERT INTO employees VALUES ('Shirley Goodman', 'Cashier', 4, DEFAULT);
INSERT INTO employees VALUES ('Tamara Spafford', 'Cashier', 9, DEFAULT);
INSERT INTO employees VALUES ('Kevin Johnson', 'Cashier', 3, DEFAULT);
INSERT INTO employees VALUES ('Darnell Spano', 'Cashier', 3, DEFAULT);
INSERT INTO employees VALUES ('Geneva Russell', 'Cashier', 2, DEFAULT);
INSERT INTO employees VALUES ('Tami Schultz', 'Butcher', 10, DEFAULT);
INSERT INTO employees VALUES ('Darlene Kearns', 'Butcher', 2, DEFAULT);
INSERT INTO employees VALUES ('Jack McCreary', 'Butcher', 15, DEFAULT);
INSERT INTO employees VALUES ('Zane Halcomb', 'Manager', 13, DEFAULT);
INSERT INTO employees VALUES ('Jessica Reece', 'Manager', 17, DEFAULT);
INSERT INTO employees VALUES ('Katherine Watson', 'Bagger', 9, DEFAULT);
INSERT INTO employees VALUES ('Timothy Beck', 'Bagger', 5, DEFAULT);
INSERT INTO employees VALUES ('Deanna Brown', 'Receiver', 14, DEFAULT);
INSERT INTO employees VALUES ('Jennifer Horton', 'Receiver', 19, DEFAULT);

-- create a table for all products
CREATE TABLE products(product_id serial PRIMARY KEY, name varchar(255), retail_price DOUBLE(10, 2), product_type varchar(255));
INSERT INTO products VALUES (DEFAULT, 'Milk', 2.75, 'Dairy');
INSERT INTO products VALUES (DEFAULT, 'Eggs', 2.05, 'Poultry');
INSERT INTO products VALUES (DEFAULT, 'Cheese', 3.29, 'Dairy');
INSERT INTO products VALUES (DEFAULT, 'Apples ', 1.49, 'Fruit');
INSERT INTO products VALUES (DEFAULT, 'Potatoes', 1.98, 'Vegetables');
INSERT INTO products VALUES (DEFAULT, 'Bread Roll', 2.50, 'Bakery');
INSERT INTO products VALUES (DEFAULT, 'Bagels', 5.00, 'Bakery');
INSERT INTO products VALUES (DEFAULT, '6-Pack Soda', 7.50, 'Drinks');
INSERT INTO products VALUES (DEFAULT, 'Frozen Pizza', 5.50, 'Frozen');
INSERT INTO products VALUES (DEFAULT, 'Bananas', 1.25, 'Fruit');
INSERT INTO products VALUES (DEFAULT, 'Onions', 1.49, 'Vegetables');
INSERT INTO products VALUES (DEFAULT, 'Pancakes', 2.25, 'Frozen');
INSERT INTO products VALUES (DEFAULT, 'Orange Juice', 1.25, 'Drinks');
INSERT INTO products VALUES (DEFAULT, 'Chicken', 3.75, 'Poultry');
INSERT INTO products VALUES (DEFAULT, 'Beef', 4.45, 'Meat ');
INSERT INTO products VALUES (DEFAULT, 'Waffles', 3.25, 'Frozen');
INSERT INTO products VALUES (DEFAULT, 'Pork', 3.45, 'Meat ');
INSERT INTO products VALUES (DEFAULT, 'Ice Cream', 2.15, 'Dairy');
INSERT INTO products VALUES (DEFAULT, 'Oranges', 2.00, 'Fruit');
INSERT INTO products VALUES (DEFAULT, 'Chocolate Bar', 1.15, 'Candy');
INSERT INTO products VALUES (DEFAULT, 'Sour Patch Kids', 1.00, 'Candy');

-- create a table for all transactions
CREATE TABLE transactions(date DATE, location_id SERIAL REFERENCES locations, amount FLOAT, transaction_id SERIAL);
INSERT INTO transactions VALUES ('2020-1-1', 1, 43.24, DEFAULT);
INSERT INTO transactions VALUES ('2020-1-3', 2, 232.53, DEFAULT);
INSERT INTO transactions VALUES ('2020-1-6', 3, 53.67, DEFAULT);
INSERT INTO transactions VALUES ('2020-4-3', 4, 65.39, DEFAULT);
INSERT INTO transactions VALUES ('2020-4-6', 1, 85.35, DEFAULT);
INSERT INTO transactions VALUES ('2020-4-19', 6, 93.67, DEFAULT);
INSERT INTO transactions VALUES ('2020-5-7', 8, 18.29, DEFAULT);
INSERT INTO transactions VALUES ('2020-6-1', 1, 648.02, DEFAULT);
INSERT INTO transactions VALUES ('2020-6-9', 5, 758.09, DEFAULT);
INSERT INTO transactions VALUES ('2020-6-17', 12, 9.89, DEFAULT);
INSERT INTO transactions VALUES ('2020-7-26', 15, 7.56, DEFAULT);
INSERT INTO transactions VALUES ('2020-7-30', 16, 12.32, DEFAULT);
INSERT INTO transactions VALUES ('2020-8-4', 19, 167.23, DEFAULT);
INSERT INTO transactions VALUES ('2020-8-5', 2, 90.62, DEFAULT);
INSERT INTO transactions VALUES ('2020-8-20', 4, 75.43, DEFAULT);
INSERT INTO transactions VALUES ('2020-9-10', 8, 23.65, DEFAULT);
INSERT INTO transactions VALUES ('2020-9-13', 11, 29.54, DEFAULT);
INSERT INTO transactions VALUES ('2020-9-21', 10, 274.56, DEFAULT);
INSERT INTO transactions VALUES ('2020-10-3', 14, 91.23, DEFAULT);
INSERT INTO transactions VALUES ('2020-10-9', 2, 80.65, DEFAULT);
INSERT INTO transactions VALUES ('2020-11-2', 9, 26.34, DEFAULT);

-- create a table for all deliveries
CREATE TABLE deliveries(time TIMESTAMP, location_id SERIAL REFERENCES locations, product_id SERIAL REFERENCES products, employee_id SERIAL REFERENCES employees);
INSERT INTO deliveries VALUES('2020-02-09 12:23:30', 1, 9, 9);
INSERT INTO deliveries VALUES('2020-02-21 8:25:05', 2, 8, 4);
INSERT INTO deliveries VALUES('2020-04-09 0:38:34', 3, 7, 2);
INSERT INTO deliveries VALUES('2020-04-24 2:46:36', 2, 3, 6);
INSERT INTO deliveries VALUES('2020-04-29 14:43:20', 4, 9, 8);
INSERT INTO deliveries VALUES('2020-05-24 9:23:59', 6, 16, 4);
INSERT INTO deliveries VALUES('2020-05-27 6:55:45', 2, 14, 2);
INSERT INTO deliveries VALUES('2020-06-03 1:41:53', 8, 13, 5);
INSERT INTO deliveries VALUES('2020-06-12 2:46:18', 16, 2, 7);
INSERT INTO deliveries VALUES('2020-06-18 18:16:18', 14, 6, 3);
INSERT INTO deliveries VALUES('2020-06-21 14:31:16', 12, 12, 10);
INSERT INTO deliveries VALUES('2020-08-06 10:34:47', 6, 15, 6);
INSERT INTO deliveries VALUES('2020-08-07 13:33:24', 2, 16, 8);
INSERT INTO deliveries VALUES('2020-08-24 9:17:57', 19, 8, 11);
INSERT INTO deliveries VALUES('2020-08-31 0:03:43', 14, 2, 17);
INSERT INTO deliveries VALUES('2020-09-19 0:06:41', 13, 3, 18);
INSERT INTO deliveries VALUES('2020-09-19 5:10:13', 16, 6, 14);
INSERT INTO deliveries VALUES('2020-09-22 22:22:58', 9, 1, 12);
INSERT INTO deliveries VALUES('2020-09-30 2:43:28', 3, 4, 16);
INSERT INTO deliveries VALUES('2020-10-06 18:18:25', 7, 8, 12);
INSERT INTO deliveries VALUES('2020-11-11 0:38:47', 1, 3, 3);

-- find lowest cost of an item/highest cost of an item in the store
SELECT MIN(retail_price) FROM products;
SELECT MAX(retail_price) FROM products;

-- find 10 oldest/newst deliveries
SELECT * FROM deliveries ORDER BY time ASC LIMIT 10;
SELECT * FROM deliveries ORDER BY time DESC LIMIT 10;

-- find deliveries to 594 Goldleaf Lane, Mount Vernon, IL, 62864 of Frozen Pizza
SELECT * FROM deliveries WHERE location_id IN (SELECT location_id FROM locations WHERE address = '594 Goldleaf Lane') AND product_id = (SELECT product_id FROM products WHERE STRPOS(name, 'Pizza') > 0);

-- find how many employees there are in total
SELECT COUNT(*) FROM employees;

-- find the average price of a product
SELECT AVG(retail_price) FROM products;

-- find employees from a specific location / find who works in store 15
SELECT name FROM employees INNER JOIN locations USING (location_id) WHERE location_id = 15;

--See what the highest transaction was for each store
SELECT location_id, MAX(amount) FROM transactions GROUP BY location_id;

-- Find employees whose names behing with a random letter and a vowel
SELECT * FROM employees WHERE name ~*'^.[a,e,i,o,u]';

--Finding locations that end with "lane"
SELECT * FROM locations WHERE address LIKE '%Lane';