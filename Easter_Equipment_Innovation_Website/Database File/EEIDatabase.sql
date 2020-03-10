CREATE DATABASE eei_db;
USE eei_db;
CREATE TABLE users (
  email VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL); 
INSERT INTO users (email, password) VALUES ('Admin@gmail.com', '12345');
INSERT INTO users (email, password) VALUES ('Ted@yahoo.com', '54321');

CREATE TABLE products (
  itemNumber INT AUTO_INCREMENT PRIMARY KEY,
  itemname VARCHAR(20) NOT NULL,
  description VARCHAR(200) NOT NULL,
  price DOUBLE NOT NULL,
  image VARCHAR(100) NOT NULL);
  
INSERT INTO products (itemname, description, price, image) VALUES ('Tire Remover', 'This product helps remove the tires off a rim', 799.99, 'img/pic1.jpg');
INSERT INTO products (itemname, description, price, image) VALUES ('Lift Kit', 'This product helps lift the vehicle for alignment changes', 1999.99, 'img/pic2.jpg');
INSERT INTO products (itemname, description, price, image) VALUES ('Tire Remover Grip', 'This product helps grip the tire for easy removal', 299.99, 'img/pic3.jpg');
INSERT INTO products (itemname, description, price, image) VALUES ('Tire Remover Kit', 'This product is the full kit for tire removal', 1299.99, 'img/pic4.jpg');
INSERT INTO products (itemname, description, price, image) VALUES ('Full Alignment Kit', 'This product is the full kit for tire alighment, removal, and balacing', 3499.99, 'img/pic5.jpg');
INSERT INTO products (itemname, description, price, image) VALUES ('Support Jacks', 'This product helps support the cars suspension while aligning vehicle', 199.99, 'img/pic7.jpg');
INSERT INTO products (itemname, description, price, image) VALUES ('Mobile Truck', 'This product is the truck with alignment equipment', 12999.99, 'img/pic8.jpg');  