SELECT
    DATE_TRUNC('month', s.sales_date) AS month,
    COUNT(DISTINCT s.costumer_id) AS active_costumer
FROM costumer c
JOIN sales s
    ON s.costumer_id = c.costumer_id
WHERE s.order_status = 'Completed'
GROUP BY DATE_TRUNC('month', s.sales_date)
ORDER BY month;