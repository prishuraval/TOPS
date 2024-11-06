create database marketco;

-- Create Company table
CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(2),
    Zip VARCHAR(10)
);

-- Create Contact table
CREATE TABLE Contact (
    ContactID INT PRIMARY KEY,
    CompanyID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(2),
    Zip VARCHAR(10),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

-- Create Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Salary DECIMAL(10, 2),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(45),
    Phone VARCHAR(12)
);

-- Create ContactEmployee table
CREATE TABLE ContactEmployee (
    ContactEmployeeID INT PRIMARY KEY,
    ContactID INT,
    EmployeeID INT,
    ContactDate DATE,
    Description VARCHAR(100),
    FOREIGN KEY (ContactID) REFERENCES Contact(ContactID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

INSERT INTO Company (CompanyID, CompanyName, Street, City, State, Zip) VALUES
(1, 'Infosys', 'Electronic City', 'Bangalore', 'KA', '560100'),
(2, 'Tata Consultancy Services', 'Rajiv Gandhi Infotech Park', 'Pune', 'MH', '411057'),
(3, 'Wipro', 'Sarjapur Road', 'Bangalore', 'KA', '560035'),
(4, 'HCL Technologies', 'Sector 126', 'Noida', 'UP', '201301'),
(5, 'Tech Mahindra', 'Hinjewadi', 'Pune', 'MH', '411057'),
(6, 'Cognizant', 'DLF IT Park', 'Chennai', 'TN', '600089'),
(7, 'Accenture', 'Bagmane Tech Park', 'Bangalore', 'KA', '560093'),
(8, 'IBM India', 'Manyata Tech Park', 'Bangalore', 'KA', '560045'),
(9, 'Capgemini', 'EPIP Zone', 'Bangalore', 'KA', '560066'),
(10, 'L&T Infotech', 'Powai', 'Mumbai', 'MH', '400072');

INSERT INTO Contact (ContactID, CompanyID, FirstName, LastName, Street, City, State, Zip, IsMain, Email, Phone) VALUES
(1, 1, 'Ravi', 'Kumar', 'Koramangala', 'Bangalore', 'KA', '560034', TRUE, 'ravi.kumar@infosys.com', '9876543210'),
(2, 2, 'Anjali', 'Mehta', 'Aundh', 'Pune', 'MH', '411007', FALSE, 'anjali.mehta@tcs.com', '9765432101'),
(3, 3, 'Rahul', 'Sharma', 'BTM Layout', 'Bangalore', 'KA', '560068', TRUE, 'rahul.sharma@wipro.com', '9654321012'),
(4, 4, 'Neha', 'Singh', 'Sector 62', 'Noida', 'UP', '201309', FALSE, 'neha.singh@hcl.com', '9543210123'),
(5, 5, 'Karan', 'Patel', 'Baner', 'Pune', 'MH', '411045', TRUE, 'karan.patel@techm.com', '9432101234'),
(6, 6, 'Pooja', 'Rao', 'OMR', 'Chennai', 'TN', '600097', FALSE, 'pooja.rao@cognizant.com', '9321012345'),
(7, 7, 'Vikram', 'Desai', 'Whitefield', 'Bangalore', 'KA', '560066', TRUE, 'vikram.desai@accenture.com', '9210123456'),
(8, 8, 'Meera', 'Joshi', 'Hebbal', 'Bangalore', 'KA', '560024', FALSE, 'meera.joshi@ibm.com', '9101234567'),
(9, 9, 'Rakesh', 'Gupta', 'Indiranagar', 'Bangalore', 'KA', '560038', TRUE, 'rakesh.gupta@capgemini.com', '9012345678'),
(10, 10, 'Sneha', 'Bhatt', 'Andheri', 'Mumbai', 'MH', '400053', FALSE, 'sneha.bhatt@lntinfotech.com', '9123456789');

INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary, HireDate, JobTitle, Email, Phone) VALUES
(1, 'Amit', 'Roy', 750000, '2019-04-15', 'Software Engineer', 'amit.roy@infosys.com', '9876500000'),
(2, 'Sunita', 'Deshpande', 800000, '2018-07-20', 'Senior Developer', 'sunita.deshpande@tcs.com', '9876500001'),
(3, 'Rajesh', 'Verma', 900000, '2020-01-10', 'Team Lead', 'rajesh.verma@wipro.com', '9876500002'),
(4, 'Kavita', 'Nair', 650000, '2017-09-18', 'Analyst', 'kavita.nair@hcl.com', '9876500003'),
(5, 'Harsh', 'Bajaj', 550000, '2019-03-12', 'Developer', 'harsh.bajaj@techm.com', '9876500004'),
(6, 'Ritu', 'Kulkarni', 600000, '2016-11-25', 'Data Analyst', 'ritu.kulkarni@cognizant.com', '9876500005'),
(7, 'Manoj', 'Pillai', 950000, '2021-06-14', 'Project Manager', 'manoj.pillai@accenture.com', '9876500006'),
(8, 'Swati', 'Saxena', 700000, '2018-12-05', 'Consultant', 'swati.saxena@ibm.com', '9876500007'),
(9, 'Ajay', 'Kapoor', 620000, '2017-05-21', 'Business Analyst', 'ajay.kapoor@capgemini.com', '9876500008'),
(10, 'Priya', 'Malhotra', 780000, '2020-09-30', 'Software Engineer', 'priya.malhotra@lntinfotech.com', '9876500009');

INSERT INTO ContactEmployee (ContactEmployeeID, ContactID, EmployeeID, ContactDate, Description) VALUES
(1, 1, 1, '2023-08-01', 'Met to discuss project requirements'),
(2, 2, 2, '2023-08-03', 'Updated on project progress'),
(3, 3, 3, '2023-08-05', 'Addressed technical challenges'),
(4, 4, 4, '2023-08-07', 'Reviewed project milestones'),
(5, 5, 5, '2023-08-09', 'Discussed project risks'),
(6, 6, 6, '2023-08-11', 'Talked about data integration strategies'),
(7, 7, 7, '2023-08-13', 'Updated on project timelines'),
(8, 8, 8, '2023-08-15', 'Consulted on compliance matters'),
(9, 9, 9, '2023-08-17', 'Reviewed quality assurance process'),
(10, 10, 10, '2023-08-19', 'Closed project phase 1');

-- In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800 
UPDATE Employee
SET Phone = '215-555-8800'
WHERE FirstName = 'Lesley' AND LastName = 'Bland';

-- In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” . 
UPDATE Company
SET CompanyName = 'Urban Outfitters Inc.'
WHERE CompanyName = 'Capgemini';

--  In ContactEmployee table, the statement that removes Dianne Connor’s contact event with Jack Lee (one statement).
DELETE FROM ContactEmployee
WHERE ContactEmployeeID = 5;

-- SQL SELECT query to display the names of employees who have contacted "Toll Brothers"
SELECT e.FirstName, e.LastName
FROM Employee e
JOIN ContactEmployee ce ON e.EmployeeID = ce.EmployeeID
JOIN Contact c ON ce.ContactID = c.ContactID
JOIN Company co ON c.CompanyID = co.CompanyID
WHERE co.CompanyName = 'Toll Brothers';

-- What is the significance of “%” and “_” operators in the LIKE statement? 
-- ans=> In SQL, the LIKE statement uses % to match any sequence of characters and _ to match a single character. 
--       These wildcards help perform flexible text searches.

-- Explain normalization in the context of databases.
-- ans=>Normalization in databases tidies up data, reduces redundancy, and improves integrity by organizing it into related tables. 
--      Think of it as decluttering your room—making everything easy to find and manage.
-- 		Types of Normalization:
--      First Normal Form (1NF):
-- 			Ensures that each column contains atomic (indivisible) values and that each record is unique.
-- 		Second Normal Form (2NF):
-- 			Builds on 1NF by ensuring that all non-key columns are fully dependent on the entire primary key, not just part of it.
-- 		Third Normal Form (3NF):
-- 			Ensures that all columns are directly dependent on the primary key and not on other non-key columns (i.e., no transitive dependencies).
-- 		Boyce-Codd Normal Form (BCNF):
-- 			A stronger version of 3NF, where every determinant must be a candidate key. It fixes some anomalies that can occur in 3NF.
--      Fourth Normal Form (4NF):
-- 			Ensures no multi-valued dependencies. A multi-valued dependency occurs when one attribute in a table uniquely 
-- 			determines another attribute but is independent of a third attribute.
-- 		Fifth Normal Form (5NF):
-- 			Deals with cases where information can be reconstructed from smaller pieces of data, 
-- 			but splitting it further is necessary to remove redundancy.

-- What does a join in MySQL mean?
-- Ans=>In MySQL, a join connects tables by matching related columns, letting you view data from multiple tables together.
--      This is useful when data is spread across multiple tables but you want to see it all together in one view.

-- What do you understand about DDL, DCL, and DML in MySQL? 
-- Ans=>DDL: Defines the structure of database objects (e.g., CREATE, ALTER, DROP).
--      DML: Manages data within tables (e.g., INSERT, UPDATE, DELETE, SELECT).
--      DCL: Controls access to data (e.g., GRANT, REVOKE).
--      These three language subsets enable database creation, modification, and data management.

-- What is the role of the MySQL JOIN clause in a query, and what are some common types of joins?
-- Ans.=>The JOIN clause in MySQL enables combining records from multiple tables based on a related column, 
--       which is essential in relational databases. Common types include INNER JOIN (returns matching records), 
 --      LEFT JOIN (returns all records from the left table), and RIGHT JOIN (returns all records from the right table, even if unmatched). 



 







