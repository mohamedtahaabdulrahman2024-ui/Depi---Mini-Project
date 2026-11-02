Use sales  ;

select * 
from dbo.Supersales

select Top 5 *
from dbo.Supersales

-- Q1 Top 10 Customer from Total Sales
select top 10 Customer_Name,sum (Sales) as Total_Sales 
from dbo.Supersales 
group by Customer_Name 
order by Total_Sales DESC;

-- Q2 Most 10 recent orders by order date 
select top 10 Order_ID , Order_Date , Customer_Name , Sales 
from dbo.Supersales  
Order by Order_Date Desc;

-- Q3 Top 10 Best Selling Products 
select top 10 Product_Name , sum (Sales) as Total_Sales 
from dbo.Supersales 
group by Product_Name 
Order by Total_Sales Desc;

-- Q4 What are the different product categories available in the dataset ? 
Select distinct Category 
from dbo.Supersales 
Order by Category

-- Q5 Which orders have sales greater than 1000 $ 
select Order_ID , Product_Name , Sales 
from dbo.Supersales 
where Sales > 1000 
Order by Sales Desc;

-- Q6 Which Products have generated a loss ?
select Product_Name,sum (Profit) as Total_Profit 
from dbo.SuperSales 
group by Product_Name 
having sum(Profit) < 0 
order by Total_Profit ASC;

-- Q7 What are the top 10 orders with the highest sales value?
Select top 10 Order_ID,Order_Date,Product_Name, Sales 
from dbo.SuperSales 
order by Sales DESC;

-- Q8 What is the total sales amount for each product category ? 
select Category , sum(Sales) as Total_Sales 
from dbo.SuperSales 
group by Category 
Order by Total_Sales Desc;

-- Q9 What are the different regions in the dataset? 
select distinct Region 
from dbo.SuperSales 
Order by Region;

-- Q10 What is the total quantity sold for each product ?
select Product_Name , sum(Quantity) as Total_Quantity_Sold 
from dbo.SuperSales 
group by Product_Name 
Order by Total_Quantity_Sold DESC ;