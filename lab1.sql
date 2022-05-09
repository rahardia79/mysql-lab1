show databases;
use state;
show tables;

-- Exercise 1:
-- What is the abbreviation of New York State?
-- COMMAND:
select * from abbrevs where state = "New York";
-- ANSWER : NY

-- Exercise 2:
-- What is the area of New York State?
-- COMMAND:
select * from areas where state = "New York";
-- ANSWER : 54475

-- Exercise 3:
-- What is the population of NY (New York State)?
-- COMMAND:
select * from population where (region = "NY" and ages="total" and year = "2012");
-- ANSWER : 19576125

-- Exercise 4:
-- For each year, what is the average state population (round to 2 decimal places with the ROUND function) for age under 18? (remember to exclude “USA”)
-- COMMAND:
select year, round(avg(population),2) from population where (region != "USA" and ages = "under18") group by year;
-- ANSWER (show partially)
-- 2013	1430768.08
-- 2012	1433652.29
-- 2011	1437914.40

-- Exercise 5:
-- Which state has the largest area? What about the smallest state?
select * from areas order by area desc limit 1; 
-- largest is Alaska at 656425
select * from areas order by area limit 1; 
-- smallest is DC at 68

-- Exercise 6:
-- What is the area of state CA (do not use California)?
select * from areas where state = (select state from abbrevs where abbreviation = "CA");
-- California	163707

-- Exercise 7:
-- What is the (total) population density per square mile (round to 2 decimal places) for each state in 2013?

-- Exercise 8:

-- What are the top 3 most populated states for each year? Return year, state, rank, and (total) population. (Hint: window functions)