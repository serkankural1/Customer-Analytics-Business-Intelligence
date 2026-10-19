WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', s.sales_date) AS month,
        SUM(si.quantity * si.unit_price) AS total_revenue,
        COUNT(DISTINCT s.sales_id) AS total_order,
        ROUND(
            SUM(si.quantity * si.unit_price) /
            COUNT(DISTINCT s.sales_id),
            2
        ) AS aov
    FROM sales s
    JOIN sales_items si 
        ON s.sales_id = si.sales_id
    WHERE s.order_status = 'Completed'
    GROUP BY DATE_TRUNC('month', s.sales_date)
),

monthly_comparison AS (
    SELECT
        *,
        LAG(total_revenue) OVER (ORDER BY month) AS previous_month_revenue
    FROM monthly_sales
)

SELECT
    month,
    total_revenue,
    previous_month_revenue,
    ROUND(
        (total_revenue - previous_month_revenue)
        / previous_month_revenue * 100,
        2
    ) AS mom
FROM monthly_comparison
ORDER BY month;