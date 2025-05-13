# Student Records Database System

## Description

This project implements a fully functional database management system for managing student records, built exclusively using MySQL. It provides a structured and relational model to store and retrieve information about students, the courses they undertake, their enrollment details, and the grades they achieve. This system is designed to be a robust foundation for educational institutions to efficiently manage their academic data.

## Database Schema

The database consists of four primary tables:

1.  **Students:** Stores fundamental information about each student, identified by a unique `StudentID`. Attributes include `FirstName`, `LastName`, `DateOfBirth`, `Email` (unique), `PhoneNumber`, and `Address`.

2.  **Courses:** Contains details about the academic courses offered. Each course is uniquely identified by a `CourseID` and has attributes such as `CourseName`, a unique `CourseCode`, and the `Department` offering the course.

3.  **Enrollments:** Acts as a junction table to manage the many-to-many relationship between students and courses. Each enrollment record is uniquely identified by an `EnrollmentID` and links a `StudentID` to a `CourseID`, also recording the `AcademicYear` of the enrollment.

4.  **Grades:** Stores the academic grades awarded for each enrollment. Each grade record is uniquely identified by a `GradeID` and is associated with an `EnrollmentID`, along with the `Grade` received.

## Entity-Relationship Diagram (ERD)

The following describes the relationships between the tables in our database:

* **One-to-Many Relationship between Students and Enrollments:** A single student (`Students` table) can be enrolled in multiple courses (`Enrollments` table). This relationship is established through the `StudentID` foreign key in the `Enrollments` table, which references the `StudentID` primary key in the `Students` table.

* **One-to-Many Relationship between Courses and Enrollments:** A single course (`Courses` table) can have multiple students enrolled in it (`Enrollments` table). This relationship is defined by the `CourseID` foreign key in the `Enrollments` table, referencing the `CourseID` primary key in the `Courses` table.

* **One-to-One Relationship between Enrollments and Grades:** Each enrollment record (`Enrollments` table) corresponds to one grade record (`Grades` table). This link is created through the `EnrollmentID` foreign key in the `Grades` table, which references the `EnrollmentID` primary key in the `Enrollments` table.

![image](https://github.com/user-attachments/assets/5a1c9af3-99b1-4a3d-af44-0d04ff0d5aa6)

## How to Run/Setup the Project (or import SQL)

To set up this project, you need a running instance of MySQL. Follow these steps to create the database schema:

1.  **Access MySQL:** Use a MySQL client (e.g., MySQL Workbench, DBeaver, or the command-line client) to connect to your MySQL server.

2.  **Execute the SQL script:** Run the provided `.sql` file (which contains the `CREATE TABLE` statements) to create the `Students`, `Courses`, `Enrollments`, and `Grades` tables in your MySQL database. You might need to first create a database schema (e.g., `StudentRecord`) and then select it before running the script.

    * **Example using MySQL command line:**
        ```bash
        mysql -u your_username -p your_database_name < your_sql_file.sql
        ```
        Replace `your_username`, `your_database_name`, and `your_sql_file.sql` with your specific details.

3.  **Verify the tables:** After execution, confirm that the four tables have been created in your specified database schema.
