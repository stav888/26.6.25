CREATE TABLE STUDENTS (
  ID INTEGER PRIMARY KEY,
  NAME TEXT NOT NULL,
  GRADE INTEGER,
  CLASS TEXT,
  BIRTHYEAR INTEGER
);

INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (1, 'Liam', 95, 'H1', 2010);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (2, 'Emma', 88, 'H2', 2011);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (3, 'Noah', 76, 'W1', 2009);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (4, 'Olivia', 83, 'W2', 2008);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (5, 'Ava', 91, 'H1', 2010);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (6, 'Ethan', 67, 'Z1', 2007);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (7, 'Mia', 72, 'W1', 2009);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (8, 'Tom', 55, 'H2', 2012);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (9, 'Dana', 89, 'W2', 2010);
INSERT INTO STUDENTS (ID, NAME, GRADE, `CLASS`, BIRTHYEAR) VALUES (10, 'Isaac', 78, 'Z1', 2006);

--1
select *
from students;

--2
select name , grade
from students;

--3
select avg(grade)
from students;

--4
select min(BIRTHYEAR)
from students;

--5
select name, grade
from students
where grade > 80;

--6
select name , BIRTHYEAR
from students
where BIRTHYEAR > 2005;

--7
select name, class
from students
where CLASS = ('H1');

--8
select name
from students
where name LIKE '%a%';

--9
select name, grade
from students
order by grade desc
limit 3;

--10
select name, BIRTHYEAR
from students
order by BIRTHYEAR asc;

--11
select name
from students
limit 3;

--12
select *
from students
limit 3 offset 2;

--13
update students
set grade = 100
where name = 'dana';

--14
update students
set class = 'GRADUATED'
where BIRTHYEAR < 2010;

--15
delete from students
where id = 8;

--16
SELECT count(*), class
FROM STUDENTS
group by class;

--17
SELECT NAME, BIRTHYEAR, strftime('%Y', 'now') - BIRTHYEAR AS AGE
FROM STUDENTS;

--18
SELECT NAME, min(grade)
FROM STUDENTS;
