DROP DATABASE IF EXISTS six_new_users;
CREATE DATABASE IF NOT EXISTS six_new_users;
USE six_new_users;

-- create admin_001
SELECT 'DROPPING USER admin_001' AS 'INSTALLATION STARTED';
DROP USER IF EXISTS 'admin_001'@'%';
SELECT 'ADDING USER admin_001' AS 'INSTALLATION PROGRESSING';
CREATE USER IF NOT EXISTS 'admin_001'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 900 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

SELECT user, show_db_priv, account_locked
FROM mysql.user;

SELECT 'ADDED USER admin_001' AS 'INSTALLATION COMPLETED';

-- create admin_002
SELECT 'DROPPING USER admin_002' AS 'INSTALLATION STARTED';
DROP USER IF EXISTS 'admin_002'@'%';
SELECT 'ADDING USER admin_002' AS 'INSTALLATION PROGRESSING';
CREATE USER IF NOT EXISTS 'admin_002'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 900 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

SELECT user, show_db_priv, account_locked
FROM mysql.user;

SELECT 'ADDED USER admin_002' AS 'INSTALLATION COMPLETED';

-- create admin_003
SELECT 'DROPPING USER admin_003' AS 'INSTALLATION STARTED';
DROP USER IF EXISTS 'admin_003'@'%';
SELECT 'ADDING USER admin_003' AS 'INSTALLATION PROGRESSING';
CREATE USER IF NOT EXISTS 'admin_003'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 900 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

SELECT user, show_db_priv, account_locked
FROM mysql.user;

SELECT 'ADDED USER admin_003' AS 'INSTALLATION COMPLETED';

-- create admin_004
SELECT 'DROPPING USER admin_004' AS 'INSTALLATION STARTED';
DROP USER IF EXISTS 'admin_004'@'%';
SELECT 'ADDING USER admin_004' AS 'INSTALLATION PROGRESSING';
CREATE USER IF NOT EXISTS 'admin_004'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 900 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

SELECT user, show_db_priv, account_locked
FROM mysql.user;

SELECT 'ADDED USER admin_004' AS 'INSTALLATION COMPLETED';

-- create admin_005
SELECT 'DROPPING USER admin_005' AS 'INSTALLATION STARTED';
DROP USER IF EXISTS 'admin_005'@'%';
SELECT 'ADDING USER admin_005' AS 'INSTALLATION PROGRESSING';
CREATE USER IF NOT EXISTS 'admin_005'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 900 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

SELECT user, show_db_priv, account_locked
FROM mysql.user;

SELECT 'ADDED USER admin_005' AS 'INSTALLATION COMPLETED';

-- create admin_006
SELECT 'DROPPING USER admin_006' AS 'INSTALLATION STARTED';
DROP USER IF EXISTS 'admin_006'@'%';
SELECT 'ADDING USER admin_006' AS 'INSTALLATION PROGRESSING';
CREATE USER IF NOT EXISTS 'admin_006'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED
PASSWORD EXPIRE INTERVAL 900 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY;

SELECT user, show_db_priv, account_locked
FROM mysql.user;

SELECT 'ADDED USER admin_006' AS 'INSTALLATION COMPLETED';

-- create 4 roles read_only_classicmodels_db, admin_user, read_only_employees_db, and app_user
DROP ROLE
'read_only_classicmodels_db'@'localhost',
'admin_user'@'localhost',
'read_only_employees_db'@'localhost',
'app_user'@'localhost';

CREATE ROLE IF NOT EXISTS
'read_only_classicmodels_db'@'localhost',
'admin_user'@'localhost',
'read_only_employees_db'@'localhost',
'app_user'@'localhost';

-- grant the following privileges to the newly created roles
REVOKE read_only_classicmodels_db, admin_user, read_only_employees_db, app_user FROM admin_001, admin_002, admin_003, admin_004, admin_005, admin_006;

-- GRANT SELECT ON
GRANT SELECT ON classicmodels.* TO read_only_classicmodels_db;
GRANT SELECT ON employees.* TO read_only_employees_db;
-- GRANT CREATE, DROP ON
GRANT CREATE, DROP ON employees.* TO admin_user;
GRANT CREATE, DROP ON classicmodels.* TO admin_user;
-- GRANT SHOW DATABASES ON
GRANT SHOW DATABASES ON *.* TO admin_user;
-- GRANT INSERT, UPDATE ON
GRANT INSERT, UPDATE ON employees.employees TO app_user;

-- grant roles to users
GRANT 'admin_007' TO 'admin_006'@'%';
GRANT 'read_only_classicmodels_db' TO 'admin_001'@'%', 'admin_003'@'%';
GRANT 'read_only_employees_db' TO 'admin_002'@'%', 'admin_004'@'%';
GRANT 'app_user' TO 'admin_006'@'%';
GRANT 'admin_user' TO 'admin_005'@'%';

FLUSH PRIVILEGES;
-- remove FLUSH PRIVILEGES per you don’t need to run FLUSH PRIVILEGES command (this is effective for a long time already, please forget about it !),
-- https://dev.mysql.com/blog-archive/how-to-grant-privileges-to-users-in-mysql-80/
-- Reloading the grant tables is necessary to enable updates to MySQL privileges and users only if you make such changes directly to the grant tables; it is not needed for account management statements such as GRANT or REVOKE, which take effect immediately. See Section 8.2.13, “When Privilege Changes Take Effect”, for more information https://dev.mysql.com/doc/refman/8.3/en/privilege-changes.html

-- end
