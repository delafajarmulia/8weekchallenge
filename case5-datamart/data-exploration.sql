-- 1. What day of the week is used for each week_date value?
-- Hari apa dalam seminggu yang digunakan untuk setiap nilai tanggal_minggu?
SELECT DAYNAME(week_date) AS dayname
FROM clean_weekly_sales
GROUP BY DAYNAME(week_date);


-- 2. What range of week numbers are missing from the dataset?
-- Berapa rentang angka minggu yang hilang dari kumpulan data?
WITH cte1 AS (
	SELECT *, DENSE_RANK() OVER(ORDER BY week_number) AS weeknumb
    FROM clean_weekly_sales) 
SELECT 52-COUNT(DISTINCT weeknumb) AS missing_no_of_weeks
    FROM cte1;


-- 3. How many total transactions were there for each year in the dataset?
-- Berapa total transaksi yang ada untuk setiap tahun dalam kumpulan data?
SELECT year AS calendar_year, SUM(transactions) AS total_transactions
FROM clean_weekly_sales
GROUP BY year
ORDER BY year;


--  4. What is the total sales for each region for each month?
-- Berapa total penjualan tiap wilayah tiap bulannya?
SELECT region, month_number, SUM(sales) AS total_sales
FROM clean_weekly_sales
GROUP BY region, month_number
ORDER BY region, month_number;


-- 5. What is the total count of transactions for each platform?
-- Berapa jumlah total transaksi untuk setiap platform?
SELECT platform, SUM(transactions) AS total_count
FROM clean_weekly_sales
GROUP BY platform;


-- 6. What is the percentage of sales for Retail vs Shopify for each month?
-- Berapa persentase penjualan Retail vs Shopify setiap bulannya?
WITH cte1 AS(
SELECT year, month_number, SUM(sales) AS tsm
FROM clean_weekly_sales
GROUP BY year, month_number)
SELECT cs.year, cs.platform, cs.month_number, (SUM(cs.sales)/cte1.tsm*100) AS percentage
FROM clean_weekly_sales AS cs
JOIN cte1 ON cs.year=cte1.year AND cs.month_number=cte1.month_number
GROUP BY cs.year, cs.month_number, cs.platform
ORDER BY cs.month_number;


-- 7. What is the percentage of sales by demographic for each year in the dataset?
-- Berapa persentase penjualan berdasarkan demografi untuk setiap tahun dalam kumpulan data?
WITH cte1 AS (
SELECT year, SUM(sales) AS tsm
FROM clean_weekly_sales
GROUP BY year)
SELECT cs.year, demographic, ROUND((SUM(cs.sales)/cte1.tsm*100),2) AS percentage
FROM clean_weekly_sales AS cs
JOIN cte1 ON cs.year=cte1.year
GROUP by cs.year, demographic
ORDER by cs.year, cs.demographic;


-- 8. Which age_band and demographic values contribute the most to Retail sales?
-- Kelompok_usia dan nilai demografi manakah yang paling berkontribusi terhadap penjualan Ritel?
SET @a=(SELECT SUM(sales) FROM clean_weekly_sales);
SELECT age_band, demographic, ROUND((SUM(sales)/@a)*100,0) AS percentage
FROM clean_weekly_sales
GROUP BY age_band, demographic
ORDER BY percentage
DESC;


-- 9. Can we use the avg_transaction column to find the average transaction size for each year for Retail vs Shopify? If not - how would you calculate it instead?
-- Bisakah kita menggunakan kolom avg_transaction untuk menemukan ukuran transaksi rata-rata setiap tahun untuk Retail vs Shopify? Jika tidak - bagaimana Anda menghitungnya?
SELECT year, platform, ROUND(AVG(avg_transaction),0) AS avg_transaction_row, SUM(sales) / SUM(transactions) AS avg_transaction_group
FROM clean_weekly_sales
GROUP BY year, platform
ORDER BY year, platform;