COPY Books
FROM '/Users/goofy/Desktop/Books.csv'
DELIMITER ','
CSV HEADER;

COPY Customers
FROM '/Users/goofy/Desktop/Customers.csv'
DELIMITER ','
CSV HEADER;

COPY Orders
FROM '/Users/goofy/Desktop/Orders.csv'
DELIMITER ','
CSV HEADER;
