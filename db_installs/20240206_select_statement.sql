-- create database guttman_202db_assign5
DROP DATABASE IF EXISTS guttman_202db_assign5;
CREATE DATABASE IF NOT EXISTS guttman_202db_assign5;
-- use command
USE guttman_202db_assign5;

-- create and populate 20pts
-- table: categories 5pts
DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- table: vendors
DROP TABLE IF EXISTS vendors;
CREATE TABLE IF NOT EXISTS vendors (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- table: region
DROP TABLE IF EXISTS region;
CREATE TABLE IF NOT EXISTS region (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- table: customer
DROP TABLE IF EXISTS customer;
CREATE TABLE IF NOT EXISTS customer (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- table: salestransaction
DROP TABLE IF EXISTS salestransaction;
CREATE TABLE IF NOT EXISTS salestransaction (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- table: soldvia
DROP TABLE IF EXISTS soldvia;
CREATE TABLE IF NOT EXISTS soldvia (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- create table products_info
CREATE TABLE IF NOT EXISTS products_info (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  vendor_id INT,
  category_id INT,
  PRIMARY KEY(id),
  FOREIGN KEY (vendor_id) REFERENCES vendors(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- create products table
DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  product_info_id INT,
  PRIMARY KEY(id),
  FOREIGN KEY (product_info_id) REFERENCES products_info(id)
);

-- populate categories table
INSERT INTO categories (name) VALUES ('CP'), ('FW');

-- populate vendors table
INSERT INTO vendors (name) VALUES ('PG'), ('MK');

-- populate region table
INSERT INTO region (name) VALUES ('');

-- populate customer table
INSERT INTO customer (name) VALUES ('');

-- populate salestransaction table
INSERT INTO salestransaction (name) VALUES ('');

-- populate soldvia table
INSERT INTO soldvia (name) VALUES ('');

-- insert data into products_info
INSERT INTO products_info (name, price, vendor_id, category_id) VALUES
('Zzz Bag', 100.00, (SELECT id FROM vendors WHERE name = 'PG'), (SELECT id FROM categories WHERE name = 'CP')),
('Easy Boot', 70.00, (SELECT id FROM vendors WHERE name = 'MK'), (SELECT id FROM categories WHERE name = 'FW')),
('Cosy Sock', 15.00, (SELECT id FROM vendors WHERE name = 'MK'), (SELECT id FROM categories WHERE name = 'FW')),
('Dura Boot', 90.00, (SELECT id FROM vendors WHERE name = 'PG'), (SELECT id FROM categories WHERE name = 'FW')),
('Tiny Tent', 150.00, (SELECT id FROM vendors WHERE name = 'MK'), (SELECT id FROM categories WHERE name = 'CP')),
('Biggy Tent', 250.00, (SELECT id FROM vendors WHERE name = 'MK'), (SELECT id FROM categories WHERE name = 'CP'));

-- FLUSH PRIVILEGES;
-- end
