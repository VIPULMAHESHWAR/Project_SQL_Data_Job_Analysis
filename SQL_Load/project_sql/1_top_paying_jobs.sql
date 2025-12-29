/*What are the top-paying Data Analyst jobs?
-Identify top 10 highest paying Data Analyst roles that are available remotely.
-Focus on job posting with specifeid salaries (remove nulls)
-Why? Highlight the top-paying opportunities for Data Analyst, Offering insights into employment
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg AS Salary,
    job_posted_date::Date AS Date,
    name AS Company

FROM
    job_postings_fact
LEFT JOIN
    company_dim USING (company_id)
WHERE
    job_title_short LIKE '%Data Analyst%'
    AND job_location LIKE '%Anywhere%'
    AND salary_year_avg IS NOT NULL    
ORDER BY
    salary_year_avg DESC
LIMIT 10;