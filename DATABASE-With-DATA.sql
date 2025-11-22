CREATE DATABASE MU;
USE MU; 
 
 SET AUTOCOMMIT = OFF ; 
 
 
 
 
 CREATE TABLE STUDENT (
    STU_ID INT PRIMARY KEY,
    stu_Name VARCHAR(30),
    STU_GPA FLOAT
);

 CREATE TABLE PROF (
    PROF_ID INT PRIMARY KEY,
    Prof_Name VARCHAR(30),
    Prof_Major VARCHAR(30)
);

 CREATE TABLE COURSE (
    Course_Name VARCHAR(30),
    Course_Code VARCHAR(10) PRIMARY KEY,
    COURSE_CREDITS INT
);

 CREATE TABLE INFO (
    STU_ID INT,
    PROF_ID INT,
    COURSE_CODE VARCHAR(10),

    PRIMARY KEY (STU_ID, PROF_ID),

    FOREIGN KEY (STU_ID) REFERENCES STUDENT(STU_ID),
    FOREIGN KEY (PROF_ID) REFERENCES PROF(PROF_ID)
);




CREATE TABLE TEST (

 STU_ID_TEST INT ,
 PROF_ID_TEST INT ,
 COURSE_CODE_TEST VARCHAR(30),
 
 PRIMARY KEY ( STU_ID_TEST , PROF_ID_TEST, COURSE_CODE_TEST ) ,   -- PK
 
 
		    -- COLUMN NAME  |  TO   |   TABLE NAME  |  PK COLUMN IN THE  TABLE
 FOREIGN KEY ( STU_ID_TEST) REFERENCES STUDENT       (STU_ID),  
 FOREIGN KEY ( PROF_ID_TEST) REFERENCES PROF  		 (PROF_ID),
 FOREIGN KEY ( COURSE_CODE_TEST) REFERENCES COURSE  (COURSE_CODE)

);





-- INSERT DATA 



INSERT INTO STUDENT (STU_ID, stu_Name, STU_GPA) VALUES
(1,'Student1',3.1),(2,'Student2',3.2),(3,'Student3',3.3),(4,'Student4',3.4),
(5,'Student5',3.5),(6,'Student6',3.0),(7,'Student7',2.9),(8,'Student8',3.6),
(9,'Student9',3.2),(10,'Student10',3.3),(11,'Student11',3.1),(12,'Student12',3.4),
(13,'Student13',3.5),(14,'Student14',3.0),(15,'Student15',3.3),(16,'Student16',3.2),
(17,'Student17',3.1),(18,'Student18',3.0),(19,'Student19',3.3),(20,'Student20',3.2),
(21,'Student21',3.4),(22,'Student22',3.0),(23,'Student23',3.5),(24,'Student24',3.1),
(25,'Student25',3.2),(26,'Student26',3.3),(27,'Student27',3.0),(28,'Student28',3.4),
(29,'Student29',3.1),(30,'Student30',3.2),(31,'Student31',3.0),(32,'Student32',3.3),
(33,'Student33',3.1),(34,'Student34',3.4),(35,'Student35',3.2),(36,'Student36',3.0),
(37,'Student37',3.3),(38,'Student38',3.1),(39,'Student39',3.2),(40,'Student40',3.0),
(41,'Student41',3.3);


INSERT INTO PROF (PROF_ID, Prof_Name, Prof_Major) VALUES
(1,'Prof1','CS'),(2,'Prof2','Math'),(3,'Prof3','IT'),(4,'Prof4','Finance'),
(5,'Prof5','CS'),(6,'Prof6','Math'),(7,'Prof7','CS'),(8,'Prof8','IT');



INSERT INTO COURSE (Course_Name, Course_Code, COURSE_CREDITS) VALUES
('Computer Science 101','CS101',3),
('Mathematics 222','MATH222',4),
('Computer Science 103','CS103',3),
('Information Systems 221','IS221',3),
('Salman101','SALM101',2),
('CS105','CS105',3),
('Mathematics 110','MATH110',4),
('CS240','CS240',3),
('IT201','IT201',3);



INSERT INTO TEST (STU_ID_TEST,PROF_ID_TEST,COURSE_CODE_TEST)
VALUES 
(1, 1, 'CS101'),
(2, 1, 'CS101'),
(3, 2, 'MATH222'),
(4, 2, 'MATH222'),
(5, 3, 'IS221'),
(6, 4, 'SALM101'),
(7, 1, 'CS101'),
(8, 2, 'MATH222'),
(9, 3, 'IS221'),
(10,4, 'SALM101');


COMMIT;
