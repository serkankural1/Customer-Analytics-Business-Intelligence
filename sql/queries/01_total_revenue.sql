SELECT
    SUM(si.quantity * si.unit_price) AS total_revenue
FROM sales s
JOIN sales_items si
    ON s.sales_id = si.sales_id
WHERE s.order_status = 'Completed';

