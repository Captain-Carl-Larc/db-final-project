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