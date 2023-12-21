# 21-12-2023-davaleba

## მონაცემთა ბაზის შექმნა
```sql
CREATE DATABASE ecommerce;
USE ecommerce;

-- კატეგორიების ცხრილი
CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

-- პროდუქტების ცხრილი
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);
```
## კატეგორიების შეყვანა
```sql
INSERT INTO ecommerce.categories (`id`, `name`) VALUES
(1, 'ლეპტოპები'),
(2, 'ტელეფონები'),
(3, 'კონსოლები'),
(4, 'სმარტ გაჯეტები'),
(5, 'ტელევიზორები'),
(6, 'ფოტო | ვიდეო'),
(7, 'აუდიო სისტემა'),
(8, 'დრონები'),
(9, 'ყურსასმენები'),
(10, 'დამტენები');
```
## პროდუქტების შეყვანა
```sql
INSERT INTO ecommerce.products (id, category_id, name, price, image) VALUES
(1, 2, 'iPhone 15 Pro Max', '4099.00', 'iphone15.png'),
(2, 2, 'Samsung galaxy S23', '3900.00', 'galaxys23.png'),
(3, 1, '2019 Dell Alienware', '8000.00', 'dellalienware.jpeg'),
(4, 1, 'Asus ROG Zephyrus G14 ', '8000.00', 'asusrog.webp'),
(5, 3, 'Playstation 5', '1500.00', 'ps5.jpeg'),
(6, 3, 'Xbox series X', '1500.00', 'xboxseriesx.webp'),
(7, 4, 'ჭკვიანი ნათურა', '30.00', 'smartlight.jpeg'),
(8, 4, 'რობოტი მტვერსასრუტი', '3000.00', 'mtversasruti.jpeg'),
(9, 5, 'Samsung 50" Crystal UHD 4K ', '10000.00', 'samsung50tv.jpeg'),
(10, 5, 'Wall Mount LG', '8000.00', 'lgtv.webp'),
(11, 6, 'Nikon Z 6', '7800.00', 'nikoncamera.webp'),
(12, 6, 'Canon EOS R50', '9000.00', 'canoncamera.webp'),
(13, 7, 'დინამიკი - Trust - Torro', '1000.00', 'dinamikitrust.jpg'),
(14, 7, 'Jbl Party Box', '5000.00', 'jbldinamiki.jpeg'),
(15, 8, 'DJI mini 3 pro drone', '6000.00', 'djimini.webp'),
(16, 8, 'DJI MAVIC AIR', '11000.00', 'djmavicair.jpeg'),
(17, 9, 'Apple headset', '3215.00', 'appleheadset.jpeg'),
(18, 9, 'Marshall headset', '500.00', 'marshall.jpeg'),
(19, 10, 'Apple charger', '30.00', 'damteni.webp'),
(20, 10, 'Macbook pro charger', '120.00', 'maccharger.jpeg');
```