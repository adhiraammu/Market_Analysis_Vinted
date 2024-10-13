
-- Rename columns
ALTER TABLE product
RENAME COLUMN `price.amount` TO price_amount,
RENAME COLUMN `price.currency` TO price_currency,
RENAME COLUMN `price.discount` TO price_discount,
RENAME COLUMN `price.fees` TO price_fees,
RENAME COLUMN `price.totalAmount` TO price_total_amount,
RENAME COLUMN `seller.userId` TO seller_user_id,
RENAME COLUMN `seller.username` TO seller_username,
RENAME COLUMN `seller.profile` TO seller_profile,
RENAME COLUMN `seller.profilePicture` TO seller_profile_picture;

-- Remove data which doesnt have a product ID
DELETE FROM product
WHERE productId IS NULL;

-- Remove unwanted column as step in data cleaning
ALTER TABLE product
DROP COLUMN price_discount,
DROP COLUMN seller_profile_picture,
DROP COLUMN message;

-- Find any duplicate rows
SELECT COUNT(productId) - COUNT(DISTINCT productId) AS duplicate_rows
FROM `product`;

-- Find how many sellers are repeated 
SELECT COUNT(seller_user_id) - COUNT(DISTINCT seller_user_id) AS duplicate_rows
FROM `product`;

-- Identify unique products
SELECT DISTINCT brand, COUNT(brand) AS no_of_products
FROM `product`
GROUP BY brand
ORDER BY no_of_products DESC;

-- Find null values in priceamount and price currency
SELECT COUNT(*) AS rows_with_missing_price
FROM `product`
WHERE price_amount IS NULL OR price_currency IS NULL;


