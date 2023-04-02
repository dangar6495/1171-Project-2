
COPY Programs
FROM '/home/daniel/1171-Project-2/Programs.csv'
DELIMITER ','
CSV HEADER;

COPY Feeder
FROM '/home/daniel/1171-Project-2/Feeder - Feeder.csv'
DELIMITER ','
CSV HEADER;

COPY Student_information
FROM '/home/daniel/1171-Project-2/Student_information.csv'
DELIMITER ','
CSV HEADER;

COPY Courses
FROM '/home/daniel/1171-Project-2/Courses.csv'
DELIMITER ','
CSV HEADER;

COPY Grades
FROM '/home/daniel/1171-Project-2/Grades.csv'
DELIMITER ','
CSV HEADER;

COPY Courses_Programs
FROM '/home/daniel/1171-Project-2/Courses_Programs.csv'
DELIMITER ','
CSV HEADER;
