# Vinted E-commerce Marketing Analytics

## Introduction
Vinted is a leading online marketplace that specializes in the buying, selling, and swapping of second-hand clothing and accessories. The platform champions sustainability and affordability, promoting the idea of giving pre-loved items a new lease on life while allowing users to discover unique fashion pieces at more accessible prices. Users can easily create listings, engage with potential buyers, and manage transactions seamlessly, making Vinted a user-friendly option for those looking to declutter their wardrobes or find budget-friendly fashion items.

Quick links:

SQL Queries:
[01. Data Cleaning](https://github.com/adhiraammu/Market_Analysis_Vinted/blob/main/Data_Cleaning.sql)
[02. Data Exploration](https://github.com/adhiraammu/Market_Analysis_Vinted/blob/main/Data_Exploration.sql)
[03. Data Analysis](https://github.com/adhiraammu/Market_Analysis_Vinted/blob/main/Data_Analysis.sql)

Data Visualizations: [Power BI](https://app.powerbi.com/view?r=eyJrIjoiNjE0YTdmMTYtOTBiNy00OTBkLWEzODgtMTg1MzdlZmI1ZGJkIiwidCI6ImVlMmQ2ZDcyLTk1MzUtNDI0Mi1hMDc3LWFjZjE4NTc4MmY5YiIsImMiOjF9)

## Objective
The primary goal of this analysis is to conduct a comprehensive marketing analytics project for Vinted, leveraging its dataset to uncover actionable insights. This analysis will focus on understanding customer behavior, identifying trends in product listings, and exploring factors influencing seller engagement.Lets consider the company’s future growth hinges on maximizing sales from low-touch sellers, who typically list fewer products. It is important to understand how low-touch sellers differ from high-touch sellers in terms of listing behavior, revenue generation, and profitability.From these insights, I aim to develop a marketing strategy that encourages low-touch sellers to increase their product listings while preserving their premium market appeal. Before advancing with our recommendations,it is important to show compelling, data-driven insights supported by visualizations to illustrate how these seller segments can be optimized for higher profitability.

### Business Questions:
How do listing behaviors differ between low-touch and high-touch sellers on Vinted, and what implications does this have for revenue generation?
What trends can be identified in product pricing and profitability among low-touch sellers, and how might these insights inform inventory expansion strategies?
In what ways can Vinted enhance seller engagement among low-touch sellers to drive product listings while maintaining their niche market appeal?

## Step 1: Data Extraction
In this project, I utilized Python's requests library to extract product listings from the Vinted using Rapid API. I then normalized the JSON responses into a structured format using the pandas library, appending additional columns for country and page number to provide context. Finally, I saved the aggregated data into a CSV file and connected to a database using SQLAlchemy, setting it up for further analysis
![image](https://github.com/user-attachments/assets/27106335-27c8-40c7-a267-166414205762)

## Step2: Data Cleaning
1.All columns were renamed for consistency and clarity, with changes such as price.amount to price_amount and seller.userId to seller_user_id.
2.All rows lacking a valid productId were removed to ensure data integrity.
3.Columns such as price_discount, seller_profile_picture, and message were eliminated from the dataset
4.Duplicate entries for productId and seller_user_id were identified to assess data integrity
5.Identified unique brands within the dataset, providing a count of products available per brand
6.Rows with missing values in price_amount and price_currency were checked for completeness to maintain data accuracy.

## Step 3:Data Exploration
 1.This table shows the minimum, maximum, and average prices of products in the product table while counting the total number of products listed.

 ![image](https://github.com/user-attachments/assets/c1f626f5-6bc9-4b6a-b882-674ea03ec1ad)

 2.This table shows the number of products listed by each seller in the product table, grouping the results by seller username and ordering them in descending order based on the number of products.
 
 ![image](https://github.com/user-attachments/assets/afd39265-8874-4eee-8757-86ced3a4ca28)
 
 3.This table shows the product ID, title, price amount, and currency for all items listed by the seller 'marvelo'.
 
 ![image](https://github.com/user-attachments/assets/f8a37d41-cfab-49b1-9f93-4d9f8d2f7aa4)
 
 4. This table shows the average price of products for each brand in the product table, ordering the results in descending order based on the average price.

 ![image](https://github.com/user-attachments/assets/333b890c-3ba9-4b2a-9365-96e50fe7279d)

## Step 4: Data Analysis
 1.This table shows the sellers with fewer listings but higher average prices. 
 ![image](https://github.com/user-attachments/assets/89052890-8427-4f71-8743-853f27b1969e)

 2.The table displays the profitability metrics of low-touch sellers (those with fewer than three products listed), including their product count, total fees, total revenue, and calculated profit, ordered by profit in ascending order.
 ![image](https://github.com/user-attachments/assets/f5a122af-f9c1-43e5-8592-5b93fcdbe982)

 3.This table shows the most profitable brands across low-touch sellers and suggest opportunities for inventory expansion.
 ![image](https://github.com/user-attachments/assets/d4a3d7f7-e9ae-4ae9-b4c7-9de482bceb2e)

 4.This table shows sellers who already have high revenue with a few products and could benefit from expanding their product portfolio.
 ![image](https://github.com/user-attachments/assets/807f3b1c-f210-496c-8c4d-3b33b8e94c56)
 

## Step5: Data Visualization- Power BI

The data has been extracted and queried from multiple relevant tables to analyze low-touch sellers' engagement and performance. This analysis aims to understand how low-touch sellers can be motivated to increase their engagement and drive more sales.

The core analysis question is: How can we improve engagement and performance among low-touch sellers to boost product sales on the platform?
![image](https://github.com/user-attachments/assets/9a680493-2742-4eb7-ae73-7b1177b53a86)

1. Low-touch sellers make up a significant portion of total sellers, accounting for 58.17% of all sellers. Despite their lower activity, they contribute a considerable share of revenue, particularly in high-value product categories. High-revenue low-touch sellers such as evaoconnell ($210.7 revenue) and dennykenny ($163.45) indicate the potential these sellers hold. May want to encourage them to list more products to take advantage of the high demand they seem to be getting. 

2. Brands like Boss, May Faire Moon, and Microsoft are generating high average revenue, which shows the demand for premium brands. To help the low touch customers ask to focus more on these products to generate revenue

3. A significant portion of sellers (58.17%) are low-touch, meaning the majority of sellers on the platform have fewer interactions but can still contribute meaningfully to revenue. However, they are underutilized in terms of product count.

4. Sellers like dennykenny have made significant profits ($310) despite a relatively small fee ($16.9) and low product count, showing that even with fewer listings, sellers can be quite profitable. However, there's a bottleneck—many sellers may not be aware of how much profit they could potentially make by increasing engagement or expanding their listings.

5.Sellers who pay higher listing fees tend to earn higher profits. This suggests that sellers investing more in promoting their products are reaping the benefits of increased visibility and higher sales.

## Actionable Marketing Strategy:
Based on this analysis, several recommendations can be made to help drive engagement among low-touch sellers:
 1.Brand-Focused Recommendations: Create targeted communications that inform low-touch sellers about high-demand brands (like Nike, Microsoft, etc.) that they could consider adding to their inventory. Provide insights on current market trends and the success of these brands on the platform.
 2.Targeted Email Campaigns:Craft targeted email campaigns to top N low-touch sellers who are driving exceptional profits, highlighting their current success and the potential benefits of expanding their inventory. 
3.Reduced Listing Fees: There is a clear correlation between listing fees and seller revenue; as fees increase, the revenue potential for high-volume sellers often grows. Instead of implementing a blanket reduction in fees, we propose a tiered fee structure where sellers pay lower fees only after reaching a specified number of product listings. This approach can drive engagement among low-touch sellers while maintaining revenue stability for the platform.

## Conclusion
By conducting a thorough analysis of Vinted's marketplace, we can gain critical insights into seller behavior and customer preferences. Implementing targeted marketing strategies based on these findings will not only enhance user engagement but also drive profitability for both Vinted and its sellers. 










