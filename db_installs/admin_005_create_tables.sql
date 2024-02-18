-- create database admin_005_create_tables
DROP DATABASE IF EXISTS admin_005_create_tables;
CREATE DATABASE IF NOT EXISTS admin_005_create_tables;
USE admin_005_create_tables;

-- create 20pts
-- table: categories
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

-- table: products
DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- table: departments
DROP TABLE IF EXISTS departments;
CREATE TABLE IF NOT EXISTS departments (
  id INT AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

-- Add productCode column to products table
ALTER TABLE products
ADD COLUMN productCode VARCHAR(10);

-- Update productCode column with sample values
UPDATE products
SET productCode = CONCAT('PC', LPAD(id, 3, '0'));

-- Insert example records into the products table
INSERT INTO products (name, productCode)
VALUES
    ('Product 1', 'PC001'),
    ('Product 2', 'PC002'),
    ('Product 3', 'PC003'),
    ('Product 4', 'PC004'),
    ('Product 5', 'PC005');

-- Display the updated products table
SELECT * FROM products;


-- the end
-- FLUSH PRIVILEGES;
