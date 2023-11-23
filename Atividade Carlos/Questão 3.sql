CREATE DATABASE Departamentos;
USE Departamentos;
CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
    NomeDepartamento VARCHAR(255)
);


INSERT INTO Departamentos (DepartamentoID, NomeDepartamento)
VALUES
    (1, 'Departamento A'),
    (2, 'Departamento B'),
    (3, 'Departamento C'),
    (4, 'Departamento D'),
    (5, 'Departamento E');


CREATE TABLE Funcionários (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(255),
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

INSERT INTO Funcionários (FuncionarioID, Nome, Cargo, Salario, DepartamentoID)
VALUES
    (1, 'Funcionario1', 'Cargo1', 50000.00, 1),
    (2, 'Funcionario2', 'Cargo2', 60000.00, 2),
    (3, 'Funcionario3', 'Cargo3', 70000.00, 3),
    (4, 'Funcionario4', 'Cargo4', 80000.00, 4),
    (5, 'Funcionario5', 'Cargo5', 90000.00, 5);