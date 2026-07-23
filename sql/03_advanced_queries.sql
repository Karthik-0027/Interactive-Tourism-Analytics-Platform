/*==============================================================
 Project : Interactive Tourism Analytics & Travel Insights Platform
 File    : 03_advanced_queries.sql
 

 Description:
 Advanced SQL queries using Window Functions, CTEs,
 Views, Ranking, and Business Analytics.
==============================================================*/

USE TourismAnalyticsDB;
GO

/*==============================================================
Query 21: Rank Hotels by Estimated Revenue

Business Question:
Which hotel generates the highest revenue?

SQL Concepts:
RANK()
==============================================================*/

SELECT
    hotel,
    SUM(estimated_revenue) AS Total_Revenue,
    RANK() OVER (
        ORDER BY SUM(estimated_revenue) DESC
    ) AS Revenue_Rank
FROM hotel_bookings_final
GROUP BY hotel;
GO


/*==============================================================
Query 22: Rank Countries by Bookings

SQL Concepts:
DENSE_RANK()
==============================================================*/

SELECT
    country,
    COUNT(*) AS Total_Bookings,
    DENSE_RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS Country_Rank
FROM hotel_bookings_final
GROUP BY country;
GO


/*==============================================================
Query 23: Row Number for Highest Revenue Bookings

SQL Concepts:
ROW_NUMBER()
==============================================================*/

SELECT
    hotel,
    country,
    estimated_revenue,
    ROW_NUMBER() OVER(
        ORDER BY estimated_revenue DESC
    ) AS Row_Num
FROM hotel_bookings_final;
GO


/*==============================================================
Query 24: Top Revenue Hotel using CTE

SQL Concepts:
CTE
==============================================================*/

WITH RevenueCTE AS
(
    SELECT
        hotel,
        SUM(estimated_revenue) AS Revenue
    FROM hotel_bookings_final
    GROUP BY hotel
)

SELECT *
FROM RevenueCTE
ORDER BY Revenue DESC;
GO


/*==============================================================
Query 25: Running Revenue by Hotel

SQL Concepts:
Window Aggregate
==============================================================*/

SELECT
    hotel,
    estimated_revenue,
    SUM(estimated_revenue) OVER(
        PARTITION BY hotel
        ORDER BY estimated_revenue
    ) AS Running_Revenue
FROM hotel_bookings_final;
GO


/*==============================================================
Query 26: Average Revenue by Season using CTE
==============================================================*/

WITH SeasonRevenue AS
(
    SELECT
        season,
        AVG(estimated_revenue) AS AvgRevenue
    FROM hotel_bookings_final
    GROUP BY season
)

SELECT *
FROM SeasonRevenue
ORDER BY AvgRevenue DESC;
GO


/*==============================================================
Query 27: Top Revenue Countries

SQL Concepts:
TOP
ORDER BY
==============================================================*/

SELECT TOP 10
    country,
    SUM(estimated_revenue) AS Revenue
FROM hotel_bookings_final
GROUP BY country
ORDER BY Revenue DESC;
GO


/*==============================================================
Query 28: View Creation

Business Purpose:
Reusable report for Power BI
==============================================================*/

CREATE VIEW vw_HotelRevenue
AS

SELECT
    hotel,
    SUM(estimated_revenue) AS Revenue,
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final
GROUP BY hotel;
GO


/*==============================================================
Query 29: Query the View
==============================================================*/

SELECT *
FROM vw_HotelRevenue;
GO


/*==============================================================
Query 30: Top 5 Highest Revenue Bookings
==============================================================*/

SELECT TOP 5
    hotel,
    country,
    estimated_revenue
FROM hotel_bookings_final
ORDER BY estimated_revenue DESC;
GO