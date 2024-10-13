# Vinted E-commerce Marketing Analytics

## Introduction
Vinted is a leading online marketplace that specializes in the buying, selling, and swapping of second-hand clothing and accessories. The platform champions sustainability and affordability, promoting the idea of giving pre-loved items a new lease on life while allowing users to discover unique fashion pieces at more accessible prices. Users can easily create listings, engage with potential buyers, and manage transactions seamlessly, making Vinted a user-friendly option for those looking to declutter their wardrobes or find budget-friendly fashion items.

## Objective
The primary goal of this analysis is to conduct a comprehensive marketing analytics project for Vinted, leveraging its dataset to uncover actionable insights. This analysis will focus on understanding customer behavior, identifying trends in product listings, and exploring factors influencing seller engagement.Lets consider the company’s future growth hinges on maximizing sales from low-touch sellers, who typically list fewer products. It is important to understand how low-touch sellers differ from high-touch sellers in terms of listing behavior, revenue generation, and profitability.From these insights, I aim to develop a marketing strategy that encourages low-touch sellers to increase their product listings while preserving their premium market appeal. Before advancing with our recommendations,it is important to show compelling, data-driven insights supported by visualizations to illustrate how these seller segments can be optimized for higher profitability.

### Business Questions:
How do listing behaviors differ between low-touch and high-touch sellers on Vinted, and what implications does this have for revenue generation?
What trends can be identified in product pricing and profitability among low-touch sellers, and how might these insights inform inventory expansion strategies?
In what ways can Vinted enhance seller engagement among low-touch sellers to drive product listings while maintaining their niche market appeal?

## Step 1: Data Extraction
In this project, I utilized Python's requests library to extract product listings from the Vinted using Rapid API. I then normalized the JSON responses into a structured format using the pandas library, appending additional columns for country and page number to provide context. Finally, I saved the aggregated data into a CSV file and connected to a database using SQLAlchemy, setting it up for further analysis and insights.
![Data Extraction]("C:\Users\adhir\OneDrive\Desktop\Adhira\Projects git\Vinted_Martket analytics\img1.png")





