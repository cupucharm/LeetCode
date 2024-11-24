SELECT
    stock_name
    , SUM(
        CASE WHEN operation = 'Sell' THEN capital_gain_loss
        WHEN operation = 'Buy' THEN capital_gain_loss * (-1)
        END
    ) AS capital_gain_loss
FROM (
    SELECT stock_name, operation, 
        SUM(price) AS capital_gain_loss
    FROM Stocks
    GROUP BY stock_name, operation
) temp
GROUP BY stock_name;