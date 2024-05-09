create database thiketthuc;
use thiketthuc;
CREATE TABLE Book (
                      book_id INT PRIMARY KEY AUTO_INCREMENT,
                      name VARCHAR(255),
                      author VARCHAR(255),
                      description VARCHAR(255),
                      quantity INT
);

CREATE TABLE Student (
                         student_id INT PRIMARY KEY AUTO_INCREMENT,
                         name VARCHAR(255),
                         classroom VARCHAR(50)
);

CREATE TABLE borrowBook (
                            borrow_id INT PRIMARY KEY AUTO_INCREMENT,
                            book_id INT,
                            student_id INT,
                            status BOOLEAN,
                            borrowingDay DATE,
                            returningDay DATE,
                            FOREIGN KEY (book_id) REFERENCES Book(book_id),
                            FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
select *from Book;
select *from Student;
select *from borrowBook;