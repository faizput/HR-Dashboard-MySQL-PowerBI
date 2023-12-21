-- QUESTIONS
select termdate from hr;
-- 1. What is the gender breakdown of employees in the company?
select gender, count(*) AS count
from hr
where age>=18
group by gender;
-- 2. What is the race/ethnicity breakdown of employees in the company?
select race, count(*) AS count
from hr
where age>=18
group by race
order by count(*)desc;
-- 3. What is the age distribution of employees in the company?
select
	min(age) AS youngest,
    max(age) AS oldest
FROM hr
WHERE age>=18;

select
	case
		when age>=18 and age <=24 then '18-24'
        when age>=25 and age <=34 then '25-34'
        when age>=35 and age <=44 then '35-44'
        when age>=45 and age <=54 then '45-54'
        when age>=55 and age <=64 then '55-64'
		else'65+'
	end as age_group,gender,
    count(*)as count
from hr
WHERE age>=18
group by age_group,gender
order by age_group,gender;

-- 4. How many employees work at headquarters versus remote locations?
select location, count(*) as count
from hr
where age>= 18
group by location;

-- 5. What is the average length of employment for employees who have been terminated?

-- 6. How does the gender distribution vary across departments and job titles?


-- 7. What is the distribution of job titles across the company?


-- 8. Which department has the highest turnover rate?


-- 9. What is the distribution of employees across locations by city and state?


-- 10. How has the company's employee count changed over time based on hire and term dates?

-- 11. What is the tenure distribution for each department?