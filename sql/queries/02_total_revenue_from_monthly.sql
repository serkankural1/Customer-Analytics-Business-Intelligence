SELECT 
	SUM(si.quantity * si.unit_price) AS total_revenue,
	COUNT(DISTINCT s.sales_id) AS total_order,
	ROUND (SUM(si.quantity * si.unit_price) / COUNT(DISTINCT s.sales_id ), 2) AS aov,
	DATE_TRUNC('month', s.sales_date) AS month
FROM sales s
JOIN sales_items si 
	ON s.sales_id = si.sales_id
WHERE s.order_status = 'Completed'
GROUP BY DATE_TRUNC('month', s.sales_date)
ORDER BY month;