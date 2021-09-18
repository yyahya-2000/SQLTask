CREATE TABLE IF NOT EXISTS 'Products' (
       'product_id' INT NOT NULL,
       'product_name' VARCHAR(45) NULL,
       PRIMARY KEY ('product_id'));

CREATE TABLE IF NOT EXISTS 'Categories' (
       'category_id' INT NOT NULL,
       'category_name' VARCHAR(45) NULL,
       PRIMARY KEY ('category_id'));

CREATE TABLE IF NOT EXISTS 'ProductCategories'(
       'product_id' INT NOT NULL,
       'category_id' INT NOT NULL,
       PRIMARY KEY ('product_id',  'category_id'));

INSERT INTO 'Products' ('product_id', 'product_name') VALUES (1, 'product1'), (2, 'product2'),
(3, 'product3'), (4, 'product4'), (5, 'product5'), (6, 'product6');

INSERT INTO 'Categories' ('category_id', 'category_name') VALUES (1, 'category1'), (2, 'category2'),
(3, 'category3'), (4, 'category4'), (5, 'category5'), (6, 'category6');

INSERT INTO 'ProductCategories' ('product_id', 'category_id') VALUES (1, 1), (1, 2), (3, 1), (3, 3), (6, 4), (6, 6);