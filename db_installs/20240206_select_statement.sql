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

-- FLUSH PRIVILEGES;
-- end