WITH order_count AS (
    SELECT 
        costumer_id,
        COUNT(DISTINCT sales_id) AS total_orders
    FROM sales
    WHERE order_status = 'Completed'
    GROUP BY costumer_id
),

customer_orders AS (
    SELECT 
        costumer_id,
        total_orders,
        CASE 
            WHEN total_orders = 1 THEN 'ONE TIME' 
            ELSE 'REPEAT'
        END AS customer_segment
    FROM order_count
),

customer_summary AS (
    SELECT 
        COUNT(
            CASE 
                WHEN customer_segment = 'ONE TIME' 
                THEN costumer_id
            END
        ) AS one_time_customer,

        COUNT(
            CASE 
                WHEN customer_segment = 'REPEAT' 
                THEN costumer_id
            END
        ) AS repeat_customer,

        COUNT(costumer_id) AS total_customer

    FROM customer_orders
)

SELECT
    one_time_customer,
    repeat_customer,
    total_customer,

    ROUND(
        repeat_customer::numeric / total_customer * 100,
        2
    ) AS repeat_purchase_rate

FROM customer_summary;