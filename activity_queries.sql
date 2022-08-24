SET @month = 9;
SET @year = 2022;



SELECT 'All Activities' as '';
SELECT
	user,
	type, 
	description, 
	provider_name, 
	start_date, end_date, 
	cost,
	t.date as 'Pmt Date',
	t.completed,
	a.transaction_id
FROM activities AS a
LEFT JOIN transactions AS t
ON a.transaction_id = t.transaction_id;

DO SLEEP(1);

SELECT 'Taking place within the month' as '';


SELECT
	user,
	type,
	description,
	start_date, end_date,
	cost,
	t.date as 'Pmt Date',
	a.transaction_id
FROM activities AS a
LEFT JOIN transactions AS t
ON a.transaction_id = t.transaction_id
-- WHERE YEAR(a.start_date) = @year AND MONTH(a.start_date) = @month; 
-- WHERE (MONTH(a.start_date) <= @month AND YEAR(a.start_date) <= @year) AND (
-- MONTH(a.end_date) >= @month AND YEAR(a.end_date) >= @year); 
WHERE @month BETWEEN MONTH(a.start_date) AND MONTH(a.end_date);

SELECT 'Payment within the month' as '';

SELECT
	user,
	type,
	description,
	start_date, end_date,
	cost,
	t.date as 'Pmt Date'
FROM activities AS a 
LEFT JOIN transactions AS t
ON a.transaction_id = t.transaction_id
WHERE YEAR(t.date) = @year AND MONTH(t.date) = @month; 
