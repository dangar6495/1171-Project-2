CREATE TABLE Programs(
    program_id INT NOT NULL,
    program_code VARCHAR(50),
    program_name TEXT,
	degree_id INT,
    degree_type TEXT,
    PRIMARY KEY(program_id)
);

CREATE TABLE Feeder(
    feeder_id INT NOT NULL,
    school_name VARCHAR(100),
    management TEXT,
    urban_rural TEXT,
    municipality TEXT,
    funding VARCHAR(100),
    district VARCHAR(100),
    PRIMARY KEY(feeder_id)
);

CREATE TABLE Student_information(
    student_id INT NOT NULL,
    gender CHAR(1),
    ethnicity TEXT,
    city TEXT,
    district TEXT,
    program_start VARCHAR(100),
    program_status VARCHAR(100),
    programEnd DATE,
    grad_date DATE,
    feeder_id INT,
    PRIMARY KEY(student_id),
    FOREIGN KEY(feeder_id) REFERENCES Feeder(feeder_id)
);

CREATE TABLE Courses(
    course_id INT NOT NULL,
    course_code CHAR(50),
    course_title TEXT,
    course_credits INT,
    PRIMARY KEY(course_id)
);

CREATE TABLE Grades(
    grade_id INT NOT NULL,
    semester VARCHAR(50),
    course_grade CHAR(2),
    course_points DECIMAL,
    student_id INT,
    course_id INT,
    PRIMARY KEY(grade_id),
    FOREIGN KEY(student_id) REFERENCES Student_information(student_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Courses_Programs(
    co_pro INT NOT NULL,
    program_id INT,
    course_id INT,
    PRIMARY KEY(co_pro),
    FOREIGN KEY(program_id) REFERENCES Programs(program_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);
