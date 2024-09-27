									/* [ SQL Analysis Project ] */

/* Create Database */

CREATE DATABASE Company;

/* Use that Database */

use Company;

/* Create Job Table */

CREATE TABLE jobs(
	id INTEGER,
	work_year INTEGER,
	experience_level VARCHAR(20),
	employment_type VARCHAR(20),
	job_title VARCHAR(20),
	salary INTEGER,
	salary_currency VARCHAR(20),
	salary_in_usd INTEGER,
	employee_residence VARCHAR(20),
	remote_ratio INTEGER,
	company_location VARCHAR(20),
	company_size VARCHAR(20)
);

/* Create Companies Table */

CREATE TABLE companies(
id INTEGER,
company_name VARCHAR(20)
);

SELECT * FROM jobs;

SELECT * FROM companies;

								/* Task 1:- Basic Analysis (Queries) */

/* 1) What is the average salary for all the jobs in the dataset? */

SELECT AVG(salary) AS avg_salary FROM jobs;

/* 2) What is the highest salary in the dataset and Which job role does it correspond to? */

SELECT MAX(salary) AS highest_salary, job_title FROM jobs; 

/* 3) What is the average salary for Data Scientist in US? */

SELECT AVG(salary) AS avg_salary FROM jobs
WHERE job_title = "Data Scientist" AND company_location = "US";

/* 4) What is the number of jobs available for each job title? */

SELECT job_title, COUNT(*) AS num_jobs FROM jobs GROUP BY job_title;

/* 5) What is the total salary paid for all Data Analyst jobs in DE(Location)? */

SELECT SUM(salary) AS total_salary_paid FROM jobs 
WHERE job_title = "Data Analyst" AND company_location = "DE";

/* 6) What are the TOP 5 highest paying job titles and their corresponding average salaries? */

SELECT job_title, AVG(salary) AS avg_salary FROM jobs
GROUP BY job_title
ORDER BY avg_salary DESC
LIMIT 5; 

/* 7) What is the Number of jobs available in each location? */

SELECT company_location, COUNT(*) as no_of_jobs FROM jobs
GROUP BY company_location;

/* 8) What are the TOP 3 job titles that have the most jobs available in dataset? */

SELECT job_title, COUNT(*) as no_of_jobs FROM jobs
GROUP BY job_title
ORDER BY no_of_jobs DESC
LIMIT 3; 

/* 9) What is the average salary for Data Engineers in US? */

SELECT AVG(salary) AS avg_salary, job_title FROM jobs
WHERE job_title = "Data Engineer" AND company_location = "US";

/* 10) What are the TOP 5 cities with the highest average salaries? */

SELECT company_location, AVG(salary) AS avg_salary FROM jobs
GROUP BY company_location
ORDER BY avg_salary DESC
LIMIT 5;

	