use world_layoffs;
select *
from layoffs;

-- 1. Copy the dataset
-- 2. Remove duplicate
-- 3. Standardize the data
-- 4. Null Values or Blank Values
-- 5. Remove Any Columns

CREATE TABLE layoffs_staging
Like layoffs;

select *
from layoffs_staging;

insert layoffs_staging
select *
from layoffs;

select *
from layoffs_staging;

Select *,
ROW_NUMBER() OVER(
PARTITION BY company, industry, total_laid_off, percentage_laid_off, `date`) AS row_num
from layoffs_staging;

WITH duplicate_cte AS
(
Select *,
ROW_NUMBER() OVER(
PARTITION BY company,location,
 industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS row_num
from layoffs_staging
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;

SELECT *
FROM layoffs
WHERE company = 'oda';

SELECT *
FROM layoffs
WHERE company = 'Casper';


CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


use world_layoffs;
select *
from layoffs_staging2;


INSERT INTO layoffs_staging2
Select *,
ROW_NUMBER() OVER(
PARTITION BY company,location,
 industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) AS row_num
from layoffs_staging;

select *
from layoffs_staging2
WHERE row_num > 1;

DELETE
from layoffs_staging2
WHERE row_num > 1;

USE WORLD_LAYOFFS;
select *
from layoffs_staging2;


-- Standardizing data

SELECT company, TRIM(company)
FROM layoffs_staging2;


USE WORLD_LAYOFFS;
UPDATE layoffs_staging2
SET company = TRIM(company);


SELECT DISTINCT(industry)
FROM layoffs_staging2
ORDER BY 1;


USE world_layoffs;
SELECT *
FROM layoffs_staging2
WHERE industry LIKE 'Crypto%';


UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';


USE world_layoffs;
SELECT *
FROM layoffs_staging2
WHERE industry LIKE 'Crypto%';

SELECT DISTINCT(industry)
FROM layoffs_staging2;

SELECT *
FROM layoffs_staging2;

SELECT DISTINCT(country)
FROM layoffs_staging2;


SELECT *
FROM layoffs_staging2
WHERE country = 'United States';

USE world_layoffs;
SELECT *
FROM layoffs_stagings2;

SELECT DISTINCT(country), TRIM(TRAILING '.' FROM country)  
FROM layoffs_staging2
ORDER BY 1;


UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States%';


SELECT DISTINCT country
FROM layoffs_staging2;


UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

USE world_layoffs;
SELECT *
FROM layoffs_stagings2;


SELECT `date`,
STR_TO_DATE(`date`, '%m/%d/%Y')
FROM layoffs_staging2;


UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');


SELECT `date`
FROM layoffs_staging2;


ALTER TABLE layoffs_staging2
MODIFY COLUMN `date` DATE;


SELECT *
FROM layoffs_staging2;


SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;


SELECT DISTINCT(industry) 
FROM layoffs_staging2;


UPDATE layoffs_staging2
SET industry = null
WHERE industry = '';

SELECT *
FROM layoffs_staging2
WHERE industry IS NULL
OR industry = '';


SELECT ti.industry, t2.industry
FROM layoffs_staging2 t1
JOIN layoffs_staging2 t2
    ON t1.company = t2.company
WHERE (t1.industry IS NULL OR t1.industry =  '')
AND t2.industry IS NOT NULL;



UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2
    ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL
AND t2.industry IS NOT NULL;


SELECT *
FROM layoffs_staging2
WHERE company = 'Airbnb';


select *
FROM layoffs_staging2;


SELECT *
FROM layoffs_staging2
WHERE company = 'Airbnb';


SELECT *
FROM layoffs_staging2
WHERE company like 'Bally%';

SELECT *
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;


DELETE 
FROM layoffs_staging2
WHERE total_laid_off IS NULL
AND percentage_laid_off IS NULL;


SELECT *
FROM layoffs_staging2;


ALTER TABLE layoffs_staging2
DROP COLUMN row_num;
