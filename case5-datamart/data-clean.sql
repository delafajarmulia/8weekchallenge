-- In a single query, perform the following operations and generate a new table in the data_mart schema named clean_weekly_sales:
-- Convert the week_date to a DATE format
-- Add a week_number as the second column for each week_date value, for example any value from the 1st of January to 7th of January will be 1, 8th to 14th will be 2 etc
-- Add a month_number with the calendar month for each week_date value as the 3rd column
-- Add a calendar_year column as the 4th column containing either 2018, 2019 or 2020 values
-- Add a new column called age_band after the original segment column using the following mapping on the number inside the segment value
-- Add a new demographic column using the following mapping for the first letter in the segment values: C -> Cpuples, F -> Families
-- Ensure all null string values with an "unknown" string value in the original segment column as well as the new age_band and demographic columns
-- Generate a new avg_transaction column as the sales value divided by transactions rounded to 2 decimal places for each record

CREATE TABLE clean_weekly_sales AS (
    select week_date,week(week_date) as week_number,month(week_date) as month_number,year(week_date) as year,region,platform,segment,
    case 
        when segment regexp "1$" then "Young Adult"
        when segment regexp "2$" then "Middle Aged"
        when segment regexp "3$|4$" then "Retirees"
        else "unknown"
    end as age_band,
    case 
        when segment regexp "^F" then "Families"
        when segment regexp "^C" then "Couples"
        else "unknown"
    end as demographic,
    transactions,
    round((sales/transactions),2) as avg_transaction,
    sales
    from weekly_sales);