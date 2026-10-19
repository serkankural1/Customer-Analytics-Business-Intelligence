WITH order_count AS (
    SELECT 
        costumer_id,
        COUNT(DISTINCT sales_id) AS total_orders
    FROM sales
    WHERE order_status = 'Completed'
    GROUP BY costumer_id
),

customer_type AS (
    SELECT 
        costumer_id,
        total_orders,
        CASE 
            WHEN total_orders = 1 THEN 'ONE TIME' 
            ELSE 'REPEAT'
        END AS customer_type
    FROM order_count
)

SELECT 
    COUNT(
        CASE 
            WHEN customer_type = 'ONE TIME' THEN costumer_id
        END
    ) AS one_time_customer,

    COUNT(
        CASE 
            WHEN customer_type = 'REPEAT' THEN costumer_id
        END
    ) AS repeat_customer

FROM customer_type;