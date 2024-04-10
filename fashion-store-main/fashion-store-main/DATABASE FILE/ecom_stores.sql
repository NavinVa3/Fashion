-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 09:33 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: ecom_store
--
create database ecom_store;
use ecom_store;

-- --------------------------------------------------------

--
-- Table structure for table about_us
--

CREATE TABLE about_us (
  about_id int(10) NOT NULL,
  about_heading text NOT NULL,
  about_short_desc text NOT NULL,
  about_desc text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table about_us
--

INSERT INTO about_us (about_id, about_heading, about_short_desc, about_desc) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

-- --------------------------------------------------------

--
-- Table structure for table admins
--

CREATE TABLE admins (
  admin_id int(10) NOT NULL,
  admin_name varchar(255) NOT NULL,
  admin_email varchar(255) NOT NULL,
  admin_pass varchar(255) NOT NULL,
  admin_image text NOT NULL,
  admin_contact varchar(255) NOT NULL,
  admin_country text NOT NULL,
  admin_job varchar(255) NOT NULL,
  admin_about text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table admins
--

INSERT INTO admins (admin_id, admin_name, admin_email, admin_pass, admin_image, admin_contact, admin_country, admin_job, admin_about) VALUES
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table bundle_product_relation
--

CREATE TABLE bundle_product_relation (
  rel_id int(10) NOT NULL,
  rel_title varchar(255) NOT NULL,
  product_id int(10) NOT NULL,
  bundle_id int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table cart
--

CREATE TABLE cart (
  p_id int(10) NOT NULL,
  ip_add varchar(255) NOT NULL,
  qty int(10) NOT NULL,
  p_price varchar(255) NOT NULL,
  size text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table categories
--

CREATE TABLE categories (
  cat_id int(10) NOT NULL,
  cat_title text NOT NULL,
  cat_top text NOT NULL,
  cat_image text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table categories
--

INSERT INTO categories (cat_id, cat_title, cat_top, cat_image) VALUES
(2, 'Feminine', 'no', 'feminelg.png'),
(3, 'Kids', 'no', 'kidslg.jpg'),
(4, 'Others', 'yes', 'othericon.png'),
(5, 'Men', 'yes', 'malelg.png');

-- --------------------------------------------------------

--
-- Table structure for table contact_us
--

CREATE TABLE contact_us (
  contact_id int(10) NOT NULL,
  contact_email text NOT NULL,
  contact_heading text NOT NULL,
  contact_desc text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table contact_us
--

INSERT INTO contact_us (contact_id, contact_email, contact_heading, contact_desc) VALUES
(1, 'ecomstore@mail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table coupons
--

CREATE TABLE coupons (
  coupon_id int(10) NOT NULL,
  product_id int(10) NOT NULL,
  coupon_title varchar(255) NOT NULL,
  coupon_price varchar(255) NOT NULL,
  coupon_code varchar(255) NOT NULL,
  coupon_limit int(100) NOT NULL,
  coupon_used int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table coupons
--

INSERT INTO coupons (coupon_id, product_id, coupon_title, coupon_price, coupon_code, coupon_limit, coupon_used) VALUES
(5, 8, 'Sale', '10', 'CASTRO', 2, 1),
(6, 14, 'Sale', '65', 'CODEASTRO', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table customers
--

CREATE TABLE customers (
  customer_id int(10) NOT NULL,
  customer_name varchar(255) NOT NULL,
  customer_email varchar(255) NOT NULL,
  customer_pass varchar(255) NOT NULL,
  customer_country text NOT NULL,
  customer_city text NOT NULL,
  customer_contact varchar(255) NOT NULL,
  customer_address text NOT NULL,
  customer_image text NOT NULL,
  customer_ip varchar(255) NOT NULL,
  customer_confirm_code text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table customers
--

INSERT INTO customers (customer_id, customer_name, customer_email, customer_pass, customer_country, customer_city, customer_contact, customer_address, customer_image, customer_ip, customer_confirm_code) VALUES
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', ''),
(3, 'Demo Customer', 'demo@customer.com', 'Password123', 'DemoCountry', 'DemoCity', '700000000', 'DemoAddress', 'sample_image.jpg', '::1', ''),
(4, 'Thomas', 'thomas@demo.com', 'Password123', 'One Country', 'One City', '777777777', '111 Address', 'sample_img360.png', '::1', '1427053935'),
(5, 'Fracis', 'test@customer.com', 'Password123', 'US', 'Demo City', '780000000', '112 Bleck Street', 'userav-min.png', '::1', '1634138674'),
(6, 'Sample Customer', 'customer@mail.com', 'Password123', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126');

-- --------------------------------------------------------

--
-- Table structure for table customer_orders
--

CREATE TABLE customer_orders (
  order_id int(10) NOT NULL,
  customer_id int(10) NOT NULL,
  due_amount int(100) NOT NULL,
  invoice_no int(100) NOT NULL,
  qty int(10) NOT NULL,
  size text NOT NULL,
  order_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  order_status text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table customer_orders
--

INSERT INTO customer_orders (order_id, customer_id, due_amount, invoice_no, qty, size, order_date, order_status) VALUES
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(23, 3, 20, 1762810884, 1, 'Medium', '2021-09-14 08:35:57', 'Complete'),
(24, 4, 100, 1972602052, 1, 'Large', '2021-09-14 16:37:52', 'Complete'),
(25, 4, 90, 2008540778, 1, 'Medium', '2021-09-14 16:43:15', 'pending'),
(27, 5, 120, 2138906686, 1, 'Small', '2021-09-15 03:18:41', 'Complete'),
(28, 5, 180, 361540113, 2, 'Medium', '2021-09-15 03:25:42', 'Complete'),
(29, 3, 100, 858195683, 1, 'Large', '2021-09-15 03:14:01', 'Complete'),
(31, 6, 245, 901707655, 1, 'Medium', '2021-09-15 03:52:18', 'Complete'),
(32, 6, 75, 2125554712, 1, 'Large', '2021-09-15 03:52:58', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table enquiry_types
--

CREATE TABLE enquiry_types (
  enquiry_id int(10) NOT NULL,
  enquiry_title varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table enquiry_types
--

INSERT INTO enquiry_types (enquiry_id, enquiry_title) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table manufacturers
--

CREATE TABLE manufacturers (
  manufacturer_id int(10) NOT NULL,
  manufacturer_title text NOT NULL,
  manufacturer_top text NOT NULL,
  manufacturer_image text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table manufacturers
--

INSERT INTO manufacturers (manufacturer_id, manufacturer_title, manufacturer_top, manufacturer_image) VALUES
(2, 'Adidas', 'no', 'adilg.png'),
(3, 'Nike', 'no', 'niketransl.png'),
(4, 'Philip Plein', 'no', 'pplg.png'),
(5, 'Lacoste', 'no', 'lacostelg.png'),
(7, 'Polo', 'no', 'polobn.jpg'),
(8, 'Gildan 1800', 'no', 'sample_img360.png');

-- --------------------------------------------------------

--
-- Table structure for table payments
--

CREATE TABLE payments (
  payment_id int(10) NOT NULL,
  invoice_no int(10) NOT NULL,
  amount int(10) NOT NULL,
  payment_mode text NOT NULL,
  ref_no int(10) NOT NULL,
  code int(10) NOT NULL,
  payment_date text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table payments
--

INSERT INTO payments (payment_id, invoice_no, amount, payment_mode, ref_no, code, payment_date) VALUES
(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021');

-- --------------------------------------------------------

--
-- Table structure for table pending_orders
--

CREATE TABLE pending_orders (
  order_id int(10) NOT NULL,
  customer_id int(10) NOT NULL,
  invoice_no int(10) NOT NULL,
  product_id text NOT NULL,
  qty int(10) NOT NULL,
  size text NOT NULL,
  order_status text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table pending_orders
--

INSERT INTO pending_orders (order_id, customer_id, invoice_no, product_id, qty, size, order_status) VALUES
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(23, 3, 1762810884, '12', 1, 'Medium', 'Complete'),
(24, 4, 1972602052, '5', 1, 'Large', 'Complete'),
(25, 4, 2008540778, '13', 1, 'Medium', 'pending'),
(27, 5, 2138906686, '14', 1, 'Small', 'Complete'),
(28, 5, 361540113, '13', 2, 'Medium', 'Complete'),
(29, 3, 858195683, '5', 1, 'Large', 'Complete'),
(31, 6, 901707655, '8', 1, 'Medium', 'Complete'),
(32, 6, 2125554712, '15', 1, 'Large', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table products
--

CREATE TABLE products (
  product_id int(10) NOT NULL,
  p_cat_id int(10) NOT NULL,
  cat_id int(10) NOT NULL,
  manufacturer_id int(10) NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  product_title text NOT NULL,
  product_url text NOT NULL,
  product_img1 text NOT NULL,
  product_img2 text NOT NULL,
  product_img3 text NOT NULL,
  product_price int(10) NOT NULL,
  product_psp_price int(100) NOT NULL,
  product_desc text NOT NULL,
  product_features text NOT NULL,
  product_video text NOT NULL,
  product_keywords text NOT NULL,
  product_label text NOT NULL,
  status varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table products
--

INSERT INTO products (product_id, p_cat_id, cat_id, manufacturer_id, date, product_title, product_url, product_img1, product_img2, product_img3, product_price, product_psp_price, product_desc, product_features, product_video, product_keywords, product_label, status) VALUES
(5, 7, 5, 5, '2021-09-14 09:13:25', 'Denim Borg Lined Western Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description.</p>\r\n', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', '\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 'Jackets', 'Gift', 'product'),
(8, 4, 2, 4, '2021-09-14 10:13:02', 'Sleeveless Flaux Fur Hybrid Coat', 'product-url-8', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 245, 100, '\r\n\r\n\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description.</p>\r\n\r\n\r\n', '\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n', '\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n', 'Coats', 'New', 'product'),
(9, 5, 4, 7, '2021-09-14 17:06:30', 'Long Sleeves Polo Shirt for Men', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 35, '\r\n\r\n\r\n\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description.</p>\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n', 'T-Shirt', 'Sale', 'product'),
(12, 8, 5, 2, '2021-05-25 09:15:09', 'Ultraboost 21 PrimeBlue Shoes', 'ultraboost-21-adidas', 'Ultraboost_21.jpg', 'Ultraboost_21_2.jpg', 'Ultraboost_21_3.jpg', 150, 180, '\r\n\r\nThis product is made with Primeblue, a high-performance recycled material made in part with Parley Ocean Plastic. 50% of the upper is textile, 92% of the textile is Primeblue yarn. No virgin polyester.', '\r\n\r\nComfortable and responsive, Ultraboost became our first shoe to be as popular in streetwear style as it is in performance running.', '\r\nhttps://assets.adidas.com/videos/q_auto,f_auto,g_auto/599fff35a3cf432aa9bbac7c0091316f_d98c/Ultraboost_21_Primeblue_Shoes_Blue_FX7729_video.mp4\r\n', 'sneakers adidas ultraboost shoes', 'New', 'product'),
(13, 9, 2, 3, '2021-09-14 16:26:51', 'Nike Sportswear Essential Collection', 'nike-sportswear-essen-col', 'nike-s.jpg', 'nike-s2.jpg', 'nike-s02.jpg', 90, 85, '\r\n\r\nThis is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text.\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nThis is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.\r\n\r\n', '\r\n\r\n\r\nThis is a sample text. This is a sample text. This is a sample text.\r\n\r\n\r\n', 'nike sportswear', 'Featured', 'product'),
(14, 5, 5, 7, '2021-09-14 17:03:38', 'Demo Product Title Name - Test', 'demo-product-showcase', 'Prod-placeholder.jpg', 'Prod-placeholder.jpg', 'Prod-placeholder.jpg', 120, 111, '\r\nThis is a demo. This is a demo. This is a demo. This is a demo.\r\n\r\n\r\n', '\r\n\r\n\r\nThis is a demo.\r\n', '\r\n\r\n\r\nThis is a demo.\r\n', 'demo test product', 'Test', 'product'),
(15, 5, 5, 8, '2021-09-15 03:46:42', 'Gildan 1800 Ultra Cotton Polo Shirt', 'cotton-polo-shirt', 'g18bulk.jpg', 'g18bulk2.jpg', 'g18bulk3.jpg', 88, 75, '\r\nTHIS IS A DEMO DESCRIPTION\r\n', '\r\n\r\nDEMO FEATURES\r\n\r\n', '\r\n\r\n\r\n\r\n', 'polo shirt', 'Sale', 'bundle');

-- --------------------------------------------------------

--
-- Table structure for table product_categories
--

CREATE TABLE product_categories (
  p_cat_id int(10) NOT NULL,
  p_cat_title text NOT NULL,
  p_cat_top text NOT NULL,
  p_cat_image text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table product_categories
--

INSERT INTO product_categories (p_cat_id, p_cat_title, p_cat_top, p_cat_image) VALUES
(4, 'Coats', 'no', 'coaticn.png'),
(5, 'T-Shirts', 'no', 'tshirticn.png'),
(6, 'Sweater', 'no', 'sweatericn.png'),
(7, 'jackets', 'yes', 'jacketicn.png'),
(8, 'Sneakers', 'yes', 'sneakericn.png'),
(9, 'Trousers', 'no', 'trousericn.png');

-- --------------------------------------------------------

--
-- Table structure for table store
--

CREATE TABLE store (
  store_id int(10) NOT NULL,
  store_title varchar(255) NOT NULL,
  store_image varchar(255) NOT NULL,
  store_desc text NOT NULL,
  store_button varchar(255) NOT NULL,
  store_url varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table store
--

INSERT INTO store (store_id, store_title, store_image, store_desc, store_button, store_url) VALUES
(4, 'London Store', 'store (3).jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(5, 'New York Store', 'store (1).png', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
(6, 'Paris Store', 'store (2).jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');

-- --------------------------------------------------------

--
-- Table structure for table terms
--

CREATE TABLE terms (
  term_id int(10) NOT NULL,
  term_title varchar(100) NOT NULL,
  term_link varchar(100) NOT NULL,
  term_desc text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table terms
--

INSERT INTO terms (term_id, term_title, term_link, term_desc) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table wishlist
--

CREATE TABLE wishlist (
  wishlist_id int(10) NOT NULL,
  customer_id int(10) NOT NULL,
  product_id int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table wishlist
--

INSERT INTO wishlist (wishlist_id, customer_id, product_id) VALUES
(2, 2, 8),
(3, 5, 13),
(4, 3, 13),
(5, 6, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table about_us
--
ALTER TABLE about_us
  ADD COLUMN admin_id INT, 
  ADD CONSTRAINT fk_admin_id
  FOREIGN KEY (admin_id)
  REFERENCES admins (admin_id);
  
ALTER TABLE bundle_product_relation
  ADD COLUMN admin_id INT, 
  ADD CONSTRAINT fk_admin_id_bundle_product_relation
  FOREIGN KEY (admin_id)
  REFERENCES admins (admin_id);
  
ALTER TABLE bundle_product_relation
  ADD COLUMN p_id INT, -- Assuming this column exists and refers to the p_id in the cart table
  ADD CONSTRAINT fk_p_id_bundle_product_relation
  FOREIGN KEY (p_id)
  REFERENCES cart (p_id);
  
ALTER TABLE cart
  ADD COLUMN cat_id INT, 
  ADD CONSTRAINT fk_cat_id_cart
  FOREIGN KEY (cat_id)
  REFERENCES categories (cat_id);
  
ALTER TABLE contact_us
  ADD COLUMN cat_id INT,
  ADD CONSTRAINT fk_cat_id_contact_us
  FOREIGN KEY (cat_id)
  REFERENCES categories (cat_id);
  
ALTER TABLE contact_us
  ADD COLUMN coupon_id INT,
  ADD CONSTRAINT fk_coupon_id_contact_us
  FOREIGN KEY (coupon_id)
  REFERENCES coupons (coupon_id);
  
ALTER TABLE customers
  ADD COLUMN coupon_id INT,
  ADD CONSTRAINT fk_coupon_id_customers
  FOREIGN KEY (coupon_id)
  REFERENCES coupons (coupon_id);
  
ALTER TABLE customer_orders
  ADD CONSTRAINT fk_customer_id_customer_orders
  FOREIGN KEY (customer_id)
  REFERENCES customers (customer_id);
  
ALTER TABLE customer_orders
  ADD CONSTRAINT fk_enquiry_id_customer_orders
  FOREIGN KEY (enquiry_id)
  REFERENCES enquiry_types (enquiry_id);
  
ALTER TABLE manufacturers
  ADD CONSTRAINT fk_enquiry_id_manufacturers
  FOREIGN KEY (enquiry_id)
  REFERENCES enquiry_types (enquiry_id);
  
ALTER TABLE payments
  ADD COLUMN manufacturer_id INT(10),
  ADD CONSTRAINT fk_manufacturer_id
  FOREIGN KEY (manufacturer_id)
  REFERENCES manufacturers (manufacturer_id);
  
ALTER TABLE pending_orders
  ADD COLUMN payment_id INT(10),
  ADD CONSTRAINT fk_payment_id
  FOREIGN KEY (payment_id)
  REFERENCES payments (payment_id);
  
ALTER TABLE pending_orders
  ADD COLUMN product_id INT(10),
  ADD CONSTRAINT fk_product_id
  FOREIGN KEY (product_id)
  REFERENCES products (product_id);
  
ALTER TABLE product_categories
  ADD COLUMN product_id INT(10),
  ADD CONSTRAINT fk_product_id
  FOREIGN KEY (product_id)
  REFERENCES products (product_id);
  
ALTER TABLE product_categories
  ADD COLUMN store_id INT(10),
  ADD CONSTRAINT fk_store_id
  FOREIGN KEY (store_id)
  REFERENCES store (store_id);
  
ALTER TABLE store
  ADD COLUMN term_id INT(10) NOT NULL,
  ADD CONSTRAINT fk_term_id
  FOREIGN KEY (term_id)
  REFERENCES terms (term_id);

ALTER TABLE wishlist
  ADD COLUMN term_id INT(10) NOT NULL,
  ADD CONSTRAINT fk_term_id
  FOREIGN KEY (term_id)
  REFERENCES terms (term_id);

ALTER TABLE wishlist
  ADD PRIMARY KEY (wishlist_id);
ALTER TABLE about_us
  MODIFY about_id INT(10) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT=1;

ALTER TABLE about_us
MODIFY COLUMN about_id INT(10) NOT NULL AUTO_INCREMENT,
ADD COLUMN admin_id INT(10) NOT NULL,
ADD CONSTRAINT fk_about_us_admin_id
FOREIGN KEY (admin_id)
REFERENCES admins(admin_id)
ON DELETE CASCADE
ON UPDATE CASCADE,
AUTO_INCREMENT=2;

ALTER TABLE admins
MODIFY COLUMN admin_id INT(10) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=3;
ALTER TABLE bundle_product_relation
ADD COLUMN admin_id INT(10) NOT NULL,
ADD CONSTRAINT fk_bundle_product_relation_admin_id
FOREIGN KEY (admin_id)
REFERENCES admins (admin_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE bundle_product_relation
MODIFY COLUMN rel_id INT(10) NOT NULL AUTO_INCREMENT,
ADD COLUMN admin_id INT(10) NOT NULL,
ADD CONSTRAINT fk_bundle_product_relation_admin_id
FOREIGN KEY (admin_id)
REFERENCES admins (admin_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE categories
MODIFY COLUMN cat_id INT(10) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=6;
ALTER TABLE contact_us
ADD COLUMN cat_id INT(10) NOT NULL,
ADD CONSTRAINT fk_contact_us_cat_id
FOREIGN KEY (cat_id)
REFERENCES categories (cat_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE contact_us
MODIFY COLUMN contact_id INT(10) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=2;
ALTER TABLE coupons
ADD COLUMN contact_id INT(10) NOT NULL,
ADD CONSTRAINT fk_coupons_contact_id
FOREIGN KEY (contact_id)
REFERENCES contact_us (contact_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE coupons
MODIFY COLUMN coupon_id INT(10) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=7;
ALTER TABLE coupons
ADD COLUMN customer_id INT(10) NOT NULL,
ADD CONSTRAINT fk_coupons_customers
FOREIGN KEY (customer_id)
REFERENCES customers (customer_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE customers
MODIFY COLUMN customer_id INT(10) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=7;
ALTER TABLE customer_orders
ADD COLUMN customer_id INT(10) NOT NULL,
ADD CONSTRAINT fk_customer_orders_customers
FOREIGN KEY (customer_id)
REFERENCES customers (customer_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE customer_orders
MODIFY COLUMN order_id INT(10) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=33;
ALTER TABLE customer_orders
ADD COLUMN enquiry_type_id INT(10) NOT NULL,
ADD CONSTRAINT fk_customer_orders_enquiry_types
FOREIGN KEY (enquiry_type_id)
REFERENCES enquiry_types (enquiry_type_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE enquiry_types
  ADD COLUMN manufacturer_id INT(10) UNSIGNED,
  ADD CONSTRAINT fk_manufacturer_id
  FOREIGN KEY (manufacturer_id)
  REFERENCES manufacturers (manufacturer_id);

ALTER TABLE payments
  ADD COLUMN manufacturer_id INT(10) UNSIGNED,
  ADD CONSTRAINT fk_manufacturer_id
  FOREIGN KEY (manufacturer_id)
  REFERENCES manufacturers (manufacturer_id);

ALTER TABLE payments
ADD COLUMN manufacturer_id INT(10) NOT NULL,
ADD CONSTRAINT fk_payments_manufacturers
FOREIGN KEY (manufacturer_id)
REFERENCES manufacturers (manufacturer_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE pending_orders
ADD COLUMN product_id INT(10) NOT NULL,
ADD CONSTRAINT fk_pending_orders_products
FOREIGN KEY (product_id)
REFERENCES products (product_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE products
ADD COLUMN category_id INT(10) NOT NULL,
ADD CONSTRAINT fk_products_category_id
FOREIGN KEY (category_id)
REFERENCES product_categories (category_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE product_categories
ADD COLUMN store_id INT(10) NOT NULL,
ADD CONSTRAINT fk_product_categories_store_id
FOREIGN KEY (store_id)
REFERENCES store (store_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE store
  ADD COLUMN term_id INT(10) UNSIGNED,
  ADD CONSTRAINT fk_term_id
  FOREIGN KEY (term_id)
  REFERENCES terms (term_id);

ALTER TABLE terms
ADD COLUMN store_id INT(10) NOT NULL,
ADD CONSTRAINT fk_terms_store_id
FOREIGN KEY (store_id)
REFERENCES store (store_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE wishlist
MODIFY wishlist_id int(10) NOT NULL AUTO_INCREMENT,
ADD CONSTRAINT fk_wishlist_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
ADD CONSTRAINT fk_wishlist_product_id FOREIGN KEY (product_id) REFERENCES products (product_id),
AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;