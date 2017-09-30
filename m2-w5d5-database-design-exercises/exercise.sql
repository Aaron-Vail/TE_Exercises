SELECT * FROM employee
SELECT * FROM department
SELECT * FROM project

ROLLBACK;

BEGIN TRANSACTION;

CREATE TABLE department (
        id SERIAL,
        name VARCHAR(255) NOT NULL,
        employee_id VARCHAR(255) NOT NULL, 
        CONSTRAINT pk_department_id PRIMARY KEY (id)
);
 
CREATE TABLE employee (
        id SERIAL, 
        last_name VARCHAR(255) NOT NULL,
        first_name VARCHAR(255) NOT NULL,
        birthday DATE NOT NULL, 
        address VARCHAR(255),
        job_title VARCHAR(255) NOT NULL, 
        gender VARCHAR(255), 
        hire_date DATE,
        department_id VARCHAR(255), 
        CONSTRAINT pk_employee_id PRIMARY KEY (id)
        --CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES department(department_id)
        
);

CREATE TABLE project (
        id SERIAL, 
        name VARCHAR(255) NOT NULL UNIQUE,
        start_date DATE NOT NULL, 
        employee_id INT NOT NULL, 
        CONSTRAINT pk_projects_id PRIMARY KEY (id)
        --CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES (employee_id)
);        
 
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Ernst', 'Blofeld', '01.01.1980', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Sam', 'Mendes', '01.02.1981', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Ian', 'Fleming', '01.03.1982', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Daniel', 'Craig', '01.04.1983', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Thomas', 'Neuman', '01.05.1984', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Lee', 'Smith', '01.06.1985', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('le', 'Sheiffe', '01.07.1986', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Raoul', 'Silva', '01.08.1987', 6, 1);

INSERT INTO department (name) VALUES ('Accounting');
INSERT INTO department (name) VALUES ('Sales');
INSERT INTO department (name) VALUES ('Dev Ops');
INSERT INTO department (name) VALUES ('Development');
INSERT INTO department (name) VALUES ('Human Resources');
INSERT INTO department (name) VALUES ('Research');
INSERT INTO department (name) VALUES ('Operations');
INSERT INTO department (name) VALUES ('Finance');

INSERT INTO project (name, employee_id, start_date) VALUES ('Spectre', 8, '09.29.2015');
INSERT INTO project (name, employee_id, start_date) VALUES ('Skyfall', 8, '09.29.2012');
INSERT INTO project (name, employee_id, start_date) VALUES ('Casino Royal', 8, '09.29.2008');
INSERT INTO project (name, employee_id, start_date) VALUES ('Quantum of Solace', 8, '09.29.2006');
INSERT INTO project (name, employee_id, start_date) VALUES ('Goldeneye', 8, '09.29.1995');

ALTER TABLE employee
ADD FOREIGN KEY (department_id)
REFERENCES department(department_id);

ALTER TABLE project
ADD FOREIGN KEY (employee_id)
REFERENCES department(employee_id);