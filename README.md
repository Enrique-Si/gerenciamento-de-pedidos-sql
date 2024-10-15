🍔 Sistema de Gerenciamento de Pedidos de Lanchonete (Delivery)

Este projeto foi desenvolvido com o objetivo de criar um sistema de gerenciamento de pedidos para uma lanchonete que trabalha com delivery. Através dele, é possível gerenciar clientes, sanduíches, pedidos, e entregadores, mantendo o controle sobre o status de cada pedido e o processo de entrega.

🎯 Funcionalidades

	•	Cadastro de Clientes: Registro de nome, telefone, código e endereço dos clientes.
	•	Cadastro de Sanduíches: Armazenamento de dados dos itens do cardápio, incluindo código do item, nome e preço.
	•	Cadastro de Entregadores: Registro de nome, código e telefone celular dos entregadores.
	•	Gerenciamento de Pedidos: O cliente pode realizar pedidos de um ou mais sanduíches, informando as quantidades desejadas. Cada pedido possui um código, status (0 – em preparação, 1 – em entrega, 2 – entregue) e a data de emissão.
	•	Consulta de Pedidos em Preparação: É possível listar todos os pedidos que estão em preparação.

📊 Modelagem de Dados

🛠 Modelo Conceitual

	•	Clientes: Inclui informações sobre o nome, telefone, código e endereço dos clientes.
	•	Sanduíches: Cada sanduíche possui um código, nome e preço.
	•	Entregadores: São cadastrados com nome, código e telefone celular.
	•	Pedidos: Um pedido pode conter um ou mais sanduíches, além de registrar a quantidade e o status.

🗂 Modelo Lógico

A modelagem lógica foi realizada no MySQL Workbench e segue as regras de integridade referencial entre as tabelas de clientes, sanduíches, pedidos e entregadores.

🛢 Modelo Físico

O modelo físico foi implementado em MySQL com as seguintes tabelas:

	•	Clientes (id_cliente, nome, telefone, endereco)
	•	Sanduíches (id_sanduiche, nome, preco)
	•	Pedidos (id_pedido, data_emissao, status, id_cliente)
	•	Itens do Pedido (id_pedido, id_sanduiche, quantidade)
	•	Entregadores (id_entregador, nome, telefone)

🔧 Exemplo de Operações

📥 Inserção de um Pedido

🚀 Tecnologias Utilizadas

	•	BrModelo para a criação do modelo conceitual.
	•	MySQL Workbench para modelagem lógica.
	•	MySQL para implementação do modelo físico e consultas SQL.
