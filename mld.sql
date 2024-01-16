-- Table contract
CREATE TABLE contract (
    contract_id INT PRIMARY KEY,
    description VARCHAR(255),
    start_date DATE
);

-- Table employee
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    base_qualification VARCHAR(50)
);

-- Table qualification
CREATE TABLE qualification (
    qualification_id INT PRIMARY KEY,
    qualification_type VARCHAR(50),
    daily_rate DECIMAL(10, 2)
);

-- Table intervention
CREATE TABLE intervention (
    intervention_id INT PRIMARY KEY,
    contract_id INT,
    number_of_employees INT,
    duration INT,
    FOREIGN KEY (contract_id) REFERENCES contract(contract_id)
);

-- Table works
CREATE TABLE works (
    contract_id INT,
    employee_id INT,
    qualification_id INT,
    number_of_employees INT,
    PRIMARY KEY (contract_id, employee_id, qualification_id),
    FOREIGN KEY (contract_id) REFERENCES contract(contract_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (qualification_id) REFERENCES qualification(qualification_id)
);
