-- ACTIVITY PREPARATION --

-- Importing classic-models-exports.sql in phpMyAdmin:
-- 1. Go to http://localhost/phpmyadmin/index.php?route=/server/import
-- 2. Click "Choose File" Button, look for the "classic-models-exports.sql" then click open.
-- 3. Make sure to untoggle the "Enable foreign key checks" under the "Other options" group.
-- 4. Click the import button and once done, check your database tab if the "classic_models" is added.

-- CREATE THE QUERY FOR THE FOLLOWING ITEMS USING THE CLASSIC_MODELS DB: --

-- 1. Return the customerName of the customers who are from the Philippines
-- Solution Here:

SELECT customerName FROM customers WHERE country = "Philippines";

-- Expected Output:
-- +-----------------+
-- | customerName    |
-- +-----------------+
-- | Cruz & Sons Co. |
-- +-----------------+

-- 2. Return the contactLastName and contactFirstName of customers with name "La Rochelle Gifts"
-- Solution Here:

SELECT contactLastName, contactFirstName FROM customers WHERE customerName = "La Rochelle Gifts"; 

-- Expected Output:
-- +-----------------+------------------+
-- | contactLastName | contactFirstName |
-- +-----------------+------------------+
-- | Labrune         | Janine           |
-- +-----------------+------------------+

-- 3. Return the product name and MSRP of the product named "The Titanic"
-- Solution Here:
SELECT productName, MSRP FROM products WHERE productName = "The Titanic";


-- Expected Output:
-- +-------------+--------+
-- | productName | MSRP   |
-- +-------------+--------+
-- | The Titanic | 100.17 |
-- +-------------+--------+

-- 4. Return the first and last name of the employee whose email is "jfirrelli@classicmodelcars.com"
-- Solution Here:
SELECT firstName, lastName FROM employees WHERE email = "jfirrelli@classicmodelcars.com";


-- Expected Output:
-- +----------+-----------+
-- | lastName | firstName |
-- +----------+-----------+
-- | Firrelli | Jeff      |
-- | Firrelli | Julie     |
-- +----------+-----------+

-- 5. Return the names of customers who have no registered state
-- Solution Here:
SELECT customerName FROM customers WHERE state IS null;


-- Expected Output:
-- +------------------------------------+
-- | customerName                       |
-- +------------------------------------+
-- | Atelier graphique                  |
-- | La Rochelle Gifts                  |
-- | Baane Mini Imports                 |
-- | Havel & Zbyszek Co                 |
-- | Blauer See Auto, Co.               |
-- | Euro+ Shopping Channel             |
-- | Volvo Model Replicas, Co           |
-- | Danish Wholesale Imports           |
-- | Saveley & Henriot, Co.             |
-- | Dragon Souveniers, Ltd.            |
-- | Handji Gifts& Co                   |
-- | Herkku Gifts                       |
-- | Porto Imports Co.                  |
-- | Daedalus Designs Imports           |
-- | La Corne D'abondance, Co.          |
-- | Toys of Finland, Co.               |
-- | AV Stores, Co.                     |
-- | Clover Collections, Co.            |
-- | UK Collectables, Ltd.              |
-- | Asian Shopping Network, Co         |
-- | Mini Caravy                        |
-- | King Kong Collectables, Co.        |
-- | Enaco Distributors                 |
-- | Natürlich Autos                    |
-- | Heintze Collectables               |
-- | ANG Resellers                      |
-- | Alpha Cognac                       |
-- | Messner Shopping Network           |
-- | Amica Models & Co.                 |
-- | Lyon Souveniers                    |
-- | Auto Associés & Cie.               |
-- | Toms Spezialitäten, Ltd            |
-- | Franken Gifts, Co                  |
-- | Rovelli Gifts                      |
-- | BG&E Collectables                  |
-- | Vida Sport, Ltd                    |
-- | Norway Gifts By Mail, Co.          |
-- | Schuyler Imports                   |
-- | Der Hund Imports                   |
-- | Oulu Toy Supplies, Inc.            |
-- | Petit Auto                         |
-- | Down Under Souveniers, Inc         |
-- | Stylish Desk Decors, Co.           |
-- | Suominen Souveniers                |
-- | Cramer Spezialitäten, Ltd          |
-- | CAF Imports                        |
-- | Marseille Mini Autos               |
-- | Reims Collectables                 |
-- | GiftsForHim.com                    |
-- | Kommission Auto                    |
-- | Lisboa Souveniers, Inc             |
-- | Precious Collectables              |
-- | Royale Belge                       |
-- | Salzburg Collectables              |
-- | Cruz & Sons Co.                    |
-- | L'ordine Souveniers                |
-- | Auto Canal+ Petit                  |
-- | Stuttgart Collectable Exchange     |
-- | Extreme Desk Decorations, Ltd      |
-- | Bavarian Collectables Imports, Co. |
-- | Feuer Online Stores, Inc           |
-- | Scandinavian Gift Ideas            |
-- | Mini Auto Werke                    |
-- | Corrida Auto Replicas, Ltd         |
-- | Warburg Exchange                   |
-- | Anton Designs, Ltd.                |
-- | Frau da Collezione                 |
-- | Mit Vergnügen & Co.                |
-- | Kremlin Collectables, Co.          |
-- | Raanan Stores, Inc                 |
-- | Iberia Gift Imports, Corp.         |
-- | Double Decker Gift Stores, Ltd     |
-- | Kelly's Gift Shop                  |
-- +------------------------------------+

-- 6. Return the first name, last name, email of the employee whose last name is Patterson and first name is Steve
-- Solution Here:
SELECT firstName, lastName, email FROM employees WHERE firstName = "Steve" AND lastName = "Patterson";

-- Expected Output:
-- +-----------+-----------+---------------------------------+
-- | lastName  | firstName | email                           |
-- +-----------+-----------+---------------------------------+
-- | Patterson | Steve     | spatterson@classicmodelcars.com |
-- +-----------+-----------+---------------------------------+

-- 7. Return customer name, country, and credit limit of customers whose countries are NOT USA and whose credit limits are greater than 3000
-- Solution Here:
SELECT customerName, country, creditLimit FROM customers WHERE country != 'USA' AND creditLimit > 3000;

-- Expected Output:
-- +------------------------------------+-------------+-------------+
-- | customerName                       | country     | creditLimit |
-- +------------------------------------+-------------+-------------+
-- | Atelier graphique                  | France      |    21000.00 |
-- | Australian Collectors, Co.         | Australia   |   117300.00 |
-- | La Rochelle Gifts                  | France      |   118200.00 |
-- | Baane Mini Imports                 | Norway      |    81700.00 |
-- | Blauer See Auto, Co.               | Germany     |    59700.00 |
-- | Euro+ Shopping Channel             | Spain       |   227600.00 |
-- | Volvo Model Replicas, Co           | Sweden      |    53100.00 |
-- | Danish Wholesale Imports           | Denmark     |    83400.00 |
-- | Saveley & Henriot, Co.             | France      |   123900.00 |
-- | Dragon Souveniers, Ltd.            | Singapore   |   103800.00 |
-- | Handji Gifts& Co                   | Singapore   |    97900.00 |
-- | Herkku Gifts                       | Norway      |    96800.00 |
-- | Daedalus Designs Imports           | France      |    82900.00 |
-- | La Corne D'abondance, Co.          | France      |    84300.00 |
-- | Osaka Souveniers Co.               | Japan       |    81200.00 |
-- | Toys of Finland, Co.               | Finland     |    96500.00 |
-- | AV Stores, Co.                     | UK          |   136800.00 |
-- | Clover Collections, Co.            | Ireland     |    69400.00 |
-- | UK Collectables, Ltd.              | UK          |    92700.00 |
-- | Canadian Gift Exchange Network     | Canada      |    90300.00 |
-- | Mini Caravy                        | France      |    53800.00 |
-- | King Kong Collectables, Co.        | Hong Kong   |    58600.00 |
-- | Enaco Distributors                 | Spain       |    60300.00 |
-- | Heintze Collectables               | Denmark     |   120800.00 |
-- | Québec Home Shopping Network       | Canada      |    48700.00 |
-- | giftsbymail.co.uk                  | UK          |    93900.00 |
-- | Alpha Cognac                       | France      |    61100.00 |
-- | Amica Models & Co.                 | Italy       |   113000.00 |
-- | Lyon Souveniers                    | France      |    68100.00 |
-- | Auto Associés & Cie.               | France      |    77900.00 |
-- | Toms Spezialitäten, Ltd            | Germany     |   120400.00 |
-- | Royal Canadian Collectables, Ltd.  | Canada      |    89600.00 |
-- | Anna's Decorations, Ltd            | Australia   |   107800.00 |
-- | Rovelli Gifts                      | Italy       |   119600.00 |
-- | Souveniers And Things Co.          | Australia   |    93300.00 |
-- | Vida Sport, Ltd                    | Switzerland |   141300.00 |
-- | Norway Gifts By Mail, Co.          | Norway      |    95100.00 |
-- | Oulu Toy Supplies, Inc.            | Finland     |    90500.00 |
-- | Petit Auto                         | Belgium     |    79900.00 |
-- | Down Under Souveniers, Inc         | New Zealand |    88000.00 |
-- | Stylish Desk Decors, Co.           | UK          |    77000.00 |
-- | Australian Gift Network, Co        | Australia   |    51600.00 |
-- | Suominen Souveniers                | Finland     |    98800.00 |
-- | CAF Imports                        | Spain       |    59600.00 |
-- | Marseille Mini Autos               | France      |    65000.00 |
-- | Reims Collectables                 | France      |    81100.00 |
-- | GiftsForHim.com                    | New Zealand |    77700.00 |
-- | Royale Belge                       | Belgium     |    23500.00 |
-- | Salzburg Collectables              | Austria     |    71700.00 |
-- | Cruz & Sons Co.                    | Philippines |    81500.00 |
-- | L'ordine Souveniers                | Italy       |   121400.00 |
-- | Tokyo Collectables, Ltd            | Japan       |    94400.00 |
-- | Auto Canal+ Petit                  | France      |    95000.00 |
-- | Extreme Desk Decorations, Ltd      | New Zealand |    86800.00 |
-- | Bavarian Collectables Imports, Co. | Germany     |    77000.00 |
-- | Scandinavian Gift Ideas            | Sweden      |   116400.00 |
-- | Mini Auto Werke                    | Austria     |    45300.00 |
-- | Corrida Auto Replicas, Ltd         | Spain       |   104600.00 |
-- | Australian Collectables, Ltd       | Australia   |    60300.00 |
-- | Frau da Collezione                 | Italy       |    34800.00 |
-- | Iberia Gift Imports, Corp.         | Spain       |    65700.00 |
-- | Double Decker Gift Stores, Ltd     | UK          |    43300.00 |
-- | Kelly's Gift Shop                  | New Zealand |   110000.00 |
-- +------------------------------------+-------------+-------------+

-- 8. Return the customer numbers of orders whose comments contain the string 'DHL'
-- Solution Here:
SELECT customerNumber FROM orders WHERE comments LIKE "%DHL%";

-- Expected Output:
-- +----------------+
-- | customerNumber |
-- +----------------+
-- |            323 |
-- |            456 |
-- |            172 |
-- |            141 |
-- |            450 |
-- |            175 |
-- +----------------+

-- 9. Return the product lines whose text description mentions the phrase 'state of the art'
-- Solution Here:
SELECT productLine FROM productlines WHERE textdescription LIKE "%state_of_the_art%";

-- Expected Output:
-- +-------------+
-- | productLine |
-- +-------------+
-- | Motorcycles |
-- +-------------+

-- 10. Return the countries of customers without duplication
-- Solution Here:
SELECT DISTINCT country FROM customers;

-- Expected Output:
-- +--------------+
-- | country      |
-- +--------------+
-- | France       |
-- | USA          |
-- | Australia    |
-- | Norway       |
-- | Poland       |
-- | Germany      |
-- | Spain        |
-- | Sweden       |
-- | Denmark      |
-- | Singapore    |
-- | Portugal     |
-- | Japan        |
-- | Finland      |
-- | UK           |
-- | Ireland      |
-- | Canada       |
-- | Hong Kong    |
-- | Italy        |
-- | Switzerland  |
-- | Netherlands  |
-- | Belgium      |
-- | New Zealand  |
-- | South Africa |
-- | Austria      |
-- | Philippines  |
-- | Russia       |
-- | Israel       |
-- +--------------+

-- 11. Return the statuses of orders without duplication
-- Solution Here:
SELECT DISTINCT status FROM orders;

-- Expected Output:
-- +------------+
-- | status     |
-- +------------+
-- | Shipped    |
-- | Resolved   |
-- | Cancelled  |
-- | On Hold    |
-- | Disputed   |
-- | In Process |
-- +------------+

-- 12. Return the customer names and countries of customers whose country is USA, France, or Canada
-- Solution Here:
SELECT customerName, country FROM customers WHERE country IN ('USA', 'France', 'Canada');

-- Expected Output:
-- +-----------------------------------+
-- | customerName                      |
-- +-----------------------------------+
-- | Atelier graphique                 |
-- | Signal Gift Stores                |
-- | La Rochelle Gifts                 |
-- | Mini Gifts Distributors Ltd.      |
-- | Mini Wheels Co.                   |
-- | Land of Toys Inc.                 |
-- | Saveley & Henriot, Co.            |
-- | Muscle Machine Inc                |
-- | Diecast Classics Inc.             |
-- | Technics Stores Inc.              |
-- | American Souvenirs Inc            |
-- | Daedalus Designs Imports          |
-- | La Corne D'abondance, Co.         |
-- | Cambridge Collectables Co.        |
-- | Gift Depot Inc.                   |
-- | Vitachrome Inc.                   |
-- | Auto-Moto Classics Inc.           |
-- | Canadian Gift Exchange Network    |
-- | Online Mini Collectables          |
-- | Toys4GrownUps.com                 |
-- | Mini Caravy                       |
-- | Boards & Toys Co.                 |
-- | Québec Home Shopping Network      |
-- | Collectable Mini Designs Co.      |
-- | Alpha Cognac                      |
-- | Lyon Souveniers                   |
-- | Auto Associés & Cie.              |
-- | Royal Canadian Collectables, Ltd. |
-- | Marta's Replicas Co.              |
-- | Mini Classics                     |
-- | Mini Creations Ltd.               |
-- | Corporate Gift Ideas Co.          |
-- | Tekni Collectables Inc.           |
-- | Classic Gift Ideas, Inc           |
-- | Men 'R' US Retailers, Ltd.        |
-- | Marseille Mini Autos              |
-- | Reims Collectables                |
-- | Gifts4AllAges.com                 |
-- | Online Diecast Creations Co.      |
-- | Collectables For Less Inc.        |
-- | Auto Canal+ Petit                 |
-- | Classic Legends Inc.              |
-- | Gift Ideas Corp.                  |
-- | The Sharp Gifts Warehouse         |
-- | Super Scale Inc.                  |
-- | Microscale Inc.                   |
-- | FunGiftIdeas.com                  |
-- | West Coast Collectables Co.       |
-- | Motor Mint Distributors Inc.      |
-- | Signal Collectibles Ltd.          |
-- | Diecast Collectables              |
-- +-----------------------------------+

-- 13. Return the first name, last name, and office's city of employees whose offices are in Tokyo
-- Solution Here:

SELECT employees.firstName, employees.lastName, offices.city FROM employees
INNER JOIN offices on employees.officeCode = offices.officeCode
WHERE city = "tokyo"


-- Expected Output:
-- +--------------+-------+
-- | FullName     | city  |
-- +--------------+-------+
-- | Mami Nishi   | Tokyo |
-- | Yoshimi Kato | Tokyo |
-- +--------------+-------+

-- 14. Return the customer names of customers who were served by the employee named "Leslie Thompson"
-- Solution Here:

SELECT 
    customers.customerName 
FROM 
    customers
INNER JOIN 
    employees ON customers.salesRepEmployeeNumber = employees.employeeNumber
	WHERE employeeNumber = 1166;



-- Expected Output:
-- +------------------------------+
-- | customerName                 |
-- +------------------------------+
-- | Signal Gift Stores           |
-- | Toys4GrownUps.com            |
-- | Boards & Toys Co.            |
-- | Collectable Mini Designs Co. |
-- | Men 'R' US Retailers, Ltd.   |
-- | West Coast Collectables Co.  |
-- +------------------------------+

-- 15. Return the product names and customer name of products ordered by "Baane Mini Imports"
-- Solution Here:
SELECT 
customers.customerName, products.productName 
FROM customers
INNER JOIN
orders ON customers.customerNumber = orders.customerNumber
INNER JOIN 
orderdetails ON orders.orderNumber = orderdetails.orderNumber
INNER JOIN 
products ON orderdetails.productCode = products.productCode
WHERE customerName = "Baane Mini Imports";

-- Expected Output:
-- +---------------------------------------------+
-- | productName                                 |
-- +---------------------------------------------+
-- | 1952 Alpine Renault 1300                    |
-- | 1962 LanciaA Delta 16V                      |
-- | 1958 Setra Bus                              |
-- | 1940 Ford Pickup Truck                      |
-- | 1926 Ford Fire Engine                       |
-- | 1913 Ford Model T Speedster                 |
-- | 1934 Ford V8 Coupe                          |
-- | 18th Century Vintage Horse Carriage         |
-- | 1917 Maxwell Touring Car                    |
-- | 1940s Ford truck                            |
-- | 1939 Cadillac Limousine                     |
-- | 1962 Volkswagen Microbus                    |
-- | 1936 Chrysler Airflow                       |
-- | 1980?s GM Manhattan Express                 |
-- | 1996 Peterbilt 379 Stake Bed with Outrigger |
-- | 1982 Camaro Z28                             |
-- | 1960 BSA Gold Star DBD34                    |
-- | 1969 Harley Davidson Ultimate Chopper       |
-- | 2002 Suzuki XREO                            |
-- | 1997 BMW R 1100 S                           |
-- | 1982 Ducati 900 Monster                     |
-- | 1974 Ducati 350 Mk3 Desmo                   |
-- | 2002 Yamaha YZR M1                          |
-- | 1972 Alfa Romeo GTA                         |
-- | 2001 Ferrari Enzo                           |
-- | 1969 Ford Falcon                            |
-- | 1903 Ford Model A                           |
-- | 1992 Porsche Cayenne Turbo Silver           |
-- | 1954 Greyhound Scenicruiser                 |
-- | 1950's Chicago Surface Lines Streetcar      |
-- | Diamond T620 Semi-Skirted Tanker            |
-- | 1962 City of Detroit Streetcar              |
-- +---------------------------------------------+

-- 16. Return the number of customers in the UK
-- Solution Here:
SELECT COUNT(DISTINCT country) from customers WHERE country = "UK";


-- Expected Output:
-- +---------------------+
-- | COUNT(customerName) |
-- +---------------------+
-- |                   5 |
-- +---------------------+

-- 17. Return the product name and quantity in stock of products that belong to the product line "planes" with stock quantities less than 1000
-- Solution Here:
SELECT productName, quantityInStock FROM products WHERE productLine = "planes" AND quantityInStock < 1000;

-- Expected Output:
-- +--------------------+-----------------+
-- | productName        | quantityInStock |
-- +--------------------+-----------------+
-- | P-51-D Mustang     |             992 |
-- | F/A 18 Hornet 1/72 |             551 |
-- +--------------------+-----------------+

-- 18. Show the customer's name with a phone number containing "+81".
-- Solution Here:
SELECT customerName FROM customers WHERE phone LIKE "+81%";

-- Expected Output:
-- +-------------------------+------------------+
-- | customerName            | phone            |
-- +-------------------------+------------------+
-- | Osaka Souveniers Co.    | +81 06 6342 5555 |
-- | Tokyo Collectables, Ltd | +81 3 3584 0555  |
-- +-------------------------+------------------+

-- 19. Find all customers from US and display the customerNumber, customerName,, city, state, and country.
-- Solution Here:
SELECT customerNumber, customerName, city, state, country FROM customers WHERE country = "USA";

-- Expected Output:
-- +----------------+------------------------------+---------------+-------+---------+
-- | customerNumber | customerName                 | city          | state | country |
-- +----------------+------------------------------+---------------+-------+---------+
-- |            112 | Signal Gift Stores           | Las Vegas     | NV    | USA     |
-- |            124 | Mini Gifts Distributors Ltd. | San Rafael    | CA    | USA     |
-- |            129 | Mini Wheels Co.              | San Francisco | CA    | USA     |
-- |            131 | Land of Toys Inc.            | NYC           | NY    | USA     |
-- |            151 | Muscle Machine Inc           | NYC           | NY    | USA     |
-- |            157 | Diecast Classics Inc.        | Allentown     | PA    | USA     |
-- |            161 | Technics Stores Inc.         | Burlingame    | CA    | USA     |
-- |            168 | American Souvenirs Inc       | New Haven     | CT    | USA     |
-- |            173 | Cambridge Collectables Co.   | Cambridge     | MA    | USA     |
-- |            175 | Gift Depot Inc.              | Bridgewater   | CT    | USA     |
-- |            181 | Vitachrome Inc.              | NYC           | NY    | USA     |
-- |            198 | Auto-Moto Classics Inc.      | Brickhaven    | MA    | USA     |
-- |            204 | Online Mini Collectables     | Brickhaven    | MA    | USA     |
-- |            205 | Toys4GrownUps.com            | Pasadena      | CA    | USA     |
-- |            219 | Boards & Toys Co.            | Glendale      | CA    | USA     |
-- |            239 | Collectable Mini Designs Co. | San Diego     | CA    | USA     |
-- |            286 | Marta's Replicas Co.         | Cambridge     | MA    | USA     |
-- |            319 | Mini Classics                | White Plains  | NY    | USA     |
-- |            320 | Mini Creations Ltd.          | New Bedford   | MA    | USA     |
-- |            321 | Corporate Gift Ideas Co.     | San Francisco | CA    | USA     |
-- |            328 | Tekni Collectables Inc.      | Newark        | NJ    | USA     |
-- |            339 | Classic Gift Ideas, Inc      | Philadelphia  | PA    | USA     |
-- |            347 | Men 'R' US Retailers, Ltd.   | Los Angeles   | CA    | USA     |
-- |            362 | Gifts4AllAges.com            | Boston        | MA    | USA     |
-- |            363 | Online Diecast Creations Co. | Nashua        | NH    | USA     |
-- |            379 | Collectables For Less Inc.   | Brickhaven    | MA    | USA     |
-- |            424 | Classic Legends Inc.         | NYC           | NY    | USA     |
-- |            447 | Gift Ideas Corp.             | Glendale      | CT    | USA     |
-- |            450 | The Sharp Gifts Warehouse    | San Jose      | CA    | USA     |
-- |            455 | Super Scale Inc.             | New Haven     | CT    | USA     |
-- |            456 | Microscale Inc.              | NYC           | NY    | USA     |
-- |            462 | FunGiftIdeas.com             | New Bedford   | MA    | USA     |
-- |            475 | West Coast Collectables Co.  | Burbank       | CA    | USA     |
-- |            486 | Motor Mint Distributors Inc. | Philadelphia  | PA    | USA     |
-- |            487 | Signal Collectibles Ltd.     | Brisbane      | CA    | USA     |
-- |            495 | Diecast Collectables         | Boston        | MA    | USA     |
-- +----------------+------------------------------+---------------+-------+---------+

-- 20. Show the list of the customer's countries (without duplicates).
-- Solution Here:
SELECT DISTINCT country FROM customers;

-- Expected Output:
-- +--------------+
-- | country      |
-- +--------------+
-- | France       |
-- | USA          |
-- | Australia    |
-- | Norway       |
-- | Poland       |
-- | Germany      |
-- | Spain        |
-- | Sweden       |
-- | Denmark      |
-- | Singapore    |
-- | Portugal     |
-- | Japan        |
-- | Finland      |
-- | UK           |
-- | Ireland      |
-- | Canada       |
-- | Hong Kong    |
-- | Italy        |
-- | Switzerland  |
-- | Netherlands  |
-- | Belgium      |
-- | New Zealand  |
-- | South Africa |
-- | Austria      |
-- | Philippines  |
-- | Russia       |
-- | Israel       |
-- +--------------+

-- 21. Add and commit changes to your individual repo.
-- 22. Push to git with the commit message of “Added activity code s05”.
-- 23. Add the link in Boodle for s05.

-- Stretch Goals

-- 1. Return the customer names of customers whose customer names don't have 'a' in them
-- Solution Here:


-- Expected Output:
-- +--------------------------------+
-- | customerName                   |
-- +--------------------------------+
-- | Mini Gifts Distributors Ltd.   |
-- | Mini Wheels Co.                |
-- | Technics Stores Inc.           |
-- | Herkku Gifts                   |
-- | Porto Imports Co.              |
-- | Gift Depot Inc.                |
-- | Clover Collections, Co.        |
-- | Toys4GrownUps.com              |
-- | Québec Home Shopping Network   |
-- | Messner Shopping Network       |
-- | Lyon Souveniers                |
-- | Rovelli Gifts                  |
-- | Schuyler Imports               |
-- | Der Hund Imports               |
-- | Oulu Toy Supplies, Inc.        |
-- | Down Under Souveniers, Inc     |
-- | Stylish Desk Decors, Co.       |
-- | Suominen Souveniers            |
-- | GiftsForHim.com                |
-- | Cruz & Sons Co.                |
-- | L'ordine Souveniers            |
-- | Feuer Online Stores, Inc       |
-- | Mit Vergnügen & Co.            |
-- | Motor Mint Distributors Inc.   |
-- | Double Decker Gift Stores, Ltd |
-- | Kelly's Gift Shop              |
-- +--------------------------------+

-- 2. Return the last names and first names of employees being supervised by "Anthony Bow"
-- Solution Here:


-- Expected Output:
-- +-----------+-----------+----------+-----------+
-- | lastName  | firstName | lastName | firstName |
-- +-----------+-----------+----------+-----------+
-- | Jennings  | Leslie    | Bow      | Anthony   |
-- | Thompson  | Leslie    | Bow      | Anthony   |
-- | Firrelli  | Julie     | Bow      | Anthony   |
-- | Patterson | Steve     | Bow      | Anthony   |
-- | Tseng     | Foon Yue  | Bow      | Anthony   |
-- | Vanauf    | George    | Bow      | Anthony   |
-- +-----------+-----------+----------+-----------+


-- Expected Output:
-- +-----------+-----------+
-- | lastName  | firstName |
-- +-----------+-----------+
-- | Jennings  | Leslie    |
-- | Thompson  | Leslie    |
-- | Firrelli  | Julie     |
-- | Patterson | Steve     |
-- | Tseng     | Foon Yue  |
-- | Vanauf    | George    |
-- +-----------+-----------+

-- 3. Return the product name and MSRP of the product with the highest MSRP
-- Solution Here:


-- Expected Output:
-- +--------------------------+
-- | productName              |
-- +--------------------------+
-- | 1952 Alpine Renault 1300 |
-- +--------------------------+

-- 4. Return the employees' first names, employees' last names, customers' names, and offices' countries of transactions whose customers and offices are in the same country
-- Solution Here:


-- Expected Output:
-- +-----------+-----------+--------------------------------+-----------+
-- | firstName | lastName  | customerName                   | country   |
-- +-----------+-----------+--------------------------------+-----------+
-- | Leslie    | Jennings  | Mini Gifts Distributors Ltd.   | USA       |
-- | Leslie    | Jennings  | Mini Wheels Co.                | USA       |
-- | Leslie    | Jennings  | Technics Stores Inc.           | USA       |
-- | Leslie    | Jennings  | Corporate Gift Ideas Co.       | USA       |
-- | Leslie    | Jennings  | The Sharp Gifts Warehouse      | USA       |
-- | Leslie    | Jennings  | Signal Collectibles Ltd.       | USA       |
-- | Leslie    | Thompson  | Signal Gift Stores             | USA       |
-- | Leslie    | Thompson  | Toys4GrownUps.com              | USA       |
-- | Leslie    | Thompson  | Boards & Toys Co.              | USA       |
-- | Leslie    | Thompson  | Collectable Mini Designs Co.   | USA       |
-- | Leslie    | Thompson  | Men 'R' US Retailers, Ltd.     | USA       |
-- | Leslie    | Thompson  | West Coast Collectables Co.    | USA       |
-- | Julie     | Firrelli  | Cambridge Collectables Co.     | USA       |
-- | Julie     | Firrelli  | Online Mini Collectables       | USA       |
-- | Julie     | Firrelli  | Mini Creations Ltd.            | USA       |
-- | Julie     | Firrelli  | Classic Gift Ideas, Inc        | USA       |
-- | Julie     | Firrelli  | Collectables For Less Inc.     | USA       |
-- | Julie     | Firrelli  | Diecast Collectables           | USA       |
-- | Steve     | Patterson | Diecast Classics Inc.          | USA       |
-- | Steve     | Patterson | Auto-Moto Classics Inc.        | USA       |
-- | Steve     | Patterson | Marta's Replicas Co.           | USA       |
-- | Steve     | Patterson | Gifts4AllAges.com              | USA       |
-- | Steve     | Patterson | Online Diecast Creations Co.   | USA       |
-- | Steve     | Patterson | FunGiftIdeas.com               | USA       |
-- | Foon Yue  | Tseng     | Muscle Machine Inc             | USA       |
-- | Foon Yue  | Tseng     | American Souvenirs Inc         | USA       |
-- | Foon Yue  | Tseng     | Vitachrome Inc.                | USA       |
-- | Foon Yue  | Tseng     | Classic Legends Inc.           | USA       |
-- | Foon Yue  | Tseng     | Super Scale Inc.               | USA       |
-- | Foon Yue  | Tseng     | Microscale Inc.                | USA       |
-- | George    | Vanauf    | Land of Toys Inc.              | USA       |
-- | George    | Vanauf    | Gift Depot Inc.                | USA       |
-- | George    | Vanauf    | Mini Classics                  | USA       |
-- | George    | Vanauf    | Tekni Collectables Inc.        | USA       |
-- | George    | Vanauf    | Gift Ideas Corp.               | USA       |
-- | George    | Vanauf    | Motor Mint Distributors Inc.   | USA       |
-- | Loui      | Bondur    | Saveley & Henriot, Co.         | France    |
-- | Loui      | Bondur    | La Corne D'abondance, Co.      | France    |
-- | Loui      | Bondur    | Lyon Souveniers                | France    |
-- | Loui      | Bondur    | Marseille Mini Autos           | France    |
-- | Loui      | Bondur    | Reims Collectables             | France    |
-- | Loui      | Bondur    | Auto Canal+ Petit              | France    |
-- | Gerard    | Hernandez | Atelier graphique              | France    |
-- | Gerard    | Hernandez | La Rochelle Gifts              | France    |
-- | Gerard    | Hernandez | Daedalus Designs Imports       | France    |
-- | Gerard    | Hernandez | Mini Caravy                    | France    |
-- | Gerard    | Hernandez | Alpha Cognac                   | France    |
-- | Gerard    | Hernandez | Auto Associés & Cie.           | France    |
-- | Mami      | Nishi     | Osaka Souveniers Co.           | Japan     |
-- | Mami      | Nishi     | Tokyo Collectables, Ltd        | Japan     |
-- | Andy      | Fixter    | Australian Collectors, Co.     | Australia |
-- | Andy      | Fixter    | Anna's Decorations, Ltd        | Australia |
-- | Andy      | Fixter    | Souveniers And Things Co.      | Australia |
-- | Andy      | Fixter    | Australian Gift Network, Co    | Australia |
-- | Andy      | Fixter    | Australian Collectables, Ltd   | Australia |
-- | Larry     | Bott      | AV Stores, Co.                 | UK        |
-- | Larry     | Bott      | UK Collectables, Ltd.          | UK        |
-- | Larry     | Bott      | giftsbymail.co.uk              | UK        |
-- | Larry     | Bott      | Stylish Desk Decors, Co.       | UK        |
-- | Larry     | Bott      | Double Decker Gift Stores, Ltd | UK        |
-- +-----------+-----------+--------------------------------+-----------+

-- 5. Return the number of products per product line
-- Solution Here:


-- Expected Output:
-- +--------------------+------------------+
-- | COUNT(productName) | productLine      |
-- +--------------------+------------------+
-- |                 38 | Classic Cars     |
-- |                 13 | Motorcycles      |
-- |                 12 | Planes           |
-- |                  9 | Ships            |
-- |                  3 | Trains           |
-- |                 11 | Trucks and Buses |
-- |                 24 | Vintage Cars     |
-- +--------------------+------------------+

-- 6. Return the number of customers served by every employee
-- Solution Here:


-- Expected Output:
-- +----------------+-----------+-----------+
-- | Customer Count | firstName | lastName  |
-- +----------------+-----------+-----------+
-- |              5 | Andy      | Fixter    |
-- |              9 | Barry     | Jones     |
-- |              7 | Foon Yue  | Tseng     |
-- |              8 | George    | Vanauf    |
-- |              7 | Gerard    | Hernandez |
-- |              6 | Julie     | Firrelli  |
-- |              8 | Larry     | Bott      |
-- |              6 | Leslie    | Jennings  |
-- |              6 | Leslie    | Thompson  |
-- |              6 | Loui      | Bondur    |
-- |              5 | Mami      | Nishi     |
-- |              6 | Martin    | Gerard    |
-- |             10 | Pamela    | Castillo  |
-- |              5 | Peter     | Marsh     |
-- |              6 | Steve     | Patterson |
-- +----------------+-----------+-----------+

-- 7. Show the customer's name with the highest credit limit.
-- Solution Here:


-- Expected Output:
-- +------------------------+-------------+
-- | customerName           | creditLimit |
-- +------------------------+-------------+
-- | Euro+ Shopping Channel |   227600.00 |
-- +------------------------+-------------+
