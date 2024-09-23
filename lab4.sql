--Q.1
/* no, because we still have VA records in other tables */

--Q4.2
/* no, because no state has | fips of 80 */

--Q4.3
/* yes, it does work, but it could be imporved */

--Q4.5
/* yes, chat GPT did recognize the chart */

--Q4.6
/* yes, the code that chat gpt returned did work/*

SELECT n.name, i.year, i.income
FROM income i
JOIN name n ON i.fips = n.fips
WHERE i.year = (SELECT MAX(year) FROM income)
ORDER BY i.income DESC
LIMIT 1;


--Q4.7
/* when i used my original prompt it did not work well */
/* when i modified my prompt it still did not provide the growth rate */
/* when i modified my prompt for the third time it still did not work */
/* in the end, it did not work */

--Q4.8 
/* many times chat gpt produces accurate responses, but not all the time */
