CREATE DATABASE Comentario;
USE Comentario;
CREATE TABLE Artigos(
ArtigoID int primary key auto_increment,
Titulo varchar(255),
Conteudo varchar(255),
Datapublicacao datetime
);
CREATE TABLE Comentarios(
ComentarioID int primary key auto_increment,
ArtigoID int,
Autor varchar(255),
Texto varchar(255),
DataComentario datetime,
FOREIGN KEY (ArtigoID) REFERENCES Artigos(ArtigoID)
);

INSERT INTO Artigos(Titulo,conteudo,Datapublicacao) 
values ('A coisa','Fala sobre uma besta','2023-10-11'),
       ('Resenha','Cerveja','2023-09-14'),
       ('Projeto X','Festa','2023-08-15'),
       ('A festa','Festa','2023-07-16'),
       ('O baba','Futebol','2023-05-16');


INSERT INTO Comentarios(Autor,texto,datacomentario) 
values ('Resende','Porra cfoisa rukm','2023-10-11'),
       ('Raul','Cois aruim','2023-11-12'),
       ('Neto','Odiei','2023-11-12'),
       ('Pasulo','Nãogostei','2023-10-12'),
       ('Reij','Foda demais','2023-10-12');
