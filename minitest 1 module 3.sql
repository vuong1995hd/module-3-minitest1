-- Tạo cơ sở dữ liệu
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Tạo bảng Address
CREATE TABLE Address (
    id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255) NOT NULL
);

-- Tạo bảng Classes
CREATE TABLE Classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    language VARCHAR(50),
    description TEXT
);

-- Tạo bảng Students
CREATE TABLE Students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(100) NOT NULL,
    address_id INT,
    age INT,
    phone VARCHAR(15) UNIQUE,
    classes_id INT,
    FOREIGN KEY (address_id) REFERENCES Address(id),
    FOREIGN KEY (classes_id) REFERENCES Classes(id)
);

-- Tạo bảng Course
CREATE TABLE Course (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Tạo bảng Point
CREATE TABLE Point (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    student_id INT,
    point FLOAT,
    FOREIGN KEY (course_id) REFERENCES Course(id),
    FOREIGN KEY (student_id) REFERENCES Students(id)
);



