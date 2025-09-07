-- 1) Max ingredient amount per ingredient
SELECT r.ingredient, r.pizza, r.amount
FROM recipe r
WHERE r.amount = (
  SELECT MAX(r2.amount)
  FROM recipe r2
  WHERE r2.ingredient = r.ingredient
);

-- 2) Same-country pizzas (excluding 'siciliano')
SELECT pizza
FROM menu
WHERE country IN (
  SELECT country FROM menu WHERE pizza = 'siciliano'
)
AND pizza <> 'siciliano'
ORDER BY pizza;

-- 3) Pizzas priced higher than Italy's most expensive
SELECT pizza, price
FROM menu
WHERE price > (
  SELECT MAX(price) FROM menu WHERE country = 'italy'
);

-- 4) Ingredients & types used in 'margarita'
SELECT i.ingredient, i."type"
FROM items i
JOIN recipe r ON i.ingredient = r.ingredient
WHERE r.pizza = 'margarita';

-- 5) Average price per country (only if >1 pizzas)
SELECT country, AVG(price) AS avg_price
FROM menu
WHERE country IS NOT NULL
GROUP BY country
HAVING COUNT(pizza) > 1;

-- 6) Ingredients that appear in multiple pizzas
SELECT DISTINCT ingredient
FROM recipe
WHERE ingredient IN (
  SELECT ingredient
  FROM recipe
  GROUP BY ingredient
  HAVING COUNT(pizza) > 1
)
ORDER BY ingredient;

-- 7) Pizzas more expensive than 'stagiony'
SELECT pizza, price
FROM menu
WHERE price > (
  SELECT price FROM menu WHERE pizza = 'stagiony'
)
ORDER BY price DESC;

-- 8) Ingredients used by Mexican pizzas
SELECT DISTINCT r.ingredient
FROM recipe r
WHERE r.pizza IN (
  SELECT m.pizza FROM menu m WHERE m.country = 'mexico'
)
ORDER BY r.ingredient;
