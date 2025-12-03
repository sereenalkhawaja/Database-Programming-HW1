-- Name: sereen Alkhawaja
-- ID: 202220596
-- Q1  Employee Database DDL

CREATE DATABASE employeeeDB;
GO


USE employeeeDB;
GO


--Employee Table
CREATE TABLE employee (
    ID INT PRIMARY KEY,
    person_name VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50)
);

--Company Table
CREATE TABLE company (
    company_name VARCHAR(50) PRIMARY KEY,
    city VARCHAR(50)
);

--Works Table
CREATE TABLE works (
    ID INT,
    company_name VARCHAR(50),
    salary INT,
    PRIMARY KEY (ID, company_name),
    FOREIGN KEY (ID) REFERENCES employee(ID)
	  ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (company_name) REFERENCES company(company_name)
	  ON DELETE CASCADE ON UPDATE CASCADE,
);

--Manages Table
CREATE TABLE manages (
    ID INT,
    manager_id INT,
    PRIMARY KEY (ID, manager_id),
    FOREIGN KEY (ID) REFERENCES employee(ID),
    FOREIGN KEY (manager_id) REFERENCES employee(ID)
);