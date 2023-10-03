Create Schema cars;
use cars;
 -- ReadData --
Select* from car_dekho;
-- To get a count of Total records
select count(*) from car_dekho;

-- Manager asked to employees how many cars will be available in 2023?--
select count(*) from car_dekho where year=2023;
-- Manager asked to employees how many cars will be available in 2021,2022,2020?--
select count(*) from car_dekho where year in (2021,2020,2022) group by year;
-- Client asked to print ,total of Cars by year excluding other details--
select year,count(*) from car_dekho  group by year;
-- Client asked car delaler ,to print how many diesel Cars will be there by year 
select year, count(*) from car_dekho where fuel = "Diesel" group by year;

-- Manager asked in which year there were more tham 100 cars
select year,count(*) from car_dekho group by year having count(*)>100; 

-- Manager asked ,ALl cars count deatils between 2015 and 2023we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;

-- Manager asked ,ALl cars  deatils between 2015 and 2023we need a complete list--
select * from car_dekho where year between 2015 and 2023;


