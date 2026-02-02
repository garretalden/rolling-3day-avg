WITH Dated AS (SELECT transaction_time::date AS dt, transaction_amount AS amount
               FROM transactions),
     Daily AS (SELECT dt, SUM(amount) AS total
               FROM Dated
               GROUP BY dt)
SELECT dt, total,
       AVG(total) OVER (
        ORDER BY dt
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ) AS rolling
FROM Daily
ORDER BY dt;


