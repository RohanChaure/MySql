use anadb;
select * from employee;
select * from employee where deptno=20 and salary >3000;
select sum(case when marks > 50 and marks <=80 then 1 end) as first_class_count, sum(case when marks >80 then 1 end) as distinction_count from students;
select distinct id, city from station where id%2=0;
select distinct count(CITY) - count(city) from station;
select distinct city from station where city rlike '^[^aeiouAEIOU].*|.*[^AEIOUaeiou]$';
select distinct city from station where city not like '[aeiou]%';
select distinct city from station where city like '[AEIOU]%[AEIOU]';
select city from station where right(city,1) in ('a','e','i','o','u');
select * from emp;
desc  emp;
select first_name, salary, hire_date from emp where salary >2000 and month(datediff(hire_date,'1990-01-03'));
select * from employee;
select sum(salary), deptno from employee group by deptno having deptno in (10,20,30);
select name, population from city where population > 100000;
select district, sum(population) from city where district='california';
select countrycode, avg(population) from city group by countrycode;




1. select all employees in department 10 whose salary is greater than 3000. [table: employee]

2. The grading of students based on the marks they have obtained is done as follows

	40 to 50 -> Second Class
	50 to 60 -> First Class
	60 to 80 -> First Class
	80 to 100 -> Distinctions

	a. How many students  have graduated with first class?
	b. How many students  have obtained distinction?  [table: students]

3. Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer.[table: station]

4. Find the difference between the total number of city entries in the table and the number of distinct city entries in the table. In other words, if N is the number of city entries in station, and N1 is the number of distinct city names in station, write a query to find the value of N-N1 from station.[table: station]

5. a. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. [Hint: Use RIGHT() / LEFT() methods ]
   b. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
   c. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
   d. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. [table: station]

7. Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employed for less than 10 months. Sort your result by ascending emp_id. [table: emp]

8. 12. How much money does the company spend every month on salaries for each department? [table: emp]

Expected Result:

+-------------+--------+
| sum(salary) | deptno |
+-------------+--------+
|    30700.00 |     10 |
|    13600.00 |     20 |
|     2600.00 |     30 |
+-------------+--------+

9. How many cities in the CITY table have a Population larger than 100000. [table: city]

10. What is the total population of California? [table: city]

11. What is the average population of the districts in each country? [table: city]

Expected Result:

+-------------+-----------------+
| countrycode | avg(population) |
+-------------+-----------------+
| JPN         |     175839.2000 |
| NLD         |     593321.0000 |
| USA         |     120225.8750 |
+-------------+-----------------+