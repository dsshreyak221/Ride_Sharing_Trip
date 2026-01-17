create database ride_sharing_trip_analysis;
-- (
-- topics:
-- >1 time analysis 
-- >2 revenue 
-- >3 user behaviour 
-- > Ranking & aggregation 

-- Business Problem :
-- > trips taken by users 
-- > driver's performance
-- > revenue trends 
-- > peak ride hours

-- )

-- 1 Users schema 
Create Table users (
user_id INT primary key,
user_name varchar(50),
city Varchar(50)
);

-- 2 Drivers Schema 
Create table drivers (
driver_id int primary key,
driver_name varchar(50),
city varchar(50)
);

-- 3 trips schema 
Create table Trips(
trips_is int primary key,
user_id int ,
driver_id int ,
trip_date date,
trip_time time, 
distance_km decimal(5,2),
fare decimal (10,2),
foreign key (user_id) references users(user_id),
foreign key (driver_id) references drivers(driver_id)
);

-- Insert data for users

INSERT INTO users VALUES
(1, 'Rahul', 'Mumbai'),
(2, 'Neha', 'Delhi'),
(3, 'Amit', 'Pune');

-- Insert data for drivers

INSERT INTO drivers VALUES
(101, 'Suresh', 'Mumbai'),
(102, 'Ramesh', 'Delhi'),
(103, 'Mahesh', 'Pune');

-- Insert data for trips 

INSERT INTO trips VALUES
(1001, 1, 101, '2024-01-10', '09:30:00', 12.5, 350),
(1002, 1, 101, '2024-01-12', '18:45:00', 8.2, 220),
(1003, 2, 102, '2024-01-15', '10:15:00', 15.0, 420),
(1004, 3, 103, '2024-01-18', '21:00:00', 6.5, 180);

-- I accidentally create a column with the wrong name ,
-- i use alter table to rename the column without affecting existing data

Alter table Trips 
rename column trips_is to trip_id;

-- Q1 Total Rides & Revenue per Driver
select d.driver_name,
count(t.trip_id) as total_rides,
sum(t.fare) as total_revenue
from trips t 
inner join drivers d 
on t.driver_id = d.driver_id 
group by driver_name

-- Q2 Peak Ride Hours 
select hour(trip_time) as hour,
count(*) as total_ride
from trips 
group by trip_time
order by total_ride desc

-- Q3 Users who took more than 1 ride
select u.user_name ,
count(t.trip_id) as total_ride
from users u 
inner join trips t 
on u.user_id = t.user_id
group by u.user_name
having count(t.trip_id) > 1;

-- Q4 Average Fare per KM

select round(avg(fare/distance_km),2) as avg_fare_km
from trips;

-- Q5 Highest-Earning Drivers
select driver_name, total_Revenue
from
(
select d.driver_name,
sum(t.fare) as total_Revenue,
rank() over(order by sum(t.fare) desc) as rank_revenue
from trips t 
inner join drivers d 
on t.driver_id = d.driver_id
group by d.driver_name
) ranked
where rank_revenue = 1;