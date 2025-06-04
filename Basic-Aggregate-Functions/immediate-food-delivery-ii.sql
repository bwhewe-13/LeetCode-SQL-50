-- https://leetcode.com/problems/immediate-food-delivery-ii/

SELECT 
    ROUND(100 * AVG(CASE WHEN a.order_date = a.delivery_date THEN 1
    ELSE 0 END), 2) AS immediate_percentage
FROM (
    SELECT 
        MIN(order_date) AS order_date, 
        MIN(customer_pref_delivery_date) as delivery_date 
    FROM Delivery
    GROUP BY customer_id) a;
