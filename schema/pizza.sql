CREATE TABLE menu (
  pizza   TEXT PRIMARY KEY,
  price   NUMERIC NOT NULL,
  country TEXT
);

CREATE TABLE recipe (
  pizza      TEXT NOT NULL,
  ingredient TEXT NOT NULL,
  amount     NUMERIC NOT NULL
);

CREATE TABLE items (
  ingredient TEXT PRIMARY KEY,
  "type"     TEXT NOT NULL
);
