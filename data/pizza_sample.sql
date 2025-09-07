INSERT INTO menu (pizza, price, country) VALUES
  ('margarita', 10, 'italy'),
  ('siciliano', 14, 'italy'),
  ('stagiony',  16, 'italy'),
  ('azteca',   12, 'mexico'),
  ('pollo',    11, 'mexico');

INSERT INTO items (ingredient, "type") VALUES
  ('tomato',      'veg'),
  ('mozzarella',  'dairy'),
  ('olive',       'veg'),
  ('anchovy',     'fish'),
  ('jalapeno',    'veg'),
  ('chicken',     'meat');

INSERT INTO recipe (pizza, ingredient, amount) VALUES
  ('margarita', 'tomato',     100),
  ('margarita', 'mozzarella', 120),
  ('siciliano', 'tomato',     80),
  ('siciliano', 'olive',      40),
  ('siciliano', 'anchovy',    30),
  ('stagiony',  'tomato',     90),
  ('stagiony',  'mozzarella', 110),
  ('azteca',    'tomato',     70),
  ('azteca',    'jalapeno',   25),
  ('pollo',     'tomato',     60),
  ('pollo',     'chicken',    90);
