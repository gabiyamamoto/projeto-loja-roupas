SELECT
    CLIENTES.nome_cliente,
    VENDAS.data_venda,
    PRODUTOS.nome_produtos,
    PRODUTOS.tamanho,
    PRODUTOS.cor,
    ITENS_VENDA.quantidade
FROM VENDAS
INNER JOIN CLIENTES ON VENDAS.cliente_id = CLIENTES.cliente_id
INNER JOIN ITENS_VENDA ON VENDAS.venda_id = ITENS_VENDA.venda_id
INNER JOIN PRODUTOS ON ITENS_VENDA.produto_id = PRODUTOS.produto_id
WHERE VENDAS.venda_id = 1;

SELECT
    PRODUTOS.nome_produtos,
    PRODUTOS.quantidade_estoque,
    CATEGORIAS.nome_categoria
FROM PRODUTOS
INNER JOIN CATEGORIAS ON PRODUTOS.categoria_id = CATEGORIAS.categoria_id
WHERE CATEGORIAS.nome_categoria = 'Camisetas'
  AND PRODUTOS.quantidade_estoque < 10;

SELECT
    CLIENTES.nome_cliente,
    VENDAS.data_venda
FROM CLIENTES
LEFT JOIN VENDAS ON CLIENTES.cliente_id = VENDAS.cliente_id
ORDER BY CLIENTES.nome_cliente;
