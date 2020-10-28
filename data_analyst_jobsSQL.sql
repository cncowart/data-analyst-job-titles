SELECT COUNT(*)
FROM data_analyst_jobs;

--1793 Rows

Select company
FROM data_analyst_jobs
Limit 10;

--ExxonMobil

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location='TN';

--21 jobs in TN

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location='TN' OR location='KY';

--27 jobs in KY or TN

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location='TN'
AND star_rating>'4';

--3 postings with a star rating greater than 4

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

--151 postings 500-1000 reviews

SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT null
AND location IS NOT null
GROUP BY location
ORDER BY avg_rating DESC;

--NE with a 4.199999

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;

--881

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location='CA';

--230

SELECT DISTINCT (company), AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count>5000
AND company IS NOT null
GROUP BY company
ORDER BY avg_rating DESC;

/*40 Companies 
"General Motors"	4.1999998090000000
"Unilever"	4.1999998090000000
"Microsoft"	4.1999998090000000
"Nike"	4.1999998090000000
"American Express"	4.1999998090000000
"Kaiser Permanente"	4.1999998090000000
*/


SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

-774

SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';

--4, Tableau

SELECT domain, COUNT(days_since_posting) AS jobs
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
AND days_since_posting > 21
AND domain IS NOT null
GROUP BY domain
ORDER BY jobs DESC;

/* 
62	"Internet and Software"
61	"Banks and Financial Services"
57	"Consulting and Business Services"
52	"Health Care"
*/
