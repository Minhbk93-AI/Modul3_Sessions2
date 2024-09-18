
CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    status BIT DEFAULT 0,
    description TEXT
);
ALTER TABLE category
MODIFY description VARCHAR(255);

INSERT INTO category( name, status, description) VALUE('Áo',1, 'mô tả');
INSERT INTO category( name, status, description) VALUE('Áo',1, 'mô tả');
INSERT INTO category( name, status, description) VALUE('Áo',1, 'mô tả');

-- Răng buộc duy nhất
DROP TABLE category;

CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    status BIT DEFAULT 0,
    description TEXT
);


CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DOUBLE CHECK (price > 0),
    stock INT CHECK (stock > 0),
    status BIT DEFAULT 0,
    category_id INT,
    CONSTRAINT sk_
    FOREIGN KEY (category_id) REFERENCES category(id)
);
INSERT INTO category( name, status, description) VALUE('Áo trâu',1, 'mô tả');
INSERT INTO category( name, status, description) VALUE('Áo',1, 'mô tả');

INSERT INTO products(name,price,stock, status, category_id) VALUES ('Áo 1', 100,100,1,1),('Áo 2', 100,100,1,2);

UPDATE products SET name='Sơn Tùng', price = price*1.5 WHERE id=2;
DELETE FROM products WHERE id=1;


SELECT* FROM category;
SELECT* FROM products;
