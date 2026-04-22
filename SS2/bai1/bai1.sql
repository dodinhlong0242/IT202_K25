CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price INT NOT NULL, -- lưu theo đơn vị nhỏ nhất (vd: VNĐ)
    description TEXT
);