# Digital Marketing Campaign Performance Analysis

## Short Project Overview
This project analyzes the performance of digital marketing campaigns across 8,000 customers to evaluate conversion efficiency, customer demographic patterns, and channel ROI. By processing raw marketing data with SQL and building an interactive Power BI dashboard, the analysis reveals key behavior signals (such as time on site and email clicks) and identifies optimized channel allocation strategies, achieving an overall campaign conversion rate of 87.65%.

## Visual Snapshot
![Digital Marketing Campaign Performance Dashboard](Dashboard_Snapshot.png)

> **Key Dashboard Metrics:** 
> * **Total Audience:** 8,000 Customers | **Total Conversions:** 7,012 (87.65% Conversion Rate)
> * **Total Ad Spend:** $40.01M | **Average Ad Spend per Customer:** $5,000.94
> * **Top Performing Channel:** Referral Marketing (88.31% Conversion Rate)
> * **Top Campaign Focus:** Conversion-optimized campaigns (93.36% Conversion Rate)

## Repository Structure
```plain
├── data/
│   ├── raw/                       # Original raw marketing performance dataset (Kaggle)
│   └── processed/                 # Cleaned dataset with binned demographics & formatted labels
├── sql/
│   ├── schema_setup.sql           # Database setup and table schema definitions
│   └── exploratory_queries.sql    # SQL queries for demographic, channel, and engagement analysis
├── dashboard/
│   └── Marketing_Performance_Dashboard.pbix  # Interactive Power BI dashboard file
├── docs/
│   ├── Report.pdf                 # Full analytical project report
│   └── Campaign_Performance_Presentation.pptx # Executive summary slides
├── README.md                      # Project documentation and summary
└── requirements.txt               # Required Python packages and dependencies
```

## Setup and Installation

### Prerequisites
* Python 3.8+
* MySQL Database Workbench / Server
* Power BI Desktop (to view `.pbix` interactive file)

### Installation & Execution Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Sarfraj-Ahmad-ux/Digital-Marketing-Campaign-Performance-Analysis.git
   cd Digital-Marketing-Campaign-Performance-Analysis
   ```

2. **Set up the virtual environment & install dependencies:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. **Database Setup & SQL Analysis:**
   * Import `data/processed/` clean data into your MySQL database instance.
   * Run the SQL scripts in `sql/exploratory_queries.sql` to execute campaign performance metrics queries.

4. **Power BI Dashboard:**
   * Open `dashboard/Marketing_Performance_Dashboard.pbix` using Power BI Desktop to interactively explore campaign performance across demographic filters and engagement metrics.

## Key Business Insights & Recommendations
* **Double Down on Conversion-Focused Campaigns:** Campaigns specifically optimized for direct conversion yielded a **93.36% conversion rate** with the lowest cost per conversion ($5,312.06) compared to Awareness or Consideration (~85.56%).
* **Scale Spend on Email & Social Media:** Reallocate marketing budget to Email and Social Media channels due to high engagement efficiency and lower acquisition costs.
* **Retarget Engaged Users:** Visitors who converted spent **26.5% more time on site** (7.93 min vs 6.27 min) and had **32.5% higher email click rates**. Target high-intent signals with automated retention flows.

## Links to Full Reports
For a deep dive into methodology, SQL code explanations, and business insights, see the [**Report.pdf**](docs/Report.pdf) or [**Presentation Slides**](docs/Campaign_Performance_Presentation.pptx) in this repository.
