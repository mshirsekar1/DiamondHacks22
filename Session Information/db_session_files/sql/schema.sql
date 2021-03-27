CREATE DATABASE db_workshop;

USE db_workshop;

CREATE TABLE customer (
  cus_id INT NOT NULL AUTO_INCREMENT,
  cus_first_name VARCHAR(45) NOT NULL,
  cus_last_name VARCHAR(45) NULL DEFAULT NULL,
  cus_email VARCHAR(200) NOT NULL,
  PRIMARY KEY (cus_id)
);


CREATE TABLE product (
  pro_id INT NOT NULL AUTO_INCREMENT,
  pro_name VARCHAR(255) NOT NULL,
  pro_description TEXT NULL DEFAULT NULL,
  pro_price FLOAT NOT NULL,
  PRIMARY KEY (pro_id)
);


CREATE TABLE purchase (
  pur_id INT NOT NULL AUTO_INCREMENT,
  pur_cus_id INT NOT NULL,
  pur_date DATE NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (pur_id)
);

CREATE TABLE purchase_product (
  pup_pur_id int(11) NOT NULL,
  pup_pro_id int(11) NOT NULL,
  pup_quantity int(11) NOT NULL,
  PRIMARY KEY (pup_pur_id,pup_pro_id)
);



ALTER TABLE purchase ADD CONSTRAINT fk_purchase_customer
    FOREIGN KEY (pur_cus_id) REFERENCES customer (cus_id);

ALTER TABLE purchase_product ADD CONSTRAINT fk_purchase_product_purchase
    FOREIGN KEY (pup_pur_id) REFERENCES purchase (pur_id);

ALTER TABLE purchase_product ADD CONSTRAINT fk_purchase_product_product
    FOREIGN KEY (pup_pro_id) REFERENCES product (pro_id);