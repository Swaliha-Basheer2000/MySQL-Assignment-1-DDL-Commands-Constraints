DROP DATABASE IF EXISTS EMPLOYEE;
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE Departments (
Department_Id INT,
Department_Name VARCHAR(100)
);
CREATE TABLE Location (
Location_Id INT,
Location VARCHAR(30)
);
CREATE TABLE Employees (
Employee_Id INT,
Employee_Name VARCHAR(50),
Gender ENUM('M', 'F'),
Age INT,
Hire_date DATE,
Designation VARCHAR(100),
Department_id INT,
Location_id INT,
Salary DECIMAL(10,2)
);
ALTER TABLE Employees
ADD Email VARCHAR(100);
ALTER TABLE Employees
MODIFY Designation VARCHAR(255);
ALTER TABLE Employees
DROP COLUMN Age;
ALTER TABLE Employees
RENAME COLUMN Hire_date TO Date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE EMPLOYEE;
DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
Department_Id INT PRIMARY KEY,
Department_Name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Location (
Location_Id INT PRIMARY KEY AUTO_INCREMENT,
Location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE Employees (
Employee_Id INT PRIMARY KEY,
Employee_Name VARCHAR(50) NOT NULL,
Gender ENUM('M', 'F'),
Age INT CHECK (age >= 18),
Hire_Date DATE DEFAULT (CURRENT_DATE),
Designation VARCHAR(100),
Department_Id INT,
Location_Id INT,
Salary DECIMAL(10,2),
FOREIGN KEY (department_id)
REFERENCES Departments(department_id),
FOREIGN KEY (location_id)
REFERENCES Location(location_id)
);



