WITH first_orders AS(
    SELECT
        costumer_id,
        MIN(sales_date) AS first_order_date
    FROM sales
    WHERE order_status = 'Completed'
    GROUP BY costumer_id
)

SELECT 
    DATE_TRUNC('month', s.sales_date) AS month,

    COUNT(
        DISTINCT CASE
            WHEN DATE_TRUNC('month', s.sales_date) =
                 DATE_TRUNC('month', fo.first_order_date)
            THEN s.costumer_id
        END
    ) AS new_costumer,

    COUNT(
        DISTINCT CASE
            WHEN DATE_TRUNC('month', s.sales_date) <>
                 DATE_TRUNC('month', fo.first_order_date)
            THEN s.costumer_id
        END
    ) AS returning_costumer

FROM sales s
JOIN first_orders fo
    ON s.costumer_id = fo.costumer_id

WHERE s.order_status = 'Completed'

GROUP BY DATE_TRUNC('month', s.sales_date)
ORDER BY month;