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


-- table: departments


-- the end
-- FLUSH PRIVILEGES;
