 USE entri_d42;
CREATE TABLE Country(
Id INT PRIMARY KEY ,
Country_name VARCHAR(50),
Population INT,
Area INT
);
INSERT INTO Country(Id,Country_name,Population,Area) VALUES
(1,'USA',35120000,9845216),
(2,'UK',67903456,9978651),
(3,'Canada',37789680,9980768),
(4,'India',1453278967,3674568),
(5,'Australia',25678780,7908657),
(6,'Brazil',211345670,8769860),
(7,'Russia',15634000,17045630),
(8,'Germany',834567328,357022),
(9,'France',670000890,5516387 ),
(10,'Japan',126860000,401220);

CREATE TABLE Persons (
Id INT PRIMARY KEY ,
Fname VARCHAR(50),
Lname VARCHAR(50),
Population INT,
Rating DECIMAL(3,2),
Country_id INT,
Country_name VARCHAR(50),
FOREIGN KEY (Country_id) REFERENCES Country(Id)
);
INSERT INTO Persons(Id,Fname,Lname,Population,Rating,Country_id,Country_name) VALUES
(1,'John','Doe',100000,4.8,1,'USA'),
(2,'Jane','Smith',80000,3.9,2,'UK'),
(3,'Mark','Johnson',70000,4.5,3,'Canada'),
(4,'Emily','Davis',120000,5.0,4,'India'),
(5,'Chris','Martinez',90000,4.2,5,'Australia'),
(6,'Sophia','Brown',85000,4.6,6,'Brazil'),
(7,'James','Wilson',95000,4.1,7,'Russia'),
(8,'Mia','Mars',110000,3.8,8,'Germany'),
(9,'Michael','Tanish',120000,4.9,9,'France'),
(10,'Olivia','Anderson',75000,4.3,10,'Japan');

SELECT DISTINCT Country_name FROM Persons;


SELECT Fname AS First_name,Lname AS Last_name FROM Persons;

SELECT *FROM Persons WHERE Rating >4.0;

SELECT *FROM Country WHERE Population > 1000000;

SELECT * FROM Persons 
WHERE Country_name='USA' OR Rating > 4.5;


SELECT *FROM Persons 
WHERE Country_name IS NULL;

SELECT *FROM Persons 
WHERE Country_name IN('USA','Canada','UK');

SELECT *FROM Persons
WHERE Country_name NOT IN('India','Australia');

SELECT*FROM Country
 WHERE Population BETWEEN 500000 AND 2000000;
 
 SELECT *FROM Country 
 WHERE Country_name NOT LIKE 'C%';






