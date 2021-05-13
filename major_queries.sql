USE `College Salary Project`;

SELECT * FROM major_salary;

SELECT AVG(CAST(REPLACE(REPLACE(`Starting Median Salary`, '$', ''), ',', '') AS DEC(10,2))) AS average_starting_median,
	AVG(CAST(REPLACE(REPLACE(`Mid-Career Median Salary`, '$', ''), ',', '') AS DEC(10,2))) AS average_mid_career_median,
	AVG(CAST(REPLACE(REPLACE(`Mid-Career 10th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS average_mid_career_10th_percentile,
	AVG(CAST(REPLACE(REPLACE(`Mid-Career 25th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS average_mid_career_25th_percentile,
	AVG(CAST(REPLACE(REPLACE(`Mid-Career 75th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS average_mid_career_75th_percentile,
	AVG(CAST(REPLACE(REPLACE(`Mid-Career 90th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS average_mid_career_90th_percentile
FROM major_salary;

SELECT MAX(CAST(REPLACE(REPLACE(`Starting Median Salary`, '$', ''), ',', '') AS DEC(10,2))) AS max_starting_median,
	MAX(CAST(REPLACE(REPLACE(`Mid-Career Median Salary`, '$', ''), ',', '') AS DEC(10,2))) AS max_mid_career_median,
	MAX(CAST(REPLACE(REPLACE(`Mid-Career 10th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS max_mid_career_10th_percentile,
	MAX(CAST(REPLACE(REPLACE(`Mid-Career 25th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS max_mid_career_25th_percentile,
	MAX(CAST(REPLACE(REPLACE(`Mid-Career 75th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS max_mid_career_75th_percentile,
	MAX(CAST(REPLACE(REPLACE(`Mid-Career 90th Percentile Salary`, '$', ''), ',', '') AS DEC(10,2))) AS max_mid_career_90th_percentile
FROM major_salary;

-- SELECT `Undergraduate Major`, `Starting Median Salary`
-- 	FROM major_salary
--     WHERE `Starting Median Salary` IN (
-- 		SELECT MAX(CAST(REPLACE(REPLACE(`Starting Median Salary`, '$', ''), ',', '') AS DEC(10,2)))
--         FROM major_salary
--     );
    
SELECT `Undergraduate Major`, CAST(REPLACE(REPLACE(`Starting Median Salary`, '$', ''), ',', '') AS DEC(10,2)) AS engineering_starting_median
	FROM major_salary
	WHERE `Undergraduate Major` LIKE '%Engineering';

SELECT AVG(CAST(REPLACE(REPLACE(`Starting Median Salary`, '$', ''), ',', '') AS DEC(10,2))) AS average_engineering_starting_median
	FROM major_salary
    WHERE `Undergraduate Major` LIKE '%Engineering';
    
	