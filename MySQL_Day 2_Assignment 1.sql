Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.02 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table student (Student_ID int primary key not null, First_name
 varchar(50), Last_name varchar(50), Date_of_birth date, Gender varchar(10) not null, email varchar(25) not null, phone varchar(15) not null);
Query OK, 0 rows affected (0.04 sec)

mysql>  insert into student values (01, 'Suchita', 'Shinde', '2001-11-23', 'Female', 'suchita@gmail.com', '9876145281'),  (02, 'Pranali', 'Kalokhe', '2001-5-30', 'Female', 'pranali@gmail.com', '9876412356'), (03, 'Shraddha', 'Chougule', '2001-9-2', 'Female', 'shraddha@gmail.com', '7896142568'), (04, 'Pranav', 'Jadhav', '2001-6-20', 'Male', 'pranav@gmail.com', '7861598262'),
 (05, 'Pratik', 'More', '2002-3-25', 'Male', 'pratik@gmail.com', '9786241525');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+------------+------------+-----------+---------------+--------+--------------------+------------+
| Student_ID | First_name | Last_name | Date_of_birth | Gender | email              | phone      |
+------------+------------+-----------+---------------+--------+--------------------+------------+
|          1 | Suchita    | Shinde    | 2001-11-23    | Female | suchita@gmail.com  | 9876145281 |
|          2 | Pranali    | Kalokhe   | 2001-05-30    | Female | pranali@gmail.com  | 9876412356 |
|          3 | Shraddha   | Chougule  | 2001-09-02    | Female | shraddha@gmail.com | 7896142568 |
|          4 | Pranav     | Jadhav    | 2001-06-20    | Male   | pranav@gmail.com   | 7861598262 |
|          5 | Pratik     | More      | 2002-03-25    | Male   | pratik@gmail.com   | 9786241525 |
+------------+------------+-----------+---------------+--------+--------------------+------------+
5 rows in set (0.00 sec)

mysql> create table course (course_ID int primary key not null, course_title varchar(100) not null, credits int not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into course values(101, 'Statistics', 5), (102, 'Mathematics', 4), (103, 'Computer Science', 4),(104, 'Physics', 3), (105, 'English', 3);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from course;
+-----------+------------------+---------+
| course_ID | course_title     | credits |
+-----------+------------------+---------+
|       101 | Statistics       |       5 |
|       102 | Mathematics      |       4 |
|       103 | Computer Science |       4 |
|       104 | Physics          |       3 |
|       105 | English          |       3 |
+-----------+------------------+---------+
5 rows in set (0.00 sec)

mysql> create table instructor (instructor_ID int primary key not null, First_name varchar(50) not nul
l, Last_name varchar(50) not null, email varchar(100) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into instructor values(101, 'Yogesh', 'Chavan', 'yogesh@gmail.com'), (102, 'Soanli', 'De
shmukh', 'sonali@gmail.com'), (103, 'David', 'Johnson', 'david@gmail.com'), (104, 'Priti', 'Jadhav', '
priti@gmail.com'), (105, 'Manasvi', 'Patil', 'manasvi@gmail.com');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from instructor;
+---------------+------------+-----------+-------------------+
| instructor_ID | First_name | Last_name | email             |
+---------------+------------+-----------+-------------------+
|           101 | Yogesh     | Chavan    | yogesh@gmail.com  |
|           102 | Soanli     | Deshmukh  | sonali@gmail.com  |
|           103 | David      | Johnson   | david@gmail.com   |
|           104 | Priti      | Jadhav    | priti@gmail.com   |
|           105 | Manasvi    | Patil     | manasvi@gmail.com |
+---------------+------------+-----------+-------------------+
5 rows in set (0.00 sec)

mysql> create table enrollment (enrollment_ID int primary key not null, Enrollment_date date, Student_
ID int, course_ID int, instructor_ID int, foreign key (Student_ID) references student(Student_ID), for
eign key (course_ID) references course(course_ID), foreign key (instructor_ID) references instructor(i
nstructor_ID);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into enrollment values (01, '2025-03-01', 1, 101, 101), (02, '2025-03-02', 2, 102, 102),  (03, '2025-03-03', 3, 103, 103), (04, '2025-03-04', 4, 104, 104), (05, '2025-03-05', 5, 105, 105);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from enrollment;
+---------------+-----------------+------------+-----------+---------------+
| enrollment_ID | Enrollment_date | Student_ID | course_ID | instructor_ID |
+---------------+-----------------+------------+-----------+---------------+
|             1 | 2025-03-01      |          1 |       101 |           101 |
|             2 | 2025-03-02      |          2 |       102 |           102 |
|             3 | 2025-03-03      |          3 |       103 |           103 |
|             4 | 2025-03-04      |          4 |       104 |           104 |
|             5 | 2025-03-05      |          5 |       105 |           105 |
+---------------+-----------------+------------+-----------+---------------+
5 rows in set (0.00 sec)

mysql> create table score (score_ID int primary key not null, course_ID int, Student_ID int, DateOfExa
m date, CreditObtained int not null, foreign key (course_ID) references course(course_ID), foreign key
 (Student_ID) references student(Student_ID));
Query OK, 0 rows affected (0.09 sec)

mysql> insert into score values (1, 101, 1, '2025-03-10', 3), (2, 102, 2, '2025-03-11', 4), (3, 103, 3, '2025-03-12', 3), (4, 104, 4, '2025-03-13', 4), (5, 105, 5, '2025-03-14', 2);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from score;
+----------+-----------+------------+------------+----------------+
| score_ID | course_ID | Student_ID | DateOfExam | CreditObtained |
+----------+-----------+------------+------------+----------------+
|        1 |       101 |          1 | 2025-03-10 |              3 |
|        2 |       102 |          2 | 2025-03-11 |              4 |
|        3 |       103 |          3 | 2025-03-12 |              3 |
|        4 |       104 |          4 | 2025-03-13 |              4 |
|        5 |       105 |          5 | 2025-03-14 |              2 |
+----------+-----------+------------+------------+----------------+
5 rows in set (0.00 sec)

mysql> create table feedback (feedback_ID int primary key not null, Student_ID int, Date date, Instruc
tor_name varchar(100) not null, feedback text, foreign key (Student_ID) references student(student_ID)
);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into feedback values (101, 1, '2025-03-15', 'Yogesh Chavan', 'Great instructor, very helpful!'), (102, 2, '2025-03-16', 'Sonali Deshmukh', 'Explains concepts clearly.'), (103, 3, '2025-03-17
', 'David Johnson',  'Very engaging lectures.'), (104, 4, '2025-03-18', 'Priti Jadhav', 'Provides useful resources.'), (105, 5, '2025-03-19', 'Manasvi Patil',  'Encourages critical thinking.');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from feedback;
+-------------+------------+------------+-----------------+---------------------------------+
| feedback_ID | Student_ID | Date       | Instructor_name | feedback                        |
+-------------+------------+------------+-----------------+---------------------------------+
|         101 |          1 | 2025-03-15 | Yogesh Chavan   | Great instructor, very helpful! |
|         102 |          2 | 2025-03-16 | Sonali Deshmukh | Explains concepts clearly.      |
|         103 |          3 | 2025-03-17 | David Johnson   | Very engaging lectures.         |
|         104 |          4 | 2025-03-18 | Priti Jadhav    | Provides useful resources.      |
|         105 |          5 | 2025-03-19 | Manasvi Patil   | Encourages critical thinking.   |
       -------+------------+------------+-----------------+---------------------------------+
5 rows in set (0.00 sec)
