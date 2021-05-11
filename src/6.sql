/*
Задание 6
SCHEMA:

Create table If Not Exists courses (student varchar(255), class varchar(255))
Truncate table courses
insert into courses (student, class) values ('A', 'Math')
insert into courses (student, class) values ('B', 'English')
insert into courses (student, class) values ('C', 'Math')
insert into courses (student, class) values ('D', 'Biology')
insert into courses (student, class) values ('E', 'Math')
insert into courses (student, class) values ('F', 'Computer')
insert into courses (student, class) values ('G', 'Math')
insert into courses (student, class) values ('H', 'Math')
insert into courses (student, class) values ('I', 'Math')

There is a table courses with columns: student and class
Please list out all classes which have more than or equal to 5 students.
For example, the table:
+---------+------------+
| student | class      |
+---------+------------+
| A       | Math       |
| B       | English    |
| C       | Math       |
| D       | Biology    |
| E       | Math       |
| F       | Computer   |
| G       | Math       |
| H       | Math       |
| I       | Math       |
+---------+------------+

Should output:
+---------+
| class   |
+---------+
| Math    |
+---------+

*/

CREATE TABLE courses (student VARCHAR(255), class VARCHAR(255));

TRUNCATE TABLE courses;

INSERT INTO courses (student, class) VALUES ('A', 'Math');
INSERT INTO courses (student, class) VALUES ('B', 'English');
INSERT INTO courses (student, class) VALUES ('C', 'Math');
INSERT INTO courses (student, class) VALUES ('D', 'Biology');
INSERT INTO courses (student, class) VALUES ('E', 'Math');
INSERT INTO courses (student, class) VALUES ('F', 'Computer');
INSERT INTO courses (student, class) VALUES ('G', 'Math');
INSERT INTO courses (student, class) VALUES ('H', 'Math');
INSERT INTO courses (student, class) VALUES ('I', 'Math');

SELECT class
FROM courses
GROUP BY class
HAVING COUNT(class) >= 5;