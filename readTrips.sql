-- USE test;
\! echo 'Trips list';
\! echo '';

SELECT
  t1.id,
  t1.`departure_date`, t1.`return_date`,
  c.`name` AS 'country',
  -- t.`firstname` AS 'traveler',
  DATEDIFF(t1.`return_date`,t1.`departure_date`) as 'duration',
  t1.note,
  t1.us_record
FROM
  trips AS t1
INNER JOIN countries AS c ON t1.`location` = c.`id`
INNER JOIN travelers AS t ON t1.`traveler` = t.`id`
-- WHERE c.`name` LIKE '%Emirates%'
-- WHERE YEAR(t1.`departure date`) = '2013'
-- WHERE `us_record` = true
ORDER BY t1.`departure_date` ASC;


\! echo 'Total days away from home (Marc-Andre)';
\! echo '';

SELECT
  YEAR(t1.`departure_date`) AS 'year',
  SUM(DATEDIFF(t1.`return_date`,t1.`departure_date`)) AS 'days away',
  ROUND(SUM(DATEDIFF(t1.`return_date`,t1.`departure_date`))/365*100,1) AS '% of year'
FROM
  trips AS t1
WHERE
  t1.`traveler` = (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre')
GROUP BY
  YEAR(t1.`departure_date`);

\! echo 'List of countries visited';
\! echo '';

SELECT DISTINCT
  c.`name` AS 'Countries Visited'
FROM
  trips AS t1
INNER JOIN countries AS c ON t1.`location` = c.`id`
INNER JOIN travelers AS t ON t1.`traveler` = t.`id`
-- WHERE c.`name` LIKE '%Emirates%'
-- WHERE YEAR(t1.`departure date`) = '2013'
ORDER BY c.`name` ASC;

SELECT
  COUNT(DISTINCT(t1.location)) as 'Number of countries visited'
FROM
  trips AS t1;

\! echo 'Total time away from home';
\! echo '';
SELECT
  ROUND(SUM(DATEDIFF(t1.`return_date`,t1.`departure_date`))/365,1) AS 'Years away',
  ROUND(DATEDIFF(CURDATE(),(SELECT `departure_date` FROM trips LIMIT 1))/365,1) AS 'In the Past'
FROM
  trips AS t1
WHERE
  t1.`traveler` = (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre');
