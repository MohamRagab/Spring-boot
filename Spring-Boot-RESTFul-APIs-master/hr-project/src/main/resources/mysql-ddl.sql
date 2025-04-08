create database hr;

use hr;

CREATE TABLE employees (
  employee_id    int,
  first_name     VARCHAR(20),
  last_name      VARCHAR(25)   NOT NULL,
  email          VARCHAR(25)  NOT NULL,
  phone_number   VARCHAR(20),
  hire_date      DATE    ,
  job_id         VARCHAR(10)   NOT NULL,
  salary         double,
  commission_pct double,
  manager_id     double,
  department_id  double,
  CONSTRAINT     emp_salary_min CHECK (salary > 0),
  CONSTRAINT     emp_email_uk UNIQUE (email)
);


CREATE TABLE departments (
  department_id    int,
  department_name  VARCHAR(30)  NOT NULL,
  manager_id       double,
  location_id      double
);