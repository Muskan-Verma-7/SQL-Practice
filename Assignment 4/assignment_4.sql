SELECT * FROM public.superstore_orders;

SELECT order_id, city
FROM public.superstore_orders
WHERE order_id = 'CA-2020-161389' OR order_id = 'US-2021-156909';


--Update Statement
UPDATE public.superstore_orders
SET city=Null
WHERE order_id = 'CA-2020-161389' OR order_id = 'US-2021-156909';

--to find orders where city is null
SELECT * FROM public.superstore_orders
WHERE city IS NULL;

--to get total profit, first order date and latest order date for each category
SELECT category, SUM(profit), MIN(order_date), MAX(order_date)
FROM public.superstore_orders
GROUP BY category;










