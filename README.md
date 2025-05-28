# Introduction
This project focuses on analyzing the job market for the position of Data Analyst using SQL. The goal is to identify the most lucrative job postings, the skills associated with those roles, the most demanded skills overall, the average salary per skill, and finally, to determine a set of optimal skills that balance both demand and salary potential.

# Background
As part of a final project for a SQL course, I conducted a series of data analyses using job market data. The data includes job postings, associated salaries, and required skills. The motivation behind this project was to gain insights into the skill requirements and earning potential for Data Analyst roles, particularly remote positions.

# Tools I Used
SQL: Main tool used for querying and analysis.

VS Code: Integrated development environment used to write and manage SQL scripts.

Database: Assumed to be a relational database supporting SQL queries with joins and aggregations.

# The Analysis
Top-Paying Jobs (1_top_paying_jobs.sql)
Retrieves the top 10 highest-paying remote Data Analyst job postings with non-null salary values.

Top-Paying Job Skills (2_top_paying_job_skills.sql)
Builds on the previous query to identify which skills are required for those top-paying job postings.

Top Demanded Skills (3_top_demanded_skills.sql)
Counts and ranks the most frequently requested skills across all Data Analyst job postings.

Skills Average Salary (4_skills_avg_salary.sql)
Calculates the average salary associated with each skill by aggregating salary data from all relevant job postings.

Optimal Skills (5_optimal_skills_sql.sql)
Combines demand and average salary to determine which skills are both highly requested (demand count > 10) and offer higher-than-average salaries. Results are ordered by salary and demand.

# What I Learned
Skills such as SQL, Python, and Tableau are consistently in high demand for Data Analyst roles.

Specialized tools and platforms related to machine learning and cloud infrastructure tend to be associated with higher salary offerings.

The ability to analyze both skill demand and salary data allows for more strategic decision-making when planning professional development.

# Conclusions
This project provided practical experience in using SQL for real-world data analysis tasks. The analysis highlights which technical skills are most beneficial for Data Analysts in terms of both market demand and salary potential. These insights can help guide skill development and career planning in the field of data analytics.