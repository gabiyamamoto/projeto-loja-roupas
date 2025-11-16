CREATE TABLE CLIENTES (
    cliente_id SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE CATEGORIAS (
    categoria_id SERIAL PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE PRODUTOS (
    produto_id SERIAL PRIMARY KEY,
    nome_produtos VARCHAR(120) NOT NULL,
    preco DECIMAL (10,2) NOT NULL CHECK (preco >= 0),
    quantidade_estoque INT NOT NULL CHECK (quantidade_estoque >= 0),
    tamanho VARCHAR(10) NOT NULL,
    cor VARCHAR(50) NOT NULL,
    categoria_id INT NOT NULL,

    CONSTRAINT FK_PRODUTOS_CATEGORIAS
        FOREIGN KEY (categoria_id) REFERENCES CATEGORIAS (categoria_id)
);

CREATE TABLE VENDAS (
    venda_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    endereço_entrega VARCHAR(200) NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,

    CONSTRAINT FK_VENDAS_CLIENTES
        FOREIGN KEY (cliente_id) REFERENCES CLIENTES (cliente_id)
);

CREATE TABLE FK_ITENS_VENDA (
    item_venda_id SERIAL PRIMARY KEY,
    venda_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    preco_unitario DECIMAL(10,1) NOY NULL CHECK (preco_unitario >= 0),

    CONSTRAINT FK_ITENS_VENDA_VENDAS
        FOREIGN KEY (venda_id) REFERENCES VENDAS (venda_id),

    CONSTRAINT FK_ITENS_VENDA_PRODUTOS
        FOREIGN KEY (produto_id) REFERENCES PRODUTOS (produto_id)
)