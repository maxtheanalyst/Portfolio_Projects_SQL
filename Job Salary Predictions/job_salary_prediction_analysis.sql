-- First I take thorough look at the dataset to cross-check and make sure everything is in order.
-- Eventhough I already use Excel to check the dataset for any errors, to clean and analysing the data.

SELECT *
FROM JobSalaryPrediction.job_salary_prediction_dataset;



-- Analysis 1 — Which Job Title Pays the Most?
-- I want to find out how much each job title pays on average so I can compare careers.

-- WHY THIS QUESTION MATTERS
-- If I am deciding which career path to follow, knowing the average salary for each job title helps me make a smarter choice.
-- This is one of the most common real-world questions a data analyst gets asked.


-- SQL QUERY
SELECT   job_title,
AVG(salary)   AS average_salary, 
COUNT(*)      AS number_of_records
FROM     JobSalaryPrediction.job_salary_prediction_dataset
GROUP BY job_title
ORDER BY AVG(salary) DESC;


-- WHAT I FOUND
-- AI Engineer is the #1 highest-paying role at an average of $173,498. This reflects the high demand for artificial intelligence skills in the job market right now.
-- Data Analyst is the lowest-paid role at $119,891 — but it is also a great entry point into the data field, with many pathways to higher-paying roles over time.
-- There is a $53,607 gap between the top-paying role (AI Engineer) and the lowest (Data Analyst). This shows how much career choice alone affects earning potential.
-- All 12 job titles have roughly #20,000 records each, which means averages are reliable and not skewed by one group having too few rows.




-- Analysis 2 — Does Education Level Affect Salary?
-- I want to see if people with higher degrees (like a PhD or Master's) earn more than those with lower education levels.

-- WHY THIS QUESTION MATTERS
-- This is a question many students ask before deciding whether to continue their studies. By grouping salaries by education level and sorting them,
-- to see a clear picture of the education-to-earnings relationship.


-- SQL QUERY
SELECT   education_level,
AVG(salary)   AS average_salary,
COUNT(*)      AS number_of_people
FROM     JobSalaryPrediction.job_salary_prediction_dataset
GROUP BY education_level
ORDER BY AVG(salary) DESC;


-- WHAT I FOUND
-- Higher education = higher salary — every single time. The pattern is perfectly consistent: PhD earns more than Master, which earns more than Bachelor, and so on.
-- A PhD earns $32,261 more per year than a High School graduate. Over a 10-year career, that adds up to over $300,000 in extra earnings.
-- The biggest single jump is from Bachelor to Master (+$10,895). This suggests a Master's degree may be the most cost-effective next step for someone already holding a Bachelor's.
-- Each education level has about 50,000 records, making this one of the most statistically balanced analyses in this portfolio.





-- Analysis 3 — Which Country Pays the Highest Salaries?
-- I want to find out how average salaries differ between countries to understand the geographic pay gap.

-- WHY THIS QUESTION MATTERS
-- Location is one of the biggest factors in salary. Whether you are considering relocation, remote work, or simply want to benchmark your salary against your country's average,
-- this analysis gives a clear country-by-country breakdown.


-- SQL QUERY
SELECT   location,
AVG(salary)   AS average_salary,
COUNT(*)      AS number_of_records
FROM     JobSalaryPrediction.job_salary_prediction_dataset
GROUP BY location
ORDER BY AVG(salary) DESC;


-- WHAT I FOUND
-- The USA pays the highest average salary at $181,716, which is 86% more than India at $97,690 — showing how dramatically location affects compensation.
-- Canada and UK form a strong second tier at $167K and $160K, making North America and Western Europe the top-paying regions in this dataset.
-- Remote work pays $139,442 on average — almost identical to Sweden, Australia, and Singapore. This suggests remote roles are priced at a mid-range geographic rate, not at US levels.
-- India's lower average ($97,690) reflects local cost-of-living differences, not necessarily lower skill levels. Purchasing power in India means this salary can go much further locally.




-- Analysis 4 — Does Working Remotely Change Your Salary?
-- I want to compare salaries between people who work fully remote, hybrid, or fully on-site to see if remote work has a salary trade-off.

-- WHY THIS QUESTION MATTERS
-- Remote work became a major topic after 2020. Many people wonder: 'If I go fully remote, will my salary be cut?' This simple query answers that directly using the remote_work column in our dataset.


-- SQL QUERY
SELECT   remote_work,
COUNT(*)      AS number_of_workers,
AVG(salary)   AS average_salary,
MIN(salary)   AS lowest_salary,
MAX(salary)   AS highest_salary
FROM     JobSalaryPrediction.job_salary_prediction_dataset
GROUP BY remote_work
ORDER BY AVG(salary) DESC;


-- WHAT I FOUND
-- Fully remote workers earn the most on average at $149,279, which is $5,347 more than hybrid and on-site workers. Remote roles may attract more senior or in-demand candidates.
-- Hybrid and On-Site salaries are nearly identical ($143,969 vs $143,932), with only a $37 difference. This means being in the office does not give a salary advantage over hybrid.
-- All three groups have roughly equal headcounts (~83,000 each), making the comparison fair and statistically reliable.
-- MIN and MAX salaries are the same across all three groups ($31,867 and $333,046), showing that work arrangement alone does not cap your earning potential — the full salary range is available in any setup.




-- Analysis 5 — How Does Company Size Affect Salary?
-- I want to compare average salaries at Startups, Small, Medium, Large, and Enterprise companies to see if bigger companies pay more.

-- WHY THIS QUESTION MATTERS
-- Job seekers often debate: should I join a startup for growth opportunity, or an enterprise for a stable high salary? This query gives me the data to answer that question for myself — backed by 250,000 real records.

-- SQL QUERY
SELECT   company_size,
COUNT(*)    AS number_of_workers,
AVG(salary) AS average_salary
FROM     JobSalaryPrediction.job_salary_prediction_dataset
GROUP BY company_size
ORDER BY AVG(salary) DESC;



-- WHAT I FOUND
-- Enterprise companies pay the most at $169,616 on average — $42,327 more than startups. Bigger companies have more resources and set higher salary budgets.
-- Every step up in company size brings a salary increase. The pattern is perfectly consistent: Startup → Small → Medium → Large → Enterprise, all increasing in order.
-- Startup average of $127,289 is still a solid salary, but candidates should factor in that startups often offer equity (ownership shares) that are not captured in base salary figures.
-- All five company sizes have roughly 50,000 records each, which means none of the groups are over- or under-represented. Our comparison is fair.
