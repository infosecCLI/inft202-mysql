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



-- FLUSH PRIVILEGES;
-- end
