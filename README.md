# Digital Marketing Campaign Performance Analysis

## Table of Contents
- [1. Project Title](#1-project-title)
- [2. Brief One Line Summary](#2-brief-one-line-summary)
- [3. Overview](#3-overview)
- [4. Problem Statement](#4-problem-statement)
- [5. Data Sets](#5-data-sets)
- [6. Tools And Technologies](#6-tools-and-technologies)
- [7. Methods](#7-methods)
- [8. Key Insights](#8-key-insights)
- [9. Dashboard](#9-dashboard)
- [10. Result And Conclusion](#10-result-and-conclusion)

---

## 1. Project Title
**Digital Marketing Campaign Performance Analysis**

---

## 2. Brief One Line Summary
An end-to-end data analytics project processing digital marketing campaign data in Python, querying business metrics using MySQL, and building an interactive Power BI dashboard to identify the channels, campaign types, and behaviors that drive conversions.

---

## 3. Overview
This project synthesizes raw digital marketing campaign data into actionable business intelligence. It covers data cleaning and feature binning in Python, relational database modeling and analytical querying in MySQL, and interactive visualization in Power BI to evaluate conversion drivers across audience demographics, marketing channels, and customer engagement signals.

---

## 4. Problem Statement
Marketing teams often struggle to identify which channels, campaign types, and audience segments actually convert, leading to inefficient ad spend and missed retargeting opportunities. This project analyzes 8,000 customer records to uncover what drives conversions, evaluate channel and campaign-type efficiency, and provide data-backed recommendations to optimize marketing budget allocation.

---

## 5. Data Sets
- **Dataset Size:** 8,000 customer records sourced from Kaggle.
- **Attributes Analyzed:** Customer demographics (Age, Gender, Income Group), Campaign Channel (Referral, PPC, Email, SEO, Social Media), Campaign Type (Conversion, Awareness, Consideration, Retention), Ad Spend, Click-Through Rate (CTR), Time Spent on Site, Email Clicks, Email Opens, Previous Purchases, and Conversion Status (Yes/No).

---

## 6. Tools And Technologies
- **Data Preprocessing:** Python (Pandas)
- **Database Management & SQL Querying:** MySQL
- **Data Visualization & BI Dashboards:** Power BI Desktop

---

## 7. Methods
1. **Data Sanitization & Preprocessing (Python):**
   - Cleaned column names into clear, standardized formats.
   - Checked for and confirmed zero missing values across the dataset.
   - Group-binned customer age into demographic tiers and income into High/Medium/Low tiers.
   - Created human-readable target labels for conversion status.

2. **Database Querying & Analysis (MySQL):**
   - Uploaded the cleaned dataset to a MySQL database to extract clear business metrics without clutter.
   - Calculated conversion rates by gender, age group, and income tier.
   - Compared conversion rate and ad spend efficiency across marketing channels and campaign types.
   - Analyzed engagement behavior (site time, email clicks, previous purchases) between converted and non-converted customers.

3. **Dashboard Design (Power BI):**
   - Connected the dataset to Power BI for interactive visual reporting.
   - Built interactive slicers (Age Group, Conversion, Income Group, Gender).
   - Structured visual KPI cards for Total Customers (8K), Total Ad Spend (40.01M), Total Conversions (7K), and Avg Conversion Rate (10.44%).
   - Designed custom charts for Ad Spend & Conversion Rate by Channel, Conversion by Age Group, Conversion by Campaign Type and Income Group, and Conversion Rate vs. Email Opens.

---

## 8. Key Insights
- **Overall Performance:** Out of 8,000 customers analyzed, 7,012 converted, an overall conversion rate of **87.65%**, with an average ad spend of **$5,000.94** per customer and an average CTR of **15.48%**.
- **Audience & Demographics:** Conversion is consistently high across all segments — nearly identical between female (87.62%) and male (87.69%) audiences, highest among the 32–43 age group (87.93%), and strongest among high-income customers (88.15%) versus medium (87.51%) and low-income (87.29%) tiers.
- **Channel & Campaign Efficiency:** **Referral (88.31%)** and **PPC (88.28%)** are the top-converting channels, while **Social Media and Email operate on lower ad spend budgets while outperforming baseline expectations**, making them cost-effective scaling opportunities. Campaigns optimized specifically for **Conversion** achieve a **93.36%** conversion rate at the lowest cost per conversion (**$5,312.06**), versus ~85.56% for Awareness/Consideration campaigns.
- **Engagement Signals:** Converted customers spend **+26.5%** more time on the website (7.93 vs. 6.27 minutes), show **+32.5%** higher email click frequency (4.61 vs. 3.48 clicks), and average **+27.0%** more previous purchases than non-converted customers — signaling that engagement and purchase history strongly predict future conversion.

---

## 9. Dashboard
Below is the interactive Power BI Digital Marketing Campaign Performance Dashboard developed for this analysis:

![Digital Marketing Campaign Performance Dashboard](./dashboard.png)

---

## 10. Result And Conclusion
1. **Double Down on Conversion-Specific Campaigns:** Shift more marketing budget toward campaigns optimized for conversion rather than Awareness or Consideration, since they deliver a materially higher conversion rate (93.36%) at a lower cost per conversion.
2. **Scale Spend on Email & Social Media:** Reallocate budget into Email and Social Media channels to capitalize on their proven cost-efficiency — strong conversion performance despite lower ad spend.
3. **Retarget Engaged Users:** Set up automated retargeting for customers who have previously purchased or spent significant time on the site, since both signals are strongly associated with a higher likelihood of converting again.
