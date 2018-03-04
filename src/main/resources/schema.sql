CREATE TABLE IF NOT EXISTS app_user(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age VARCHAR(255) NOT NULL,
  salary decimal NOT NULL
);

CREATE TABLE IF NOT EXISTS menu(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category VARCHAR(30) NOT NULL,
  image1 IMAGE NOT NULL,
  image2 IMAGE NOT NULL,
  href VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS sauces(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cost decimal NOT NULL,
  image IMAGE NOT NULL
);

CREATE TABLE IF NOT EXISTS meat_ingredients(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cost decimal NOT NULL,
  image IMAGE NOT NULL
);

CREATE TABLE IF NOT EXISTS mushrooms(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cost decimal NOT NULL,
  image IMAGE NOT NULL
);

CREATE TABLE IF NOT EXISTS  fruits_and_vegetables(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cost decimal NOT NULL,
  image IMAGE NOT NULL
);

CREATE TABLE IF NOT EXISTS seafood(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cost decimal NOT NULL,
  image IMAGE NOT NULL
);

CREATE TABLE IF NOT EXISTS cheese(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  cost decimal NOT NULL,
  image IMAGE NOT NULL
);

CREATE TABLE IF NOT EXISTS orders(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_details_id BIGINT NOT NULL,
  request_datetime TIMESTAMP NOT NULL,
  delivery_datetime TIMESTAMP,
  client VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  phonenumber VARCHAR(20) NOT NULL,
  doorcode VARCHAR(20),
  client_comments VARCHAR(255),
  courier_comments VARCHAR(255),
  payment_type VARCHAR(30) NOT NULL,
  courier VARCHAR(50) NOT NULL,
  call_operator VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  is_company BOOLEAN NOT NULL,
  total_cost decimal NOT NULL,
  delivery_cost decimal NOT NULL,
  tax_percent int NOT NULL,
  discount_percent int NOT NULL,
  total_cost_with_tax decimal NOT NULL,
  order_finalized boolean
);

CREATE TABLE IF NOT EXISTS order_details(
  id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_id BIGINT NOT NULL,
  sauces VARCHAR(10),
  meat_ingredients VARCHAR(10),
  mushrooms VARCHAR(10),
  fruits_and_vegetables VARCHAR(10),
  seafood VARCHAR(10),
  cheese VARCHAR(10),
  picca_size VARCHAR(10)
);
