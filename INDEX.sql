


-- INDEX : A way to make searching faster
-- An index speeds up SELECT queries but makes INSERT and UPDATE slightly slower
-- The PRIMARY KEY has an index by default

-- Single INDEX
	CREATE INDEX STU_GPA_IDX
	ON STUDENT(STU_GPA);

-- To search using the index
	SELECT * FROM STUDENT
	WHERE STU_GPA = 5;

-- Multiple INDEXES
	CREATE INDEX STU_GPA_NAME
	ON STUDENT(STU_GPA, STU_NAME);

-- To search using both indexed columns
	SELECT * FROM STUDENT
	WHERE STU_GPA = 3 OR STU_NAME = 'Mohammad';

-- To show all indexes on the table
	SHOW INDEXES FROM STUDENT;

-- To drop an index
	ALTER TABLE STUDENT
	DROP INDEX STU_GPA_NAME ;

