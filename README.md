# Sistema de Vendas - E-commerce (SQL)

Este projeto consiste na modelagem de um banco de dados relacional para um sistema de vendas de e-commerce, desenvolvido com o objetivo de praticar e demonstrar conceitos intermediários de SQL.

## Objetivo
Criar uma estrutura de banco de dados organizada, normalizada e pronta para consultas analíticas, simulando um sistema real de vendas online.

## Estrutura do Projeto
- `schema.sql` → Contém a criação das tabelas, chaves primárias e relacionamentos
- `README.md` → Documentação do projeto

## Entidades do Banco de Dados
O banco é composto pelas seguintes tabelas principais:
- **clientes** → Informações dos clientes
- **categorias** → Classificação dos produtos
- **produtos** → Catálogo de produtos
- **pedidos** → Registro de compras realizadas
- **itens_pedido** → Detalhamento dos produtos vendidos em cada pedido

## Relacionamentos
- Um cliente pode realizar vários pedidos
- Um pedido pode conter vários produtos
- Cada produto pertence a uma categoria

## Tecnologias Utilizadas
- SQL (PostgreSQL / MySQL compatível)
- GitHub para versionamento

## Próximos Passos
- Inserção de dados fictícios (`INSERT`)
- Consultas com `JOIN`
- Subqueries e agregações
- Consultas analíticas de vendas

## Finalidade
Projeto desenvolvido para fins de estudo e portfólio, com foco em análise de dados e banco de dados relacional.
