-- Criando o Banco de Dados e as Tabelas (DDL)
CREATE DATABASE Escola;
USE Escola;

CREATE TABLE Alunos (
    IDAluno INT PRIMARY KEY,
    Nome VARCHAR(255)
);

CREATE TABLE Tarefas (
    IDTarefa INT PRIMARY KEY,
    Descricao TEXT,
    IDAluno INT,
    FOREIGN KEY (IDAluno) REFERENCES Alunos(IDAluno)
);

-- Inserindo Dados (DML)
INSERT INTO Alunos (IDAluno, Nome) VALUES (1, 'João');
INSERT INTO Alunos (IDAluno, Nome) VALUES (2, 'Maria');

INSERT INTO Tarefas (IDTarefa, Descricao, IDAluno) VALUES (1, 'Tarefa 1', 1);
INSERT INTO Tarefas (IDTarefa, Descricao, IDAluno) VALUES (2, 'Tarefa 2', 2);

-- Consultas Simples (SELECT)
-- Consulta na tabela Alunos
SELECT * FROM Alunos;

-- Consulta na tabela Tarefas
SELECT * FROM Tarefas;

-- Consulta com INNER JOIN
SELECT Alunos.Nome, Tarefas.Descricao
FROM Alunos
INNER JOIN Tarefas ON Alunos.IDAluno = Tarefas.IDAluno;