CREATE VIEW Vw_Historico_De_Vendas AS
SELECT
    v.data_venda,
    c.nome_cliente,
    p.nome_produtos AS nome_produto,
    p.tamanho,
    p.cor,
    i.quantidade,
    i.preco_unitario AS preco_unitario_na_venda
FROM ITENS_VENDA i
INNER JOIN VENDAS v ON i.venda_id = v.venda_id
INNER JOIN CLIENTES c ON v.cliente_id = c.cliente_id
INNER JOIN PRODUTOS p ON i.produto_id = p.produto_id;
