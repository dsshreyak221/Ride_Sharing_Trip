# Ride Sharing Trip Analysis (SQL Project)

## About the Project
This project is based on analyzing ride-sharing trip data using SQL.  
The main idea behind this project is to understand how trip-related data can be stored in a database and how meaningful insights can be extracted using SQL queries.

Through this project, I worked on real-world scenarios similar to ride-sharing platforms, where trip details such as distance, fare, drivers, and riders need to be analyzed efficiently.

---

## Problem Statement
Ride-sharing services generate a large amount of trip data every day.  
Without proper data organization and analysis, it becomes difficult to track trips, calculate fares, and evaluate driver performance.

This project solves this problem by using a relational database and SQL queries to analyze trip data in a structured way.

---

## What This Project Does
- Stores ride-sharing trip information in database tables
- Analyzes trips based on distance and fare
- Retrieves driver-wise and rider-wise trip details
- Uses SQL queries to perform filtering, grouping, and aggregation
- Helps in understanding patterns in trip data

---

## Technologies Used
- SQL (MySQL)
- MySQL Workbench

---

## Database Overview
The database consists of multiple related tables, such as:
- `trips` – contains trip details like distance, fare, and trip date
- `drivers` – contains driver information
- `riders` – contains rider information

Primary keys and foreign keys are used to connect these tables and maintain data consistency.

---

## How to Run the Project
1. Open MySQL Workbench
2. Create a new database
3. Import the file `ride_sharing_trip.sql`
4. Execute the SQL script
5. Run the queries to view and analyze the trip data

---

## Sample Analysis Performed
- Total number of trips
- Average fare per trip
- Trips completed by each driver
- Highest earning drivers
- Distance-based trip analysis

---

## What I Learned
- How to design relational databases
- Writing SQL queries using JOINs, GROUP BY, and aggregate functions
- Analyzing real-world data using SQL
- Understanding how databases are used in practical applications
