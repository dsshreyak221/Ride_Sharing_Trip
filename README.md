# Ride Sharing Trip Analysis (SQL Project)

## About the Project
This project focuses on analyzing ride-sharing trip data using SQL.  
The idea behind this project is to understand how ride-sharing platforms store trip information and how meaningful insights can be generated using relational databases.

The project uses a simple but realistic database design involving users, drivers, and trips.

---

## Problem Statement
Ride-sharing platforms generate a large amount of data every day, such as trip details, distance traveled, and fare amounts.  
Without a structured database, it becomes difficult to analyze trips, track driver activity, or understand user behavior.

This project solves that problem by storing trip data in a relational database and analyzing it using SQL queries.

---

## Technologies Used
- SQL (MySQL)
- MySQL Workbench

---

## ER Diagram
The ER diagram below represents the structure of the database and the relationships between users, drivers, and trips.

https://github.com/dsshreyak221/Ride_Sharing_Trip/blob/cc86bde50a64b6638712e4f8e250130c030038fa/RIde_Sharing_Trip.png

---

## Database Overview
The database consists of three main tables:

- **users**  
  Stores user details such as user name and city.

- **drivers**  
  Stores driver information including driver name and city.

- **trips**  
  Stores trip details such as trip date, time, distance traveled, and fare.
  Each trip is linked to one user and one driver using foreign keys.

### Relationships
- One user can have multiple trips (one-to-many)
- One driver can complete multiple trips (one-to-many)
- Each trip is associated with exactly one user and one driver

---

## How to Run the Project
1. Open MySQL Workbench
2. Create a new database
3. Import the file `ride_sharing_trip.sql`
4. Execute the SQL script
5. Run SQL queries to analyze the trip data

---
