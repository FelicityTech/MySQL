CREATE DATABASE example;
USE example;

DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    postalcode VARCHAR(15) DEFAULT NULL
);

DROP TABLE if EXISTS product;

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50)NOT NULL,
    price VARCHAR(7) NOT NULL,
    qty VARCHAR(4) NOT NULL
)

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    COMMENTid INT,
    cust_id INT,
    timedate TIMESTAMP,
    FOREIGN KEY(cut_id) REFERENCES customer(id),BIGINT
)

CREATE TABLE product_transaction (
    prod_id INT,
    trans_id INT,
    PRIMARY KEY(prod_id, trans_id),
    FOREIGN KEY(prod_id) REFERENCES product(id),
    FOREIGN KEY(trnas_id) REFERENCES transactions(id)
)