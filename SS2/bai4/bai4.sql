-- Bước 1: Thêm cột mới
ALTER TABLE users 
ADD COLUMN phone_new VARCHAR(15);

-- Bước 2: Copy dữ liệu từ cột cũ sang cột mới
UPDATE users 
SET phone_new = CAST(phone AS CHAR)
WHERE phone_new IS NULL;

-- Bước 3: Xóa cột cũ
ALTER TABLE users 
DROP COLUMN phone;

-- Bước 4: Đổi tên cột mới thành phone
ALTER TABLE users 
CHANGE phone_new phone VARCHAR(15);