

-- Analyse price distribution
SELECT 
    MIN(price_amount) AS min_price,
    MAX(price_amount) AS max_price,
    AVG(price_amount) AS avg_price,
    COUNT(*) AS total_products
FROM `product`;

-- Analysing Products by Country
SELECT country, COUNT(*) AS no_of_products
FROM `product`
GROUP BY country
ORDER BY no_of_products DESC;

-- Analysing the number of products listed by each seller
SELECT seller_username, COUNT(*) AS no_of_products
FROM `product`
GROUP BY seller_username
ORDER BY no_of_products DESC;

-- Analysing how many products are promoted
SELECT promoted, COUNT(*) AS no_of_products
FROM `product`
GROUP BY promoted;


--  top 10 sellers with the highest number of product listings
SELECT seller_username, COUNT(productId) AS total_listings
FROM product
GROUP BY seller_username
ORDER BY total_listings DESC
LIMIT 10;

-- High-Value Listings: Products Priced Above $150
SELECT title, price_amount, seller_username
FROM product
WHERE price_amount > 150
ORDER BY price_amount DESC;

-- Product Listings from Seller: Marvelo
SELECT productId, title, price_amount, price_currency
FROM product
WHERE seller_username = 'marvelo';

-- Average Prices of Products by Brand
SELECT brand, AVG(price_amount) AS avg_price
FROM product
GROUP BY brand
ORDER BY avg_price DESC;
