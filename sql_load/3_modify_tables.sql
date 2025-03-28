

COPY company_dim
FROM 'F:\DA Learning\SQL_Project1\csv_files\company_dim.csv' --Path of company_dim.csv in my computer after downloaded and extracted
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'F:\DA Learning\SQL_Project1\csv_files\skills_dim.csv' --Path of skills_dim.csv in my computer after downloaded and extracted
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'F:\DA Learning\SQL_Project1\csv_files\job_postings_fact.csv' --Path of job_postings_fact.csv in my computer after downloaded and extracted
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'F:\DA Learning\SQL_Project1\csv_files\skills_job_dim.csv' --Path of skills_job_dim.csv in my computer after downloaded and extracted
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
