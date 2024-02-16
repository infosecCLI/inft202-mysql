DROP DATABASE IF EXISTS create_three_users;
CREATE DATABASE IF NOT EXISTS create_three_users;
USE create_three_users;

-- create rt_user
-- check if rt_user exists and drop if it does
SELECT 'DROPPING USER rt_user' AS 'INSTALLATION STARTED';

DROP USER IF EXISTS 'rt_user'@'%';

SELECT 'ADDING USER rt_user' AS 'INSTALLATION PROGRESSING';

CREATE USER 'rt_user'@'%'
IDENTIFIED BY 'super_secret_password_911'
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY
FAILED_LOGIN_ATTEMPTS 0
PASSWORD_LOCK_TIME 0;

-- revoke all privileges and grant option from 'rt_user'@'localhost'
REVOKE ALL, GRANT OPTION FROM 'rt_user'@'%';

-- grant ALL privileges on *.* to 'rt_user'@'localhost'
GRANT ALL ON *.* TO 'rt_user'@'localhost';

-- select specific columns from mysql.user table
SELECT user, show_db_priv, account_locked
FROM mysql.user;

-- return informational message that indicates completion of user addition
SELECT 'Completed adding rt_user' AS 'INSTALLATION DONE';

-- flush privileges to ensure changes take effect immediately
FLUSH PRIVILEGES;

-- create brt_user
-- check if brt_user exists and drop if it does
SELECT 'DROPPING USER brt_user' AS 'INSTALLATION STARTED';

DROP USER IF EXISTS 'brt_user'@'%';

SELECT 'ADDING USER brt_user' AS 'INSTALLATION PROGRESSING';

CREATE USER 'brt_user'@'%'
IDENTIFIED BY 'super_secret_password_911'
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY 5
PASSWORD REUSE INTERVAL 365 DAY
FAILED_LOGIN_ATTEMPTS 0
PASSWORD_LOCK_TIME 0;

-- revoke all privileges and grant option from 'brt_user'@'localhost'
REVOKE ALL, GRANT OPTION FROM 'brt_user'@'localhost';

-- grant ALL privileges on *.* to 'brt_user'@'localhost'
GRANT ALL ON *.* TO 'brt_user'@'localhost';

-- return an informational message which indicates completion of installation
SELECT 'COMPLETED' AS 'INSTALLATION DONE';

-- select specific columns from mysql.user table
SELECT user, host, show_db_priv, account_locked
FROM mysql.user;

-- flush privileges to ensure changes take effect immediately
FLUSH PRIVILEGES;

-- create admin_007
SELECT 'DROPPING USER admin_007' AS 'INSTALLATION STARTED';

DROP USER IF EXISTS 'admin_007'@'localhost';

SELECT 'ADDING USER admin_007' AS 'INSTALLATION PROGRESSING';

CREATE USER 'admin_007'@'%'
IDENTIFIED BY 'guttmanGrizzlies_2024'
PASSWORD EXPIRE INTERVAL 90 DAY
PASSWORD HISTORY IDENTIFIED 5
PASSWORD REUSE INTERVAL 365 DAY
FAILED_LOGIN_ATTEMPTS 4
PASSWORD_LOCK_TIME UNBOUNDED;

-- revoke all privileges and grant option from 'admin_007'@'%'
REVOKE ALL, GRANT OPTION FROM 'admin_007'@'%';

-- select specific columns from mysql.user table
SELECT user, show_db_priv, account_locked
FROM mysql.user;

-- return an informational message to indicate completion of user addition
SELECT 'ADDED USER admin_007' AS 'INSTALLATION COMPLETED';

-- grant SELECT privilege on classicmodels.* to 'admin_007'@'%'
GRANT SELECT ON classicmodels.* TO 'admin_007'@'%';

-- very last line
FLUSH PRIVILEGES;
