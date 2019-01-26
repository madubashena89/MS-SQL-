CREATE TABLE employee
(
id number(5) PRIMARY KEY, name char(20),dept char(10), age number(2), gender char(1), CHECK(gender in ('M'))





);