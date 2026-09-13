
#1 What is the total number of customers, total conversions, and overall conversion rate?
select 
count(customer_id) as Total_Customers,
sum(case when conversion='Yes' then 1 else 0 end) as Total_Conversion,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count( customer_id)
as Conversion_Rate
from table1;

#2 What is the average advertising spend, average CTR, average conversion rate, and average website engagement across all customers?
select
avg(ad_spend) as Average_Advertising_Spend,
avg(click_through_rate) as Average_CTR,
avg(conversion_rate) as Average_Conversion_Rate,
avg(time_on_site) as Average_Website_Engagement
from table1;


#3 What percentage of customers converted versus did not convert?
select
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id) as Converted_Customers_Percentage,
(sum(case when conversion='No' then 1 else 0 end)*100)/count(customer_id) as Non_Converted_Customers_Percentage
from table1;


#4 What is the conversion rate for each Gender?
select gender,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id) as Conversion_Rate
from table1
group by gender;


#5 Which age_group has the highest conversion rate and how many customers does it contain?
select 
age_group as Age_Group,
count(customer_id) as Total_Customers,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id)
as Conversion_Rate
from table1
group by age_group
order by Conversion_Rate desc;


#6 How does conversion rate vary across income_group?
select 
income_group as Income_Group,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id)
as Conversion_Rate
from table1
group by Income_Group;

#7 How do average income, average ad spend, and average conversion rate differ between converted and non-converted customers?
select 
avg(income) as Average_Income,
avg(ad_spend) as Average_Ad_Spend,
avg(conversion_rate) as Average_Conversion_Rate,
conversion as Conversion_group
from table1
group by conversion;


#8 Which campaign_channel generates the highest number of conversions and the highest conversion rate?
select campaign_channel,
sum(case when conversion='Yes' then 1 else 0 end) as Conversions,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id) as Conversion_Rate
from table1
group by campaign_channel
order by Conversions desc;


#9 Which campaign_type generates the highest number of conversions and the highest conversion rate?
select campaign_type,
sum(case when conversion='Yes' then 1 else 0 end)/count(customer_id)
as Number_Of_Conversions,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id)
as Conversion_Rate
from table1
group by campaign_type
order by Number_Of_Conversions desc;

#10 What is the performance of each campaign_channel in terms of customer count,
# total ad spend, conversions, CTR, and conversion rate?
select campaign_channel,
count(customer_id) as Number_Of_Customers,
sum(ad_spend) as Total_Ad_Spend,
sum(case when conversion='Yes' then 1 else 0 end)/count(customer_id)
as Number_Of_Conversions,
avg(click_through_rate) as Average_CTR,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id)
as Conversion_Rate
from table1
group by campaign_channel;


#11 What is the performance of each campaign_type in terms of customer count,
# total ad spend, conversions, CTR, and conversion rate?
select campaign_type,
count(customer_id) as Number_Of_Customers,
sum(ad_spend) as Total_Ad_Spend,
sum(case when conversion='Yes' then 1 else 0 end)/count(customer_id)
as Number_Of_Conversions,
avg(click_through_rate) as Average_CTR,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id)
as Conversion_Rate
from table1
group by campaign_type;

#12 Which combination of campaign_channel and campaign_type has the highest conversion rate?
select
campaign_channel,
campaign_type,
(sum(case when conversion='Yes' then 1 else 0 end)*100)/count(customer_id)
as Conversion_Rate
from table1
group by 
campaign_channel,
campaign_type
order by Conversion_Rate desc;

#13 Which combination of campaign_channel and campaign_type generates the highest number of conversions?
select
campaign_channel,
campaign_type,
sum(case when conversion='Yes' then 1 else 0 end) as Number_Of_Conversions
from table1
group by 
campaign_channel,
campaign_type
order by Number_Of_Conversions desc;


#14 What is the cost per conversion for each campaign_channel?
select campaign_channel,
sum(ad_spend)/sum(case when conversion='Yes' then 1 else 0 end)
as Cost_Per_Conversion
from table1
group by campaign_channel; 


#15 What is the cost per conversion for each campaign_type?
select campaign_type,
sum(ad_spend)/sum(case when conversion='Yes' then 1 else 0 end)
as Cost_Per_Conversion
from table1
group by campaign_type; 

#16 Which campaign channel has above-average ad spend but below-average conversion rate?
with ChannelPerformance as
(select
campaign_channel,
sum(ad_spend) as Total_Ad_Spend,
avg(conversion_rate) as Average_conversion_Rate
from table1
group by campaign_channel),
DatasetBenchmark as
(select 
avg(Total_Ad_Spend) as Benchmark_Spend,
avg(Average_Conversion_Rate) as Benchmark_Conversion_Rate
from ChannelPerformance)
select
cp.campaign_channel,
cp.Total_Ad_Spend,
cp.Average_conversion_Rate
from ChannelPerformance cp
cross join DatasetBenchmark db
where
cp.Total_Ad_Spend>db.Benchmark_Spend
and
cp.Average_Conversion_Rate<db.Benchmark_Conversion_Rate;


#17 Which campaign channel has below-average ad spend but above-average conversion rate?
with ChannelPerformance as
(select campaign_channel,
sum(ad_spend) as Total_Ad_Spend,
avg(conversion_rate) as Avg_Conversion_Rate
from table1
group by campaign_channel),
DatasetBenchmark as
(select avg(Total_Ad_Spend) as Benchmark_Spend,
avg(Avg_Conversion_Rate) as Benchmark_Avg_Conversion_Rate
from ChannelPerformance)
select
cp.campaign_channel,
cp.Total_Ad_Spend,
cp.Avg_Conversion_Rate
from
ChannelPerformance as cp
cross join 
DatasetBenchmark as db
where
cp.Total_Ad_Spend < db.Benchmark_Spend
and
cp.Avg_Conversion_Rate > db.Benchmark_Avg_Conversion_Rate;

#18 How does conversion rate change across different levels of advertising spend?
select case
when ad_spend=0 then '0 USD'
when ad_spend between 1 and 1000 then '1-1000 USD'
when ad_spend between 1001 and 2000 then '1001-2000 USD'
when ad_spend between 2001 and 3000 then '2001-3000 USD'
when ad_spend between 3001 and 4000 then '3001-4000 USD'
when ad_spend between 4001 and 5000 then '4001-5000 USD'
when ad_spend between 5001 and 6000 then '5001-6000 USD'
when ad_spend between 6001 and 7000 then '6001-7000 USD'
when ad_spend between 7001 and 8000 then '7001-8000 USD'
when ad_spend>8000 then '8000+ USD' 
end as ad_spend_tier,
avg(conversion_rate) as Avg_Conversion_Rate
from table1
group by ad_spend_tier
order by ad_spend_tier asc;

#19 How does website engagement differ between converted and non-converted customers?
#Consider website_visits, pages_per_visit, and time_on_site.
select
conversion,
avg(website_visits) as avg_website_visits,
avg(pages_per_visit) as avg_page_per_visit,
avg(time_on_site) as avg_time_on_site
from table1
group by
conversion;

#20 How does email engagement differ between converted and non-converted customers?
# Consider email_opens and email_clicks.
select
conversion,
avg(email_opens) as avg_email_opens,
avg(email_clicks) as avg_email_clicks
from table1
group by conversion;


#21 How does previous purchase behaviour affect conversion rate?
select 
case
when previous_purchase=0 then '0 previous purchase'
when previous_purchase between 1 and 3 then '1-3 previous purchases'
when previous_purchase between 4 and 10 then '4-10 previous puchases'
else '10+ previous purchases'
end as purchase_tier,
count(*) as Total_Customers,
avg(conversion_rate) as Avg_Conversion_Rate
from table1
group by purchase_tier;

#22 How does loyalty-point level affect conversion rate?
select
count(customer_id) as Total_Customers,
case
when loyalty_points between 1 and 500 then '1-500 points (Bronze)'
when loyalty_points between 501 and 1500 then '501-1500 points (Silver)'
when loyalty_points between 1501 and 3000 then '1501-3000 points (Gold)'
else '3000+ points (Diamond)' 
end as loyalty_tier,
avg(conversion_rate) as Avg_Conversion_Rate 
from table1
group by loyalty_tier;

#23 Do customers with higher website engagement, email engagement, and previous purchases have higher conversion rates?
select
conversion,
avg(click_through_rate) as avg_ctr,
avg(time_on_site) as avg_time_spent,
avg(website_visits) as avg_website_visit,
avg(email_opens) as avg_email_opens,
avg(email_clicks) as avg_email_click,
avg(previous_purchase) as avg_previous_purchase
from table1
group by conversion;


#24 Rank all campaign_channel values by conversion rate and show their total conversions and total ad spend.
select
campaign_channel,
avg(conversion_rate),
sum(ad_spend) as Total_Ad_Spend,
sum(case when conversion='Yes' then 1 else 0 end) as Total_Conversions
from table1
group by campaign_channel;



