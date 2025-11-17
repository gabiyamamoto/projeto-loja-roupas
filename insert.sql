INSERT INTO CLIENTES (cliente_id, nome_cliente, email, telefone)
VALUES
(1, 'Lucas Andrade', 'lucas.andrade@gmail.com', '11987654321'),
(2, 'Mariana Reis', 'mariana.reis@gmail.com', '11999887766'),
(3, 'Felipe Moura', 'felipe.moura@gmail.com', '21988554433'),
(4, 'Ana Clara', 'ana.clara@gmail.com', '11977886655'),
(5, 'João Pedro', 'joao.pedro@gmail.com', '31988776655');

INSERT INTO CATEGORIAS (categoria_id, nome_categoria)
VALUES
(1, 'Camisetas'),
(2, 'Moletons'),
(3, 'Calças'),
(4, 'Shorts'),
(5, 'Acessórios');

INSERT INTO PRODUTOS (produto_id, nome_produtos, preco, quantidade_estoque, tamanho, cor, categoria_id)
VALUES
(1, 'Camiseta Oversized Urban', 89.90, 25, 'M', 'Preta', 1),
(2, 'Camiseta Oversized Urban', 89.90, 18, 'G', 'Branca', 1),
(3, 'Moletom Street Vision', 199.90, 12, 'M', 'Cinza', 2),
(4, 'Moletom Street Vision', 199.90, 8, 'G', 'Preto', 2),
(5, 'Calça Cargo Premium', 159.90, 10, 'M', 'Verde Militar', 3),
(6, 'Calça Cargo Premium', 159.90, 7, 'G', 'Preta', 3),
(7, 'Short Urban Flex', 79.90, 20, 'M', 'Preto', 4),
(8, 'Short Urban Flex', 79.90, 22, 'G', 'Cinza', 4),
(9, 'Boné Street Culture', 59.90, 30, 'Único', 'Preto', 5),
(10, 'Boné Street Culture', 59.90, 14, 'Único', 'Bege', 5);

INSERT INTO VENDAS (venda_id, cliente_id, data_venda, endereço_entrega, forma_pagamento)
VALUES
(1, 1, '2025-02-01', 'Rua Alfa, 123 - São Paulo', 'Cartão'),
(2, 2, '2025-02-02', 'Rua Beta, 456 - São Paulo', 'Pix'),
(3, 3, '2025-02-05', 'Av. Central, 1010 - Rio de Janeiro', 'Boleto'),
(4, 4, '2025-02-07', 'Rua das Flores, 88 - São Paulo', 'Cartão'),
(5, 5, '2025-02-10', 'Rua das Laranjeiras, 300 - Belo Horizonte', 'Pix');

INSERT INTO FK_ITENS_VENDA (item_venda_id, venda_id, produto_id, quantidade, preco_unitario)
VALUES
(1, 1, 1, 1, 89.90),
(2, 1, 9, 1, 59.90),

(3, 2, 3, 1, 199.90),
(4, 2, 7, 2, 79.90),

(5, 3, 5, 1, 159.90),
(6, 3, 1, 1, 89.90),

(7, 4, 4, 1, 199.90),
(8, 4, 10, 1, 59.90),

(9, 5, 2, 1, 89.90),
(10, 5, 8, 2, 79.90);
