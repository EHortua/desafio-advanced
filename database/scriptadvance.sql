-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema advancesystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema advancesystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `advancesystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `advancesystem` ;

-- -----------------------------------------------------
-- Table `advancesystem`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `advancesystem`.`employee` ;

CREATE TABLE IF NOT EXISTS `advancesystem`.`employee` (
  `employeeid` INT NOT NULL AUTO_INCREMENT,
  `firstname` TEXT NOT NULL,
  `lastname` TEXT NOT NULL,
  `gender` TEXT NOT NULL,
  `email` TEXT NOT NULL,
  `phonenumber` TEXT NOT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `documenttype` TEXT NOT NULL,
  `documentnumber` TEXT NOT NULL,
  `created` DATE NULL DEFAULT NULL,
  `updated` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`employeeid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `advancesystem`.`company_employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `advancesystem`.`company_employee` ;

CREATE TABLE IF NOT EXISTS `advancesystem`.`company_employee` (
  `company_employee_id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `company` TEXT NOT NULL,
  `company_email` TEXT NOT NULL,
  `salary` DOUBLE NOT NULL,
  `work_start_date` DATE NOT NULL,
  `work_end_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`company_employee_id`),
  INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `advancesystem`.`employee` (`employeeid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `advancesystem`.`employee_accounts`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `advancesystem`.`employee_accounts` ;

CREATE TABLE IF NOT EXISTS `advancesystem`.`employee_accounts` (
  `employee_account_id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `bank_name` TEXT NOT NULL,
  `document_type` TEXT NOT NULL,
  `account_number` INT NOT NULL,
  `status` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`employee_account_id`),
  INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE,
  FOREIGN KEY (`employee_id`)
    REFERENCES `advancesystem`.`employee` (`employeeid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Insertando datos en las tablas
-- -----------------------------------------------------

INSERT INTO employee (firstname, lastname, gender, email, phonenumber, address, documenttype, documentnumber, created) VALUES ('Camila', 'Romero', 'Mujer', 'camilar@gmail.com', '3000493434', 'Carrera 11 #3-2', 'Cédula', '39584736','1990-01-31');
INSERT INTO employee (firstname, lastname, gender, email, phonenumber, address, documenttype, documentnumber, created) VALUES ('Rodrigo', 'Gomez', 'Hombre', 'rodrigorodrigo@hotmail.com', '3153456039', 'Calle 20 #3-2', 'Cédula', '10847364','1985-06-05');
INSERT INTO employee (firstname, lastname, gender, email, phonenumber, address, documenttype, documentnumber, created) VALUES ('Eduardo', 'Gonzales', 'Hombre', 'eduardogonzales@gmail.com', '3152900987', 'Carrera 10 #15-14', 'Cédula', '19375837','1991-10-01');
INSERT INTO employee (firstname, lastname, gender, email, phonenumber, address, documenttype, documentnumber, created) VALUES ('Paz', 'Barco', 'Otro', 'barcopaz@gmail.com', '3213482342', 'Carrera 15 #8-10', 'Cédula', '25375834','1979-02-11');
INSERT INTO employee (firstname, lastname, gender, email, phonenumber, address, documenttype, documentnumber, created) VALUES ('Romina', 'Rodriguez', 'Mujer', 'rr@gmail.com', '30002342342', 'Calle 23A #15-10', 'Cédula de extranjeria', '38465493','1990-02-11');

INSERT INTO company_employee (company_employee_id, employee_id, company, company_email, salary, work_start_date) VALUES ('12', '1', 'Advance', 'advance@gmail.com', '1800000', '2021-01-02');
INSERT INTO company_employee (company_employee_id, employee_id, company, company_email, salary, work_start_date) VALUES ('22', '2', 'Advance', 'advance@gmail.com', '2000000', '2019-02-02');
INSERT INTO company_employee (company_employee_id, employee_id, company, company_email, salary, work_start_date) VALUES ('3', '4', 'Accenture', 'accenture@gmail.com', '1500000', '2020-01-01');

INSERT INTO employee_accounts (employee_account_id, employee_id, bank_name, document_type, account_number, status) VALUES ('115', '1', 'BBVA', 'Cédula', '01823429685', '0');
INSERT INTO employee_accounts (employee_account_id, employee_id, bank_name, document_type, account_number) VALUES ('19', '2', 'Banco de Bogota', 'Cédula', '00284728473');

-- -----------------------------------------------------
-- Eliminar	un	registro	especifico	de	la	tabla	employee
-- -----------------------------------------------------

DELETE FROM employee WHERE employeeid = '5';

-- -----------------------------------------------------
-- Una	consulta	que	asocie	las	tres	tablas
-- Mostrando el nombre, documento y banco de los empleados que ya están registrados en la empresa y han cargado su número de cuenta bancaria.
-- -----------------------------------------------------

SELECT employee.firstname, employee.documentnumber, employee_accounts.bank_name
FROM (employee INNER JOIN (employee_accounts INNER JOIN company_employee ON
employee_accounts.employee_id = company_employee.employee_id ) ON employee.employeeid = company_employee.employee_id);

-- -----------------------------------------------------
-- Consulta que	filtra	los	registros	de	la	tabla	employee	por	una	parte	del	firstname
-- -----------------------------------------------------

SELECT * FROM employee WHERE firstname LIKE '%Ar%';

-- -----------------------------------------------------
-- Consulta que	ordena los registros por lastname de forma alfabética ascendente
-- -----------------------------------------------------
SELECT * FROM employee ORDER BY lastname ASC;

-- -----------------------------------------------------
-- Consulta que agrupa y dice cuantos empleados	son	de	la	misma compañía
-- -----------------------------------------------------

SELECT company, COUNT(company) FROM company_employee
GROUP BY company;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
