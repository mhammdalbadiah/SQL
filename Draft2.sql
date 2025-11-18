/*CREATE DATABASE Uni_sys;
USE Uni_sys;

CREATE TABLE Institution (
    institution_id INT PRIMARY KEY,
    inauguration_year INT
);

CREATE TABLE School (
    school_id INT PRIMARY KEY,
    school_name VARCHAR(50),
    institution_id INT,
    FOREIGN KEY (institution_id) REFERENCES Institution(institution_id)
);

CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50),
    school_id INT,
    FOREIGN KEY (school_id) REFERENCES School(school_id)
);

CREATE TABLE Professor (
    prof_id INT PRIMARY KEY,
    prof_name VARCHAR(50),
    FOREIGN KEY (prof_id) REFERENCES Employee(Emp_id)
);

CREATE TABLE Lecturer (
    lecturer_id INT PRIMARY KEY,
    Total_course_taught INT,
    FOREIGN KEY (lecturer_id) REFERENCES Employee(Emp_id)
);

CREATE TABLE Degree (
    Degree_id INT PRIMARY KEY,
    Degree_type VARCHAR(10),
    Emp_id INT,
    Prof_id INT,
    School_id INT,
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id),
    FOREIGN KEY (Prof_id) REFERENCES Professor(prof_id),
    FOREIGN KEY (School_id) REFERENCES School(school_id)
);

CREATE TABLE Research_Paper (
    Paper_id INT PRIMARY KEY,
    Title VARCHAR(100)
);

CREATE TABLE Authorship ( 
    Emp_id INT,
    Paper_id INT,
    PRIMARY KEY (Emp_id, Paper_id),
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id),
    FOREIGN KEY (Paper_id) REFERENCES Research_Paper(Paper_id)
);

CREATE TABLE Research_Project (
    Project_id INT PRIMARY KEY,
    Title VARCHAR(100),
    prof_id INT,
    FOREIGN KEY (prof_id) REFERENCES Professor(prof_id)
);
 */
 
 SELECT * FROM Institution;
SELECT * FROM School;
SELECT * FROM Employee;
SELECT * FROM Professor;
SELECT * FROM Lecturer;
SELECT * FROM Degree;
SELECT * FROM Research_Paper;
SELECT * FROM Authorship;
SELECT * FROM Research_Project;
 
 
 
 
 /*
 INSERT INTO Graduated (Graduated_Name,Phone,Email)
 SELECT stu_Name,phone,Email
 FROM Student
 WHERE College = 'CCIS';
 */


/*
UPDATE  PRODUCT
SET PRICE = PRICE^3 
WHERE PRICE <10;
*/

/*
SELECT *FROM COUSTMER
WHERE Countrey = 'KSA' AND  CITY = 'maj';


SELECT*FROM CUSTOMERS
WHERE NOT COUNTRY = 'GERMANY' AND NOT CITY ='Berlin'  ;
*/




