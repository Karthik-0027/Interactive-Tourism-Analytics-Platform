# Interactive Tourism Analytics Platform

## Overview

The Interactive Tourism Analytics Platform is an end-to-end data analytics project that analyzes hotel booking data to generate actionable business insights. The project follows a complete analytics workflow, beginning with raw data preprocessing and ending with an interactive Power BI dashboard for business decision-making.

The solution combines Python for data preparation, Microsoft SQL Server for data storage and querying, and Power BI for visualization, demonstrating a complete business intelligence pipeline.

---

## Business Problem

Hotels collect large volumes of booking data from customers across different countries, seasons, and accommodation types. Without structured analysis, it becomes difficult to understand booking trends, customer behavior, cancellations, and revenue performance.

This project addresses these challenges by transforming raw booking data into meaningful visualizations that support data-driven decision making.

---

## Objectives

- Clean and preprocess raw hotel booking data.
- Perform feature engineering to improve analytical capabilities.
- Conduct exploratory data analysis to identify trends and patterns.
- Load processed data into Microsoft SQL Server.
- Build an interactive Power BI dashboard.
- Generate business insights from booking and revenue data.

---

## Technology Stack

| Category | Technology |
|----------|------------|
| Programming Language | Python |
| Data Analysis | Pandas, NumPy |
| Data Visualization | Matplotlib, Seaborn |
| Database | Microsoft SQL Server |
| Query Language | SQL |
| Business Intelligence | Microsoft Power BI |
| Version Control | Git, GitHub |

---

## Project Workflow

```
Raw Dataset
      │
      ▼
Data Cleaning
      │
      ▼
Feature Engineering
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Python ETL
      │
      ▼
Microsoft SQL Server
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

## Repository Structure

```text
Interactive-Tourism-Analytics-Platform/

├── data/
│   ├── raw/
│   ├── cleaned/
│   └── processed/
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_feature_engineering.ipynb
│   ├── 03_eda.ipynb
│   └── 04_python_etl_sqlserver.ipynb
│
├── sql/
│   ├── 01_basic_queries.sql
│   ├── 02_intermediate_queries.sql
│   └── 03_advanced_queries.sql
│
├── powerbi/
│   ├── TourismAnalyticsDashboard.pbix
│   └── TourismAnalyticsDashboard.pdf
│
├── screenshots/
│   └── dashboard.png
│
├── README.md
├── requirements.txt
├── LICENSE
└── .gitignore
```

---

## Dashboard

The Power BI dashboard provides an interactive view of hotel booking performance through multiple analytical perspectives, including:

- Revenue by hotel type
- Monthly booking trends
- Booking status distribution
- Revenue by season
- Top revenue-generating countries
- Guest type analysis
- Interactive filters for hotel type, country, season, and guest category

Dashboard Preview:

```markdown
![Dashboard](screenshots/dashboard.png)
```

---

## Key Performance Indicators

The dashboard includes the following business metrics:

- Total Bookings
- Total Revenue
- Total Guests
- Average Daily Rate (ADR)
- Average Stay Duration
- Cancellation Rate

---

## Key Insights

The analysis provides insights into:

- Seasonal booking behavior
- Revenue contribution across hotel categories
- Customer booking patterns
- Cancellation trends
- Geographic revenue distribution
- Guest segment analysis

These insights can support pricing strategies, operational planning, and customer-focused decision making.

---

## How to Run

1. Clone the repository.

```bash
git clone https://github.com/yourusername/Interactive-Tourism-Analytics-Platform.git
```

2. Install the required Python libraries.

```bash
pip install -r requirements.txt
```

3. Execute the notebooks sequentially.

4. Run the SQL scripts in Microsoft SQL Server.

5. Open the Power BI dashboard using the `.pbix` file.

---

## Skills Demonstrated

- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- SQL Query Development
- ETL Pipeline
- Data Modeling
- DAX
- Power BI Dashboard Development
- Business Intelligence
- Data Visualization

---

## Future Improvements

Potential enhancements include:

- Real-time data integration
- Automated ETL workflows
- Predictive booking analysis
- Cloud deployment
- Advanced business forecasting

---

## Author

Karthik Gollapudi

B.Tech in Data Science