-- Exploratory analysis of reviews, products, customers and vine tables
SELECT * FROM review_id_table
LIMIT 10;

SELECT COUNT(*) FROM review_id_table;

SELECT * FROM products
LIMIT 10;

SELECT COUNT(*) FROM products;

SELECT * FROM customers
LIMIT 10;

SELECT COUNT(*) FROM customers;

SELECT * FROM vine_table
LIMIT 10;

SELECT COUNT(*) FROM vine_table;

-- Exploratory analysis of helpful votes
SELECT COUNT(helpful_votes) FROM vine_table;

SELECT AVG(helpful_votes) FROM vine_table;

SELECT COUNT(*) FROM vine_table
where helpful_votes > 5;

SELECT AVG(star_rating) FROM vine_table
where helpful_votes >  5;

SELECT review_id FROM vine_table
where helpful_votes > 5;

-- Exploratory analysis of total votes
SELECT COUNT(total_votes) FROM vine_table;

SELECT AVG(total_votes) FROM vine_table;

SELECT AVG(star_rating) FROM vine_table
where total_votes > 5;

SELECT COUNT(*) FROM vine_table
where total_votes > 5;

SELECT review_id FROM vine_table
where total_votes > 5;

-- Exploratory analysis of total votes and helpful votes
SELECT AVG(star_rating) FROM vine_table
where total_votes > 5 AND helpful_votes > 5;

SELECT COUNT(*) FROM vine_table
where total_votes > 5 AND helpful_votes > 5;

SELECT review_id FROM vine_table
where total_votes > 5 AND helpful_votes > 5;