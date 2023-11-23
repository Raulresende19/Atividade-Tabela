CREATE DATABASE Gerenciamento;
USE Gerenciamento;
CREATE TABLE Clientes(
ClienteID int primary key auto_increment,
Nome varchar(255),
Email varchar(255),
Telefone varchar(255)
);
CREATE TABLE Pedidos(
PedidoID int primary key auto_increment,
ClienteID int,
DataPedido datetime,
Valor_total decimal(10,2),
FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
 );
INSERT INTO Clientes (Nome, Email, Telefone)
VALUES
    ( 'João Silva', 'joao@gmail.com', '(71)91234-5678'),
    ( 'Maria Oliveira', 'maria@gmail.com', '(71)99876-5432'),
    ( 'Carlos Santos', 'carlos@gmail.com', '(71)94567-8901'),
    ( 'Ana Souza', 'ana@gmail.com', '(71)95555-1234'),
    ( 'Pedro Rocha', 'pedro@gmail.com', '(71)96789-0123');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES
    (101, 1, '2023-01-01', 150.50),
    (102, 2, '2023-02-15', 200.25),
    (103, 3, '2023-03-20', 75.80),
    (104, 4, '2023-04-10', 300.00),
    (105, 5, '2023-05-05', 125.75);


