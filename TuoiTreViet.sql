 
select count(booking_status), booking_status
from tourism
group by booking_status

select *
from ngam_canh 

CREATE table booking_complete as
select *
from tourism
where booking_status = 'Completed'

select count(destination) as visit, destination 
from booking_complete
group by destination
order by visit desc

select count(tour_type) as visit, tour_type 
from booking_complete
group by tour_type
order by visit desc

SELECT 
    EXTRACT(MONTH FROM travel_date) AS month,
    EXTRACT(year FROM travel_date) AS year,
    count(booking_id)
FROM booking_complete
group BY month, year
order by year, month

select count(tour_type) as visit, tour_type
from booking_complete
where cust_segment like 'Student'
group by tour_type
order by visit 

select count(destination) as visit, destination
from booking_complete
where cust_segment = 'Student'
group by destination
order by visit desc