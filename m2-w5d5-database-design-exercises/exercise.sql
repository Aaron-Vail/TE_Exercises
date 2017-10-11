SELECT * FROM employee
SELECT * FROM department
SELECT * FROM project

ROLLBACK;

BEGIN TRANSACTION;
UPDATE employee SET depatrment_id = 2  WHERE employee_id = 11;
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
        department_id INT, 
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
 
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Ernst', 'Blofeld', '01.01.1980', 1, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Sam', 'Mendes', '01.02.1981', 2, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Ian', 'Fleming', '01.03.1982', 3, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Daniel', 'Craig', '01.04.1983', 4, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Thomas', 'Neuman', '01.05.1984', 5, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Lee', 'Smith', '01.06.1985', 6, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('le', 'Sheiffe', '01.07.1986', 7, 1);
INSERT INTO employee (first_name, last_name, birthday, department_id, job_title) VALUES ('Raoul', 'Silva', '01.08.1987', 8, 1);

INSERT INTO department (name, employee_id) VALUES ('Accounting', 1);
INSERT INTO department (name, employee_id) VALUES ('Sales', 2);
INSERT INTO department (name, employee_id) VALUES ('Dev Ops', 3);
INSERT INTO department (name, employee_id) VALUES ('Development', 4);
INSERT INTO department (name, employee_id) VALUES ('Human Resources', 5);
INSERT INTO department (name, employee_id) VALUES ('Research', 6);
INSERT INTO department (name, employee_id) VALUES ('Operations', 7);
INSERT INTO department (name, employee_id) VALUES ('Finance', 8);

INSERT INTO project (name, employee_id, start_date) VALUES ('Spectre', 1, '09.29.2015');
INSERT INTO project (name, employee_id, start_date) VALUES ('Skyfall', 2, '09.29.2012');
INSERT INTO project (name, employee_id, start_date) VALUES ('Casino Royal', 3, '09.29.2008');
INSERT INTO project (name, employee_id, start_date) VALUES ('Quantum of Solace', 4, '09.29.2006');
INSERT INTO project (name, employee_id, start_date) VALUES ('Goldeneye', 5, '09.29.1995');

ALTER TABLE employee
ADD FOREIGN KEY (department_id)
REFERENCES department(id);

ALTER TABLE project
ADD FOREIGN KEY (employee_id)
REFERENCES employee(id);

COMMIT;