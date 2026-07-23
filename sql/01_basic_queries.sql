/*==============================================================
 Project : Interactive Tourism Analytics & Travel Insights Platform
 File    : 01_basic_queries.sql
 Author  : Karthik Gollapudi

 Description:
 This file contains beginner-level SQL queries used to analyze
 hotel booking data. These queries focus on basic aggregation,
 filtering, and business KPIs.
==============================================================*/

USE TourismAnalyticsDB;
GO

/*==============================================================
Query 1: Total Bookings

Business Question:
How many hotel bookings are available in the dataset?

SQL Concepts:
COUNT()

Expected Output:
One row showing the total number of bookings.
==============================================================*/

SELECT
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final;
GO


/*==============================================================
Query 2: Total Estimated Revenue

Business Question:
What is the total estimated revenue generated from all bookings?

SQL Concepts:
SUM()

Expected Output:
Total estimated revenue.
==============================================================*/

SELECT
    SUM(estimated_revenue) AS Total_Estimated_Revenue
FROM hotel_bookings_final;
GO


/*==============================================================
Query 3: Average Stay Duration

Business Question:
What is the average number of nights guests stay?

SQL Concepts:
AVG()

Expected Output:
Average stay duration.
==============================================================*/

SELECT
    AVG(total_stay) AS Average_Stay
FROM hotel_bookings_final;
GO


/*==============================================================
Query 4: Average Daily Rate (ADR)

Business Question:
What is the average room price per day?

SQL Concepts:
AVG()

Expected Output:
Average ADR.
==============================================================*/

SELECT
    AVG(adr) AS Average_ADR
FROM hotel_bookings_final;
GO


/*==============================================================
Query 5: Minimum and Maximum ADR

Business Question:
What are the lowest and highest room prices?

SQL Concepts:
MIN()
MAX()

Expected Output:
Minimum ADR
Maximum ADR
==============================================================*/

SELECT
    MIN(adr) AS Minimum_ADR,
    MAX(adr) AS Maximum_ADR
FROM hotel_bookings_final;
GO


/*==============================================================
Query 6: Total Bookings by Hotel Type

Business Question:
Which hotel receives more bookings?

SQL Concepts:
GROUP BY
COUNT()

Expected Output:
Bookings for each hotel type.
==============================================================*/

SELECT
    hotel,
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final
GROUP BY hotel;
GO


/*==============================================================
Query 7: Estimated Revenue by Hotel Type

Business Question:
Which hotel generates higher estimated revenue?

SQL Concepts:
GROUP BY
SUM()

Expected Output:
Estimated revenue for each hotel.
==============================================================*/

SELECT
    hotel,
    SUM(estimated_revenue) AS Total_Revenue
FROM hotel_bookings_final
GROUP BY hotel;
GO


/*==============================================================
Query 8: Booking Status Distribution

Business Question:
How many bookings were completed and canceled?

SQL Concepts:
GROUP BY
COUNT()

Expected Output:
Completed bookings
Canceled bookings
==============================================================*/

SELECT
    booking_status,
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final
GROUP BY booking_status;
GO


/*==============================================================
Query 9: Average Stay by Hotel

Business Question:
Which hotel has the highest average stay duration?

SQL Concepts:
GROUP BY
AVG()

Expected Output:
Average stay for each hotel.
==============================================================*/

SELECT
    hotel,
    AVG(total_stay) AS Average_Stay
FROM hotel_bookings_final
GROUP BY hotel;
GO


/*==============================================================
Query 10: Top 10 Countries by Bookings

Business Question:
Which countries contribute the highest number of bookings?

SQL Concepts:
TOP
GROUP BY
ORDER BY
COUNT()

Expected Output:
Top 10 countries ranked by total bookings.
==============================================================*/

SELECT TOP 10
    country,
    COUNT(*) AS Total_Bookings
FROM hotel_bookings_final
GROUP BY country
ORDER BY Total_Bookings DESC;
GO