# My DSA Final Project

## Project Overview:
This capstone project was completed during a three-month intensive Data Analysis program. It focuses on developing SQL querying skills across two business scenarios within Kultra Mega Stores (KMS):
Case Scenario I: Sales & Operations Analysis
Case Scenario II: Customer Behavior & Logistics Efficiency

Tools Used: SQL, CSV Data

Data Source: Provided by INCUBATOR HUB (Kultra Mega Stores dataset in CSV format)


### Exploratory Data Analysis (EDA): Case Scenario I

1. Top product category by sales.

| Product Category|  Total Sales   |
|-----------------|----------------|
|    Technology   | 10,971,448,091 |
   
2. Top and bottom 3 regions by sales.

**Top 3 Regions**

|      Region     |  Sales        |
|-----------------|---------------|
|    West         | 2,758,919,642 |
|    Ontario      | 2,651,977,582 |
|    Prarie       | 2,508,258,342 |

**Bottom 3 Regions** 

|      Region         |     Sales       |
|---------------------|-----------------|
|    Nunavut          |   120,764,644   |
|Northwest Territories|   632,397,881   |
| Yukon               |   859,690,795   |

3.  Total Sales of Appliances in Ontario.

| Region  |   Product       | Sales      |
|-------- |-----------------|------------|
| Ontario | Appliances      | 18,487,910 | 

4. Bottom 10 Customers Product
    
|Customer Name     | Total Profit    | 
|---------------   |-----------------|
|Dave Kipp         |   -1308206      |
|Lauren Leatherbury|   -1132581      |
|Roger Demir       |   -1018792      |
|Tamara Willingham |    -923829      |
|Cyra Reiten       |    -865396      |
|Corey Lock        |    -843443      |
|Meg O'Connel      |    -741117      | 
|Irene Maddox      |    -623359      |
|Maxwell Schwartz  |    -599777      |
|Christopher Conant|    -590423      |


### Insights:
The negative profits in the table above show that customer Christopher Conant has multiple products with negative profit across categories like Technology, Office Supplies, and Furniture. This could be due to heavy discounts, high operational (shipping costs) costs, or selling low-margin products.

![Table 1](https://github.com/user-attachments/assets/a8f81801-958f-4710-8dbc-9d81f63c08f1)


### Recommendations:
- Restrict discounts for Home Office customers on low-margin items, since it is the customer segment mainly affected.
- Offer bundled deals or minimum order thresholds to ensure profitability.
- Promote higher-margin alternatives within Office Supplies and Technology.
 
5. Shipping Cost Analysis

|    Ship Mode     |  Total Cost     |
|------------------|-----------------|
|  Delivery Truck  |    16473        |


### Exploratory Data Analysis: Case Scenario II: Customer & Logistics Behavior
6. Most valuable customers and their typical products or services purchase history.
                 
![Table 2](https://github.com/user-attachments/assets/e52631b1-de32-42f0-859c-1f2ceb70a86b)

7. Highest Spending Small Business Customer
   
| Customer Name     |  Total Sales    |
|-------------------|-----------------|
| Deborah Brumfield |    2,329,921    |
   
8. Most Active Corporate Customer (by Orders:2009-2012) 
   
| Customer Name     |  Total Orders    |
|-------------------|------------------|
|     Adam Hart     |       27         |

9. Most Profitable Consumer Customer

| Customer Name     |  Total Profit     |
|-------------------|-------------------|
|     Emily Phan    |    2,823,689      |

10. Customers Who Returned Items

![Table 3](https://github.com/user-attachments/assets/872dcff1-b0d8-497b-8884-4a9c0000b4bd)

11. Evaluating whether shipping methods were appropriately selected based on order priority and in consideration of both speed and cost.

![Table 4](https://github.com/user-attachments/assets/0df65de2-b142-4eda-bf02-a6d566f188f4)


**Shipping Method vs Order Priority Analysis**

|                          |                           |
|--------------------------|---------------------------|
|  Shipping Method         |  Priority Misalignment    |
|   Delivery Truck         |   Used for High/Critical  |
|   Express Air            |   Underused for Critical  |
|   Regular Air            |    Moderately Aligned     |       
|                          |                           |


### Insight:
KMS has mismatched shipping methods with order priority. Fast methods like Express Air should be used more frequently for Critical orders.


###  Key SQL Skills Demonstrated:
- Database creation and data importation
- Data extraction and conditional filtering
- Aggregation, grouping, and sorting
- Joining multiple tables
- Writing queries 
- Creating and managing View
- Advanced filtering (WHERE, and GROUP BY)
  
SQL Code: [SQL queries](https://1drv.ms/u/c/bc44d4c60b54fc1d/EfN58PeAHKdCvQMXZ5Gof0QBtuA72aEFTJJn0OvKiVi_Hg?e=kmNgAP) 

### Recommendations for KMS
- Optimize shipping alignment by matching express methods with priority orders.
- Re-evaluate discount policies, especially for small business and home office segments.
- Review logistics partnerships to control Delivery Truck expenses.
- Invest in customer profiling to maximize profitability from top-tier clients.
- Explore upselling opportunities with high-profit customers.


