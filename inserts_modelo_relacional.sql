INSERT INTO Categoria (idCategoria, descCategoria)
VALUES (1, "Saúde"), (2, "Alimento"), (3, "Estética");

INSERT INTO Distribuidor (idDistribuidor, nmDistribuidor)
VALUES (1, "Ômega"), (2, "Delta"), (3, "Sigma");

INSERT INTO Laboratorio (idLaboratorio, nmLaboratorio)
VALUES (1, "Alfa"), (2, "Beta"), (3, "Gama");

INSERT INTO TipoTarja (idTipoTarja, descTipoTarja)
VALUES (1, "Preta"), (2, "Vermelha"), (3, "Amarela"), (4, "Sem tarja");

INSERT INTO Produto (idProduto, descProduto, vlrProduto, custoProduto, pesoProduto, Categoria_idCategoria, Distribuidor_idDistribuidor)
VALUES (1, "Venvanse", 50.00, 20.00, 10, 1, 3),
(2, "Refrigerante", 3.50, 0.50, 2000, 2, 2),
(3, "Rivotril", 16.50, 5.00, 10, 1, 3),
(4, "Água", 1.00, 0.50, 500, 2, 2),
(5, "Desvenlafaxina", 40.39, 5.48, 9, 1, 3),
(6, "Energético", 5.99, 0.50, 375, 2, 2),
(7, "Paracetamol", 1.00, 0.30, 500, 1, 3),
(8, "Salgadinho", 3.59, 0.79, 100, 2, 2),
(9, "Dipirona", 1.00, 0.50, 9, 1, 3),
(10, "Sorvete", 12.00, 5.00, 9, 2, 2),
(11, "Fentanila", 23.40, 8.99, 9, 1, 3),
(12, "Barrinha de cereal", 2.50, 0.55, 10, 2, 2),
(13, "Ritalina", 60.00, 5.00, 10, 1, 3),
(14, "Máscara facial", 10.00, 5.80, 10, 3, 1),
(15, "Biomag", 70.29, 3.50, 10, 1, 3),
(16, "Hipoglós", 25.00, 10.79, 10, 3, 1),
(17, "Cloridrato Venlafaxina", 30.59, 13.99, 75, 1, 3),
(18, "Pomada Roche-Posay", 25.00, 12.50, 90, 3, 1),
(19, "Acetaminofeno ", 1.00, 0.29, 9, 1, 3),
(20, "Protetor Solar SolMax FPS 50", 14.60, 3.49, 90, 3, 1);

INSERT INTO Medicamento (Produto_idProduto, possui_generico, generico, Laboratorio_idLaboratorio, TipoTarja_idTipoTarja)
VALUES (1, 'S', 'S', 1, 1),
(3, 'S', 'S', 1, 1),
(5, 'S', 'S', 2, 2),
(7, 'N', 'N', 3, 3),
(9, 'S', 'S', 3, 3),
(11, 'N', 'N', 3, 3),
(13, 'N', 'S', 2, 1),
(15, 'S', 'S', 2, 1),
(17, 'N', 'S', 1, 2),
(19, 'S', 'S', 1, 4);

INSERT INTO Marca (idMarca, nmMarca)
VALUES (1, "Health & Care"), (2, "Alimentos Vix"), (3, "Bebidas Vix");

INSERT INTO Conveniência (Produto_idProduto, Marca_idMarca)
VALUES (2, 3),
(4, 3),
(6, 3),
(8, 2),
(10, 2),
(12, 2),
(14, 1),
(16, 1),
(18, 1),
(20, 1);

INSERT INTO Loja (idLoja, nmLoja, nmGerente)
VALUES (1, "Farmácia do Bairro", "Ana Paula"), (2, "PharmaVital", "João Batista"), (3, "Farmácia Saúde & Bem-Estar", "Paulo de Tarso");

INSERT INTO Convenio (idConvenio, nmConvenio, porcentagemDesconto) 
VALUES (1, "Épsilon", 0.10), (2, "Zeta", 0.2), (3, "Lambda", 0.30);

INSERT INTO Venda (idVenda, dtVenda, vlrTotal, Loja_idLoja) 
VALUES (1, "2023-10-29 11:11:48", 92.45, 1), 
(2, "2023-10-29 18:07:28", 28.50, 1),
(3, "2023-10-24 12:12:32", 85.50, 1),
(4, "2023-10-25 14:30:18", 12.00, 1),
(5, "2023-10-25 22:47:45", 40.00, 1),

(6, "2023-10-26 18:07:48", 77.59, 2),
(7, "2023-10-26 15:45:23", 9.79, 2),
(8, "2023-10-24 18:30:48", 69.89, 2),
(9, "2023-10-25 23:30:01", 64.00, 2),

(10, "2023-10-29 12:00:48", 82.19, 3),
(11, "2023-10-29 10:30:48", 50.00, 3),
(12, "2023-10-27 09:07:48", 17.98, 3);

INSERT INTO ItemVenda (Produto_idProduto, Venda_idVenda, qtde, vlrProdutoVenda, custoProdutoVenda, Convenio_idConvenio)
VALUES (1, 1, 1, 85.00, 70.00, 1),
(2, 1, 1, 5.45, 4.00, 1),
(9, 1, 1, 2.00, 1.50, 2),
(3, 2, 1, 26.50, 21.50, 1),
(4, 2, 1, 2.00, 1.50, 2),
(1, 3, 1, 85.00, 70.00, 3),
(4, 4, 1, 2.00, 1.50, 3),
(12, 4, 2, 5.00, 3.05, 1),
(14, 5, 2, 20.00, 15.80, 3),
(19, 6, 1, 2.00, 1.29, 2),
(13, 6, 1, 77.59, 65.00, 2),
(8, 7, 1, 6.79, 4.38, 2),
(7, 7, 2, 3.00, 1.30, 3),
(4, 8, 2, 2.00, 1.50, 3),
(5, 8, 1, 65.89, 45.87, 3),
(4, 9, 2, 2.00, 1.50, 3),
(20, 9, 2, 30.00, 18.09, 1),
(15, 10, 1, 82.19, 73.79, 3),
(10, 11, 2, 25.00, 17.00, 2),
(6, 12, 2, 8.99, 6.49, 2);
