-- =====================================================
-- Projeto SQL Intermediário - Sistema de Vendas
-- Arquivo: schema.sql
-- Descrição: Estrutura do banco de dados (E-commerce)
-- =====================================================

-- Tabela de clientes
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE NOT NULL
);

-- Tabela de categorias
CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de produtos
CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id_pedido SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Tabela de itens do pedido (relação N:N)
CREATE TABLE itens_pedido (
    id_item SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Tabela de pagamentos
CREATE TABLE pagamentos (
    id_pagamento SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    data_pagamento DATE NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);
