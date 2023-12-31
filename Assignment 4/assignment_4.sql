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

--to find sub-categories where average profit is more than the half of the max profit in that sub-category
SELECT sub_category
FROM public.superstore_orders
GROUP BY sub_category
HAVING AVG(profit) > (0.5* MAX(profit));

--create table exams (student_id int, subject varchar(20), marks int);
CREATE TABLE public.exams(
	student_id INT,
	subject VARCHAR(20),
	marks INT
);

create table exams (student_id int, subject varchar(20), marks int);
SELECT * FROM public.exams;

INSERT INTO public.exams(student_id, subject, marks)
VALUES (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

--find students who have got same marks in Physics and Chemistry
select student_id , marks
from exams
where subject in ('Physics','Chemistry')
group by student_id , marks
having count(*)=2;

--to find total number of products in each category
SELECT category, COUNT(DISTINCT product_id)
FROM public.superstore_orders 
GROUP BY category;

--to find top 5 sub categories in west region by total quantity sold
SELECT sub_category, SUM(quantity) AS total_quantity
FROM public.superstore_orders
WHERE region = 'West'
GROUP BY sub_category
ORDER BY total_quantity DESC
LIMIT 5;

--total products in each category
SELECT category, COUNT(DISTINCT product_id) as total_prod
FROM public.superstore_orders
GROUP BY category;

--total sales for each region and ship mode combination for orders in year 2020
SELECT region, SUM(sales), ship_mode
FROM public.superstore_orders
WHERE order_date BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY region, ship_mode;





