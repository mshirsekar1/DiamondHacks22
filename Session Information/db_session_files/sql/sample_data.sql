
INSERT INTO `customer` (`cus_first_name`, `cus_last_name`, `cus_email`) VALUES ('Jane', 'Doe', 'janedoe@email.com');
INSERT INTO `customer` (`cus_first_name`, `cus_last_name`, `cus_email`) VALUES ('John', 'Doe', 'johndoe@email.com');
INSERT INTO `customer` (`cus_first_name`, `cus_last_name`, `cus_email`) VALUES ('Alice', 'Coder', 'alicec@email.com');
INSERT INTO `customer` (`cus_first_name`, `cus_last_name`, `cus_email`) VALUES ('Bob', 'Coder', 'bobc@email.com');

INSERT INTO `purchase` (`pur_cus_id`, `pur_date`) VALUES (3, '2021-03-27');
INSERT INTO `purchase` (`pur_cus_id`, `pur_date`) VALUES (2, '2021-03-27');
INSERT INTO `purchase` (`pur_cus_id`, `pur_date`) VALUES (1, '2021-03-27');
INSERT INTO `purchase` (`pur_cus_id`, `pur_date`) VALUES (3, '2021-03-27');
INSERT INTO `purchase` (`pur_cus_id`, `pur_date`) VALUES (1, '2021-03-27');
INSERT INTO `purchase` (`pur_cus_id`, `pur_date`) VALUES (3, '2021-03-27');

INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Nintendo Switch', NULL, 299.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Nintendo Switch Lite', NULL, 199.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Xbox Series X', NULL, 499.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('PlayStation 5', NULL, 499);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Animal Crossing: New Horizons', NULL, 59.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('The Legend of Zelda: Link\'s Awakening', NULL, 59.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Spider-Man: Miles Morales', NULL, 69.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Super Mario 3D All-Stars', NULL, 59.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Minecraft', NULL, 19.99);
INSERT INTO `product` (`pro_name`, `pro_description`, `pro_price`) VALUES ('Pokemon Sword', NULL, 59.99);

INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (1, 1, 1);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (1, 9, 1);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (2, 1, 1);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (2, 4, 1);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (3, 5, 1);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (3, 8, 2);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (3, 9, 1);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (4, 6, 2);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (4, 9, 1);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (5, 10, 3);
INSERT INTO `purchase_product` (`pup_pur_id`, `pup_pro_id`, `pup_quantity`) VALUES (6, 2, 2);
