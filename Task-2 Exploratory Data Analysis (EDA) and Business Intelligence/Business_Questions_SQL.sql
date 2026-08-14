use apexplanet_task2;

select * from cleaned_sales limit 10;

select count(*) as Total_Rows from cleaned_sales;

select Category, sum(Total_Sales) as Total_Sales from cleaned_sales group by Category order by Total_Sales desc;

select Product, sum(Total_Sales) as Total_Sales from cleaned_sales group by Product order by Total_Sales desc limit 5;

select City, sum(Total_Sales) as Total_Sales from cleaned_sales group by City order by Total_Sales desc;

select Month, sum(Total_Sales) as Total_Sales from cleaned_sales group by Month order by CASE Month 
       when 'January' then 1
       when 'February' then 2
       when 'March' then 3
       when 'April' then 4
       when 'May' then 5
       when 'June' then 6
       when 'July' then 7
       when 'August' then 8
       when 'September' then 9
       when 'October' then 10
       when 'November' then 11
       when 'December' then 12 end;
       
select Age_Group, sum(Total_Sales) as Total_Sales from cleaned_sales group by Age_Group order by Total_Sales desc;

select Category, round(avg(Total_Sales)) as Average_Sales from cleaned_sales group by Category order by Average_Sales desc;

select Product, sum(Quantity) as Total_Quantity_Sold from cleaned_sales group by Product order by Total_Quantity_Sold desc;