# My DSA Final Project

## Project Overview:
A Capstone Project completed as part of a three-month intensive Data Analysis program, aimed at generating insights to address key questions in the field of Human Resource Analytics and Logistics Optimization. This project uses SQL querying skills across two case studies. This project focuses on two case studies: Case study 2, which in turn consists of Case Scenario I and II.

The aim of the Case Scenario I is to analyze the sales and operational data of Kultra Mega Stores (KMS) and present key insights and findings. While Case Scenario II explores customer behaviour, profitability, and logistics efficiency.

### Exploratory Data Analysis (EDA): Case Scenario I
1. Ascertaining the product category with the highest sales.

| Product Category|  Total Sales  |
|-----------------|-------------- |
|    Technology   | 10,971,448,091|
   
2. Identifyinging the top 3 and bottom 3 regions by sales.
   
|   Top 3 Regions |  Sales       |
|-----------------|--------------|
|    West         | 2,758,919,642|
|    Ontario      | 2,651,977,582|
|    Prarie       | 2,508,258,342|


|   Bottom 3 Regions  |  Sales     |
|---------------------|------------|
|    Nunavut          | 120,764,644|
|Northwest Territories| 632,397,881|
| Yukon               | 859,690,795|

3. Calculating total sales of appliances in Ontario.

|  Total Sales of Appliances in Ontario |
|-------------------------------------  |
|             18,487,910                | 

4. Advise Kultra Mega Stores management on strategic actions to increase revenue from the bottom 10 customers.
    
|Customer Name     | Total Profit  | 
|---------------   |-------------- |
|Dave Kipp         |   -1308206    |
|Lauren Leatherbury|   -1132581    |
|Roger Demir       |   -1018792    |
|Tamara Willingham |    -923829    |
|Cyra Reiten       |    -865396    |
|Corey Lock        |    -843443    |
|Meg O'Connel      |    -741117    | 
|Irene Maddox      |    -623359    |
|Maxwell Schwartz  |    -599777    |
|Christopher Conant|    -590423    |


### Business Insights for KMS:
The negative profits in the table above show that customer Christopher Conant has multiple products with negative profit, across categories like Technology, Office Supplies, and Furniture. This could be due to heavy discounts, high operational (shipping costs) costs, or selling low-margin products.

![Table 1](https://github.com/user-attachments/assets/a8f81801-958f-4710-8dbc-9d81f63c08f1)

### Recommendations:
- Restrict discounts for Home Office customers on low-margin items, since it is the customer segment mainly affected.
- Offer bundled deals or minimum order thresholds to ensure profitability.
- Promote higher-margin alternatives within Office Supplies and Technology.
 
5. Analyze shipping costs to determine the most expensive shipping method.

|    Ship Mode     |  Total Cost  |
|----------------- |--------------|
|  Delivery Truck  |    16473     |


### Exploratory Data Analysis: Case Scenario II:
6. Identifying the most valuable customers and their typical products or services purchase history.
                 
![Table 2](https://github.com/user-attachments/assets/e52631b1-de32-42f0-859c-1f2ceb70a86b)

7.  Determining which small business customer generated the highest sales.
   
| Customer Name     |  Total Sales  |
|-------------------|---------------|
| Deborah Brumfield |    2,329,921  |
   
8. Finding the corporate customer who placed the most orders between 2009 and 2012.
   
| Customer Name     |  Total Orders |
|-------------------|---------------|
|     Adam Hart     |       27      |

9. Ascertaining the most profitable consumer customer.

| Customer Name     |  Total Profit |
|-------------------|---------------|
|     Emily Phan    |    2,823,689  |

10. Highlighting customers who returned items and analyzing the segments they belong to.

![Table 3](https://github.com/user-attachments/assets/872dcff1-b0d8-497b-8884-4a9c0000b4bd)

11. Evaluating whether shipping methods were appropriately selected based on order priority and in consideration of both speed and cost.

![Table 4](https://github.com/user-attachments/assets/0df65de2-b142-4eda-bf02-a6d566f188f4)


### Analysis:
Table 4 shows that KMS has not fully aligned its shipping methods with order priorities. The use of Delivery Truck, the slowest and most economical method, for Critical and High priority orders represents a clear mismatch. Ideally, Delivery Truck should be reserved for Medium and Low priority orders, where speed is less critical. But, Express Air and Regular Air,the faster shipping methods,should be prioritized for High and Critical orders to ensure timely delivery and maintain service quality.


###  Proven Key SQL Skills:
-  Database Creation
-  Data importation and preparation
-  Data extraction and selection
-  Filtering and conditional querying
-  Aggregation and grouping
-  Writing SQL queryies 
-  Joining two tables
-  Creating and managing View
-  Code used: [SQL queries](https://1drv.ms/u/c/bc44d4c60b54fc1d/EfN58PeAHKdCvQMXZ5Gof0QBtuA72aEFTJJn0OvKiVi_Hg?e=kmNgAP) 


### Data Source:
The dataset Kultra Mega Stores (KMS) used in this project was provided by INCUBATOR HUB. It was supplied in CSV format to support the analysis and address the project related questions.



