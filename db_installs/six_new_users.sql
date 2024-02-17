DROP DATABASE IF EXISTS six_new_users;
CREATE DATABASE IF NOT EXISTS six_new_users;
USE six_new_users;

-- Create admin_001
DROP USER IF EXISTS 'admin_001'@'%';
CREATE USER 'admin_001'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'admin_001'@'%';
GRANT SELECT ON classicmodels.* TO 'admin_001'@'%';

-- Create admin_002
DROP USER IF EXISTS 'admin_002'@'%';
CREATE USER 'admin_002'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'admin_002'@'%';
GRANT SELECT ON classicmodels.* TO 'admin_002'@'%';

-- Create admin_003
DROP USER IF EXISTS 'admin_003'@'%';
CREATE USER 'admin_003'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'admin_003'@'%';
GRANT SELECT ON classicmodels.* TO 'admin_003'@'%';

-- create admin_004
DROP USER IF EXISTS 'admin_004'@'%';
CREATE USER 'admin_004'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'admin_004'@'%';
GRANT SELECT ON classicmodels.* TO 'admin_004'@'%';

-- create admin_005
DROP USER IF EXISTS 'admin_005'@'%';
CREATE USER 'admin_005'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'admin_005'@'%';
GRANT SELECT ON classicmodels.* TO 'admin_005'@'%';

-- create admin_006
DROP USER IF EXISTS 'admin_006'@'%';
CREATE USER 'admin_006'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

REVOKE ALL, GRANT OPTION FROM 'admin_006'@'%';
GRANT SELECT ON classicmodels.* TO 'admin_006'@'%';
-- create roles

-- create read_only_classicmodels_db role
CREATE ROLE IF NOT EXISTS read_only_classicmodels_db;

-- create admin_user role
CREATE ROLE IF NOT EXISTS admin_user;

-- create read_only_employees_db role
CREATE ROLE IF NOT EXISTS read_only_employees_db;

-- create app_user role
CREATE ROLE IF NOT EXISTS app_user;
-- grant select

-- grant select on classicmodels.* to read_only_classicmodels_db
GRANT SELECT ON classicmodels.* TO read_only_classicmodels_db;

-- grant select on employees.* to read_only_employees_db
GRANT SELECT ON employees.* TO read_only_employees_db;

-- grant create, drop on employees.* to admin_user
GRANT CREATE, DROP ON employees.* TO admin_user;

-- grant create, drop on classicmodels.* to admin_user
GRANT CREATE, DROP ON classicmodels.* TO admin_user;

-- grant show databases on *.* to admin_user
GRANT SHOW DATABASES ON *.* TO admin_user;

-- grant insert, update on employees.employees to app_user
GRANT INSERT, UPDATE ON employees.employees TO app_user;
-- grant roles to users

-- grant admin_007 to admin_006
GRANT admin_007 TO admin_006;

-- grant read_only_classicmodels_db to admin_001 and admin_003
GRANT read_only_classicmodels_db TO admin_001, admin_003;

-- grant read_only_employees_db to admin_002 and admin_004
GRANT read_only_employees_db TO admin_002, admin_004;

-- grant app_user to admin_006
GRANT app_user TO admin_006;

-- grant admin_user to admin_005
GRANT admin_user TO admin_005;

-- very last line
-- FLUSH PRIVILEGES;
-- remove FLUSH PRIVILEGES per you don’t need to run FLUSH PRIVILEGES command (this is effective for a long time already, please forget about it !),
-- https://dev.mysql.com/blog-archive/how-to-grant-privileges-to-users-in-mysql-80/
