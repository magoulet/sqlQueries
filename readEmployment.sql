SELECT
	p.start_date, p.end_date, p.job_title, p.company, p.location,
	CONCAT(e.address,', ',e.city,', ',e.province,', ',e.postal_code,', ',e.country) AS 'corporate address',
	CONCAT(m.manager_firstname,' ',m.manager_lastname) as 'manager', m.linkedin,
	ROUND(DATEDIFF(p.end_date,p.start_date)/365,1) as 'tenure'
FROM
	positions as p
INNER JOIN managers as m ON p.manager_firstname = m.manager_firstname
INNER JOIN employers as e ON p.company = e.name;


\! echo 'Total work experience';
\! echo '';
SELECT
  ROUND(DATEDIFF(CURDATE(),(SELECT start_date FROM positions LIMIT 1))/365,1) AS 'Total experience'
FROM
  positions as p
LIMIT 1;
