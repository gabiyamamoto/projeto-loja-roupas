SELECT
    c.nome_cliente,
    v.data_venda,
    p.nome_produtos,
    p.tamanho,
    p.cor,
    iv.quantidade
FROM
    VENDAS v
    INNER JOIN CLIENTES c ON v.cliente_id = c.cliente_id
    INNER JOIN FK_ITENS_VENDA iv ON v.venda_id = iv.venda_id
    INNER JOIN PRODUTOS p ON iv.produto_id = p.produto_id
WHERE
    v.venda_id = 1;

SELECT
    p.nome_produtos,
    p.quantidade_estoque,
    c.nome_categoria
FROM
    PRODUTOS p
    INNER JOIN CATEGORIAS c ON p.categoria_id = c.categoria_id
WHERE
    c.nome_categoria = 'Camisetas' AND p.quantidade_estoque < 10;

SELECT
    c.nome_cliente,
    v.data_venda
FROM
    CLIENTES c
    LEFT JOIN VENDAS v ON c.cliente_id = v.cliente_id
ORDER BY
    c.nome_cliente;

CREATE VIEW Vw_Inventario_Completo AS
SELECT
    p.nome_produtos,
    c.nome_categoria,
    p.tamanho,
    p.cor,
    p.preco,
    p.quantidade_estoque
FROM
    PRODUTOS p
    INNER JOIN CATEGORIAS c ON p.categoria_id = c.categoria_id;

CREATE VIEW Vw_Historico_De_Vendas AS
SELECT
    v.data_venda,
    c.nome_cliente,
    p.nome_produtos,
    p.tamanho,
    p.cor,
    iv.quantidade,
    iv.preco_unitario
FROM
    VENDAS v
    INNER JOIN CLIENTES c ON v.cliente_id = c.cliente_id
    INNER JOIN FK_ITENS_VENDA iv ON v.venda_id = iv.venda_id
    INNER JOIN PRODUTOS p ON iv.produto_id = p.produto_id;