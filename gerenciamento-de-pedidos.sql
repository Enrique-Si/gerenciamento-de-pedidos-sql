DROP DATABASE IF EXISTS Lanchonete;
CREATE DATABASE Lanchonete;
USE Lanchonete;

CREATE TABLE Cliente(
    Cod_Cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_Cliente VARCHAR(50) NOT NULL,
    Telefone_Cliente VARCHAR(15) NOT NULL, 
    End_Logradouro VARCHAR(50) NOT NULL,
    End_Nome VARCHAR(100) NOT NULL, 
    End_Numero INT NOT NULL
);

CREATE TABLE Entregadores(
    Cod_Entregador INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    Tel_Celular VARCHAR(15) NOT NULL
);

CREATE TABLE Lanchonete_Cardapio(
    Cod_Item INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome_Do_Sanduiche VARCHAR(50) NOT NULL,
    Preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pedidos(
    Cod_Pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Data DATE NOT NULL,
    Informacoes_Cliente VARCHAR(100) NOT NULL,
    Status ENUM('0_em_preparacao', '1_entrega', '2_entregue') NOT NULL,
    Entregadores_Cod_Entregador INT NOT NULL,
    Cod_Cliente INT NOT NULL,
    FOREIGN KEY (Entregadores_Cod_Entregador) REFERENCES Entregadores(Cod_Entregador),
    FOREIGN KEY (Cod_Cliente) REFERENCES Cliente(Cod_Cliente) ON DELETE CASCADE
);

CREATE TABLE Itens_Pedidos(
    Cod_Item INT NOT NULL, 
    Cod_Pedido INT NOT NULL, 
    Quantidade INT NOT NULL,
    Preco DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (Cod_Item) REFERENCES Lanchonete_Cardapio(Cod_Item),
    FOREIGN KEY (Cod_Pedido) REFERENCES Pedidos(Cod_Pedido) ON DELETE CASCADE
);

-- INSERINDO CLIENTE
INSERT INTO Cliente(Cod_Cliente, Nome_Cliente, Telefone_Cliente, End_Logradouro, End_Nome, End_Numero)
VALUES (1,'Joao da Silva', '041-99123-4567', 'Rua das Flores', 'Apto 101', 10);

-- INSERINDO ENTREGADORES
INSERT INTO Entregadores(Cod_Entregador, Nome, Tel_Celular)
VALUES (1,'Andre Souza', '041-99876-5432');

-- INSERINDO UM ITEM NO CARDAPIO
INSERT INTO Lanchonete_Cardapio (Cod_Item, Nome_Do_Sanduiche, Preco)
VALUES (1, 'X-Salada', 12.50);

-- INSERINDO UM PEDIDO STATUS ('0 em_preparacao)
INSERT INTO Pedidos(Cod_Pedido, Data, Informacoes_Cliente, Status, Entregadores_Cod_Entregador, Cod_Cliente) 
VALUES (1, '2024-09-01','Joao da Silva - Rua das Flores, Apto 101, 10', '0_em_preparacao',1,1);

-- INSERINDO OS ITENS DO PEDIDO
INSERT INTO Itens_Pedidos(Cod_Item, Cod_Pedido,Quantidade, Preco)
VALUES (1, 1, 2, 25.00);

SELECT * FROM Pedidos WHERE Status = '0_em_preparacao';

