# Digital Marketing Campaign Performance Analysis

![Digital Marketing Campaign Performance Dashboard](dashboard_screenshot.png)

## Short Project Overview
This project evaluates the performance of digital marketing campaigns across an audience of 8,000 customers to identify key drivers of conversion and optimize ad spend allocation. Using raw customer performance data sourced from Kaggle, the data was cleaned, structured, and queried in MySQL to extract key demographic, channel, and behavioral metrics, before being visualized through an interactive Power BI dashboard. The analysis revealed an overall conversion rate of **87.65%**, highlighting that conversion-focused campaigns (**93.36% conversion rate**) and engagement signals like site dwell time and email interaction are the strongest predictors of marketing ROI.

---

## Visual Snapshot
Below is a visual preview of the interactive Power BI dashboard summarizing key KPI cards, channel performance, audience demographics, and behavioral trend analysis:

<div align="center">
  <img src="dashboard_screenshot.png" alt="Digital Marketing Campaign Performance Dashboard" width="900"/>
</div>

---

## Repository Structure
```text
├── data/
│   ├── raw_campaign_data.csv          # Original raw marketing dataset from Kaggle
│   └── cleaned_campaign_data.csv      # Cleaned dataset with binned age/income & standardized labels
├── sql/
│   ├── 01_schema_setup.sql            # Table structure & data import script
│   └── 02_campaign_analysis_queries.sql # SQL queries for demographic, channel & conversion metrics
├── dashboards/
│   └── Digital_Marketing_Dashboard.pbix # Power BI interactive dashboard file
├── docs/
│   ├── Digital_Marketing_Report.pdf   # Complete detailed project report
│   └── Presentation_Slides.pptx       # Executive presentation deck
├── README.md                          # Project documentation and summary
└── requirements.txt                   # Environment setup & tool versions
