-- 1. Sửa CustomerID tự tăng
ALTER TABLE customers 
MODIFY CustomerID INT AUTO_INCREMENT;

-- 2. Bắt buộc tên không được NULL
ALTER TABLE customers 
MODIFY FullName VARCHAR(100) NOT NULL;

-- 3. Bắt buộc Email phải có + không trùng
ALTER TABLE customers 
MODIFY Email VARCHAR(100) NOT NULL;

ALTER TABLE customers 
ADD CONSTRAINT unique_email UNIQUE (Email);

-- 4. Kiểm soát tuổi không âm
ALTER TABLE customers 
ADD CONSTRAINT check_age CHECK (Age >= 0);