CREATE DATABASE mydata;
USE mydata;
CREATE TABLE contacts(
  contacts_id INT(20) NOT NULL AUTO_INCREMENT,
  last_name varchar(20) NOT NULL ,
  first_name varchar(20),
  birth_day date NOT NULL ,
  primary key(contacts_id)
  );
CREATE TABLE suppliers (
  suppliers_id   INT(15)     NOT NULL AUTO_INCREMENT,
  suppliers_name VARCHAR(14) NOT NULL DEFAULT 'TBD',
  account_rep    varchar(12) NOT NULL,
  PRIMARY KEY (suppliers_id)

);
DROP TABLE suppliers, customers;
ALTER TABLE contacts
  ADD last_name varchar(40) NOT NULL
  AFTER contacts_id;
ALTER TABLE contacts
ADD first_name varchar(35) NULL
AFTER last_name;
ALTER TABLE contacts
    MODIFY last_name varchar(50) NULL;
ALTER TABLE contacts
RENAME TO people;

