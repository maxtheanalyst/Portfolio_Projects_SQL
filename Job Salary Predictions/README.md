Job Salary Prediction — SQL Portfolio Project

A beginner SQL data analysis project using MySQL Workbench.
Analyzed 250,000 job records to uncover salary trends across job titles, education levels, countries, remote work arrangements, and company sizes.




Dataset

**Source:** Kaggle — [250K Job Salary Prediction Dataset](https://www.kaggle.com/datasets/rhythmghai/250k-job-salary-prediction-dataset)
I have enclosed the data file already in the Portfolio Project.




About the Dataset

The dataset contains **250,000 rows** and **10 columns** representing job listings and their associated salaries from multiple countries and industries.

| (Column) | Description |
|---|---|
| (job_title) | The role/position (e.g. Data Analyst, AI Engineer) |
| (experience_years) | Number of years of work experience |
| (education_level) | Highest degree held (High School, Diploma, Bachelor, Master, PhD) |
| (skills_count) | Number of skills listed on the profile |
| (industry) | Industry sector (e.g. Finance, Healthcare, Technology) |
| (company_size) | Size of the company (Startup, Small, Medium, Large, Enterprise) |
| (location) | Country of the job (USA, UK, India, Canada, etc.) |
| (remote_work) | Work arrangement (Yes = fully remote, Hybrid, No = on-site) |
| (certifications) | Number of professional certifications held |
| (salary) | Annual salary in USD (ranges from $31,867 to $333,046) |




The 5 Analyses

All queries were written in **MySQL Workbench** using only beginner-level SQL commands: 'SELECT', 'FROM', 'GROUP BY', 'ORDER BY', 'AVG()', 'COUNT()', 'MIN()', 'MAX()'.



Analysis 1 — Which Job Title Pays the Most?
I grouped all 12 job titles by average salary to create a compensation ranking.

**Key finding:** AI Engineer leads at **$173,498** average salary. Data Analyst sits at the bottom at **$119,891** — a gap of over $53,000 purely based on job title.




Analysis 2 — Does Education Level Affect Salary?
I compared average salaries across the five education levels to see if higher degrees translate to higher pay.

**Key finding:** PhD holders earn **$163,976** on average vs **$131,715** for High School graduates — a **$32,261 annual premium**. Every education step up brings a measurable pay increase.




Analysis 3 — Which Country Pays the Highest Salaries?
I grouped records by location and ranks countries from highest to lowest average salary.

**Key finding:** The **USA pays $181,716** on average — **86% more than India** at $97,690. Remote roles average $139,442, closely matching mid-tier countries like Sweden and Australia.




Analysis 4 — Does Working Remotely Change Your Salary?
I Compared average, minimum, and maximum salaries across fully remote, hybrid, and on-site roles.

**Key finding:** Fully remote workers earn **$149,279** on average — $5,347 more than hybrid or on-site workers. Hybrid and on-site salaries are almost identical, with only a $37 difference between them.




Analysis 5 — How Does Company Size Affect Salary?
I grouped employees by company size and ranks each tier by average pay.

**Key finding:** Enterprise companies pay **$169,616** on average — **$42,327 more than startups** at $127,289. Salary increases consistently with every step up in company size.




Tools Used

**MySQL Workbench** — for running, writing and executing SQL all queries
**Microsoft Excel / CSV** — for importing the raw dataset



About

This project was built as a beginner SQL portfolio piece to demonstrate foundational data analysis skills.
It covers real-world business questions answered entirely with simple, readable SQL queries.
