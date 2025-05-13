-- CREATE DATABASE carl;
CREATE DATABASE carl;

-- USE carl db;
USE carl;

-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

-- Create Courses table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(10) NOT NULL UNIQUE,
    Department VARCHAR(50)
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    AcademicYear VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Create Grades table
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    EnrollmentID INT,
    Grade VARCHAR(2),
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID)
);

-- Inserting into Students table
INSERT INTO Students (FirstName, LastName, DateOfBirth, Email, PhoneNumber, Address) VALUES
('Alice', 'Smith', '2002-08-15', 'alice.smith@example.com', '123-456-7890', '123 Main St'),
('Bob', 'Johnson', '2001-11-20', 'bob.johnson@example.com', '987-654-3210', '456 Oak Ave'),
('Charlie', 'Brown', '2003-03-10', 'charlie.brown@example.com', '555-123-4567', '789 Pine Ln'),
('Diana', 'Miller', '2002-06-25', 'diana.miller@example.com', '111-222-3333', '101 Elm Rd'),
('Ethan', 'Davis', '2001-09-01', 'ethan.davis@example.com', '444-555-6666', '222 Willow Dr'),
('Fiona', 'Wilson', '2003-01-12', 'fiona.wilson@example.com', '777-888-9999', '333 Birch Ct'),
('George', 'Moore', '2002-04-30', 'george.moore@example.com', '222-333-4444', '444 Maple Ave'),
('Hannah', 'Taylor', '2001-12-05', 'hannah.taylor@example.com', '888-999-0000', '555 Cedar Ln'),
('Ian', 'Clark', '2003-07-18', 'ian.clark@example.com', '333-444-5555', '666 Oak Rd'),
('Jane', 'Lewis', '2002-02-28', 'jane.lewis@example.com', '999-000-1111', '777 Pine Ct');

-- Inserting into Courses table
INSERT INTO Courses (CourseName, CourseCode, Department) VALUES
('Introduction to Programming', 'CS101', 'Computer Science'),
('Calculus I', 'MA101', 'Mathematics'),
('Linear Algebra', 'MA201', 'Mathematics'),
('Database Management', 'CS305', 'Computer Science'),
('Organic Chemistry', 'CH201', 'Chemistry'),
('Physics I', 'PH101', 'Physics'),
('Data Structures and Algorithms', 'CS202', 'Computer Science'),
('Probability and Statistics', 'ST201', 'Statistics'),
('Thermodynamics', 'PH202', 'Physics'),
('Advanced Algorithms', 'CS401', 'Computer Science');


-- Inserting into Enrollments table
INSERT INTO Enrollments (StudentID, CourseID, AcademicYear) VALUES
(1, 1, '2023-2024'),
(2, 2, '2023-2024'),
(1, 4, '2023-2024'),
(3, 1, '2024-2025'),
(4, 3, '2023-2024'),
(2, 4, '2024-2025'),
(5, 5, '2023-2024'),
(3, 7, '2024-2025'),
(6, 6, '2023-2024'),
(4, 8, '2024-2025');

-- Inserting into Grades table
INSERT INTO Grades (EnrollmentID, Grade) VALUES
(1, 'A'),
(2, 'B'),
(3, 'A-'),
(4, 'B+'),
(5, 'C'),
(6, 'A'),
(7, 'B'),
(8, 'A'),
(9, 'C+'),
(10, 'B-');

-- DATA RETIREVAL
-- Retrieving all data from Students tables without any conditions
SELECT * FROM Students;

-- Retrieving all data from Courses tables without any conditions
SELECT * FROM Courses;

-- Retrieving all data from Enrollments tables without any conditions
SELECT * FROM Enrollments;

-- Retrieving all data from Grades tables without any conditions
SELECT * FROM Grades;

-- Grade scoring analysis
SELECT Grade, COUNT(EnrollmentID) AS NumberOfStudents
FROM Grades
GROUP BY Grade
ORDER BY NumberOfStudents DESC;
