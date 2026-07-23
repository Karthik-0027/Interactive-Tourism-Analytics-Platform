/*==============================================================
 Project : Interactive Tourism Analytics & Travel Insights Platform
 File    : 02_intermediate_queries.sql
 Author  : Karthik Gollapudi

 Description:
 Intermediate SQL queries focusing on filtering,
 business analytics, conditional logic, and aggregations.
==============================================================*/

USE TourismAnalyticsDB;
GO

/*==============================================================
Query 11: Completed Bookings

Business Question:
How many bookings were successfully completed?
==============================================================*/

SELECT COUNT(*) AS Completed_Bookings
FROM hotel_bookings_final
WHERE booking_status = 'Completed';
GO


/*==============================================================
Query 12: Canceled Bookings

Business Question:
How many bookings were canceled?
==============================================================*/

SELECT COUNT(*) AS Canceled_Bookings
FROM hotel_bookings_final
WHERE booking_status = 'Canceled';
GO


/*==============================================================
Query 13: Average Revenue by Hotel

Business Question:
Which hotel generates the highest average booking revenue?
==============================================================*/

SELECT
    hotel,
    AVG(estimated_revenue) AS Average_Revenue
FROM hotel_bookings_final
GROUP BY hotel;
GO


/*==============================================================
Query 14: Revenue by Season

Business Question:
Which season generates the highest estimated revenue?
==============================================================*/

SELECT
    season,
    SUM(estimated_revenue) AS Total_Revenue
FROM hotel_bookings_final
GROUP BY season
ORDER BY Total_Revenue DESC;
GO


/*==============================================================
Query 15: Average Stay by Guest Type

Business Question:
Which guest type stays the longest?
==============================================================*/

SELECT
    guest_type,
    AVG(total_stay) AS Average_Stay
FROM hotel_bookings_final
GROUP BY guest_type
ORDER BY Average_Stay DESC;
GO


/*==============================================================
Query 16: Family Bookings

Business Question:
How many bookings are family bookings?
==============================================================*/

SELECT
    family_booking,
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final
GROUP BY family_booking;
GO


/*==============================================================
Query 17: Top 5 Countries by Revenue

Business Question:
Which countries contribute the highest estimated revenue?
==============================================================*/

SELECT TOP 5
    country,
    SUM(estimated_revenue) AS Total_Revenue
FROM hotel_bookings_final
GROUP BY country
ORDER BY Total_Revenue DESC;
GO


/*==============================================================
Query 18: Market Segments with More Than 1000 Bookings

Business Question:
Which market segments have significant booking volume?

SQL Concepts:
HAVING
==============================================================*/

SELECT
    market_segment,
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final
GROUP BY market_segment
HAVING COUNT(*) > 1000
ORDER BY Total_Bookings DESC;
GO


/*==============================================================
Query 19: Lead Time Category Analysis

Business Question:
How are bookings distributed by lead time category?
==============================================================*/

SELECT
    lead_time_category,
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final
GROUP BY lead_time_category
ORDER BY Total_Bookings DESC;
GO


/*==============================================================
Query 20: Revenue Category using CASE

Business Question:
Classify bookings into High, Medium, and Low revenue.
==============================================================*/

SELECT
    hotel,
    estimated_revenue,
    CASE
        WHEN estimated_revenue >= 1000 THEN 'High Revenue'
        WHEN estimated_revenue >= 500 THEN 'Medium Revenue'
        ELSE 'Low Revenue'
    END AS Revenue_Category
FROM hotel_bookings_final;
GO