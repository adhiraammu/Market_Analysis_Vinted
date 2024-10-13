
-- Identify Low-Touch Sellers with High-Value Products
CREATE TABLE lowtouch_sellers_with_high_value_product AS
WITH SellerActivity AS (
    SELECT 
        seller_username,
        COUNT(productId) AS product_count,
        AVG(price_amount) AS avg_price_per_seller
    FROM product
    GROUP BY seller_username
)
SELECT 
    seller_username,
    product_count,
    avg_price_per_seller
FROM SellerActivity
WHERE product_count < 3  -- Define "low touch" as having fewer than 3 listings
ORDER BY avg_price_per_seller DESC;


--  Analyze Low-Touch Sellers with High Fees and Low Margins
CREATE TABLE lowtouch_sellers_with_highfees_lowmargins AS
WITH SellerProfitability AS (
    SELECT 
        seller_username,
        COUNT(productId) AS product_count,
        SUM(price_fees) AS total_fees,
        SUM(price_total_amount) AS total_revenue,
        (SUM(price_total_amount) - SUM(price_fees)) AS profit -- Calculating the profit
    FROM product
    GROUP BY seller_username
)
SELECT 
    seller_username,
    product_count,
    total_fees,
    total_revenue,
    profit
FROM SellerProfitability
WHERE product_count < 3 -- Low-touch sellers
ORDER BY profit ASC; -- Identify sellers with low profits first

-- Popular Brands Sold by Low-Touch Sellers
CREATE TABLE popularbrands_lowtouchsellers AS
WITH SellerBrand AS (
    SELECT 
        seller_username,
        brand,
        COUNT(productId) AS product_count,
        SUM(price_total_amount) AS total_revenue
    FROM product
    GROUP BY seller_username, brand
)
SELECT 
    seller_username,
    brand,
    product_count,
    total_revenue
FROM SellerBrand
WHERE product_count < 3 -- Low-touch sellers
ORDER BY total_revenue DESC;

-- Identify lowtouch sellers with high revenue
CREATE TABLE high_revenue_low_product_count_sellers AS
WITH SellerRevenueConsistency AS (
    SELECT 
        seller_username,
        COUNT(productId) AS product_count,
        SUM(price_total_amount) AS total_revenue,
        AVG(price_total_amount) AS avg_revenue_per_product
    FROM product
    GROUP BY seller_username
)
SELECT 
    seller_username,
    product_count,
    total_revenue,
    avg_revenue_per_product
FROM SellerRevenueConsistency
WHERE product_count < 3 -- Low-touch sellers with fewer than 3 products
ORDER BY total_revenue DESC;



