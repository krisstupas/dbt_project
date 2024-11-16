SELECT 
    EXTRACT(YEAR FROM date) AS year,
    SUM(number_of_strikes) AS total_strikes
FROM 
    `bigquery-public-data.noaa_lightning.lightning_strikes`
GROUP BY 
    EXTRACT(YEAR FROM date)
ORDER BY 
    year