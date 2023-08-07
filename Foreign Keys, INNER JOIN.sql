1.
SELECT M.NAME
FROM MEAL M
INNER JOIN INGREDIENT I ON M.ID = I.MEAL_ID
WHERE I.NAME = "Garlic";

2.
SELECT COUNT(DISTINCT M.ID)
FROM  MEAL M
INNER JOIN INGREDIENT I ON M.ID = I.MEAL_ID
WHERE I.VEGETARIAN = TRUE;

3.
SELECT m.NAME
FROM MEAL m
INNER JOIN INGREDIENT i ON m.id = i.MEAL_ID
WHERE i.VEGETARIAN = 1 AND i.GLUTEN_FREE = 1;

4.
SELECT AVG(ingredients_count) AS avg_ingredients_per_meal
FROM (
    SELECT COUNT(i.ID) AS ingredients_count
    FROM MEAL m
    LEFT JOIN INGREDIENT i ON m.ID = i.MEAL_ID
    GROUP BY m.ID
) AS ingredients_per_meal;
-- ci devo per forza mettere l'alias perché ogni table derivata lo deve avere

5.
SELECT ingredients_per_meal.NAME
FROM (
    SELECT m.NAME, COUNT(i.ID) AS ingredients_count
    FROM MEAL m
    LEFT JOIN INGREDIENT i ON m.ID = i.MEAL_ID
    GROUP BY m.ID
) AS ingredients_per_meal
WHERE ingredients_count = 5;


6.
Using the following table definitions, write an inner join for the two tables

CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);

CREATE TABLE ORDER (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);

SELECT *
FROM CUSTOMER c
INNER JOIN ORDER o ON c.CUSTOMER_ID = O.CUSTOMER_ID;


Using the following table definitions, write an inner join for the two tables

CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);

CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);

SELECT *
FROM PRODUCT
INNER JOIN INVENTORY i ON p.PRODUCT_ID = i.PRODUCT_ID;




