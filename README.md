# Data Analyst Job Market Analysis (SQL Project)

## 📌 Project Overview
This project analyzes the *Data Analyst job market* using SQL to uncover insights about salaries, required skills, and demand across different roles.

The dataset contains job postings for data-related roles including job titles, salaries, locations, and required skills.

The goal of this project is to explore the job market and identify:

- The highest paying Data Analyst jobs
- The most in-demand skills for Data Analysts
- The relationship between skills and salary
- The most valuable skills to learn for aspiring Data Analysts

---

## 📊 Business Questions
The SQL queries in this project were designed to answer the following questions:

1. What are the *top-paying Data Analyst jobs*?
2. What *skills are required* for these top-paying roles?
3. What *skills are most in demand* for Data Analysts?
4. Which *skills are associated with higher salaries*?
5. What are the *most optimal skills* for aspiring Data Analysts to learn?

---

## 🛠 Tools & Technologies
- SQL
- PostgreSQL
- Visual Studio Code
- Git & GitHub

---

## 🧠 SQL Techniques Used
This project demonstrates several SQL concepts including:

- Filtering data using WHERE
- Aggregation functions (AVG, COUNT, SUM)
- GROUP BY and ORDER BY
- Table Joins
- Data exploration queries
- Salary analysis

---

## 📈 Key Insights
Some insights discovered during the analysis include:

- Some companies offer significantly higher salaries for Data Analyst roles.
- Skills like *SQL, Python, and cloud technologies* appear frequently in high-paying job postings.
- There is a strong relationship between *technical skill sets and salary level*.

---

## 📂 Project Structure


SQL_Data_Job_Analysis_Project
│
├── project_sql
│   ├── top_paying_jobs.sql
│   ├── top_paying_job_skills.sql
│   ├── in_demand_skills.sql
│   ├── top_paying_skills.sql
│   └── optimal_skills.sql
│
└── README.md


---

## 📷 Example SQL Query

sql
SELECT
    job_title,
    company_name,
    salary_year_avg
FROM job_postings_fact
WHERE job_title = 'Data Analyst'
AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;


This query identifies the *top paying Data Analyst jobs* based on average yearly salary.

---

## 🎯 Project Purpose
The main purpose of this project is to gain hands-on experience with *SQL for real-world data analysis* and explore insights related to the Data Analyst job market.

This project demonstrates the process of *data exploration, query writing, and extracting meaningful insights from structured datasets.*

---

## 👨‍💻 Author

*Ronaldo Maged*

Aspiring Data Analyst passionate about SQL, data analysis, and extracting insights from data
