# DataFestAfrica-Jan-2023-Challenge
A Data Analytics challenge

## Business Problem & Questions
On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe.  
We want to do some analysis of the average order value (AOV). When we look at orders data over a 30 day window,  
we naively calculate an AOV of $3145.13. Given that we know these shops are selling sneakers,  
a relatively affordable item, something seems wrong with our analysis.  

* Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.  
* What metric would you report for this dataset?
* What is its value?

#### After assesing the dataset I found out the following;  
There are no missing values in the dataset.
The dataset consists of **5000 rows & 7 columns**.  
The minimum order_amount is **\$90** and the maximum is **\$704,000**, this looks like an outlier considering we have an average amount of $3145 as stated in the problem.  
We have the minimum total_item to be 1 and maximum of 2000 items.  


### Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.
> From the above result I would think its because of the **outlier / incorrect data** during the data entry.
Investigating if there's an outlier or incorrect data in the order_amount.

### Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.  

Looking at the data I noticed quite a few outliers/incorrect data.  
Next I went ahead to check the distribution of the **order_amount** to see if there is a pattern and know what amount I'll use as benchmark for removing the outliers/incorrect data  

I checked distribution of **order_amount** 3 times with diffrent boundaries just to get a better representation of our data   
and it complies with the statement of the shoes being very affordable since most of the data is now between 0 - 600  

Goin forward I'll use 1000 as a benchmark to drop the outliers/incorrect data points  

There is a totla of **71 rows with outliers/incorrect data**
#### I'll drop the above rows since they're relatively small(not upto 10% of the entire dataset) and wont affect our analysis if we drop them

## What metric would you report for this dataset?
Interesting metrics would be;
* Top 5 Shop with the highest sales.
> Answer::: No significant diffrence among the Top 5 shops, but Shop with id 89 makes the most sales at $23,128.  

* What is sales like in each week & Shop with the highest sales per week.
We can see the sales dropping in Week 5 this because there's less than 4 days sales data in the 5th week,   
but generally the highest sales was in Week 2 with a total of **$358,995** in sales.

* Which shops generated the most sales for each week?
>The shops with the most sales per week are;
* Week 1 : Shop 89  
* Week 2 : Shop 70
* Week 3 : Shop 6
* Week 4 : Shop 46
* Week 5 : Shop 30  

* Total number of orders. 
We have **4929** orders in this month..  

* Total Sales.
> Total sales for the month is **\$1,483,946**.  

* Total Items sold.
> **9812** items/shoes were sold.  

* Average Order Value.
> The Average Order Value is **\$301.65**.  

* Most Used payment method.
> Customers pay more with **Credit Cards**, tho it's almost the same as the other payment methods.  
