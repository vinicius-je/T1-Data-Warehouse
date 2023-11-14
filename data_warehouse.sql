CREATE TABLE dimConvenio (
	idConvenio INT NOT NULL AUTO_INCREMENT,
	nomeConvenio VARCHAR(45) NOT NULL,
	porcentagemDesconto DECIMAL(2,1) NOT NULL,
  PRIMARY KEY(idConvenio)
);

CREATE TABLE dimLoja (
	idLoja  INT NOT NULL AUTO_INCREMENT,
	nomeLoja VARCHAR(30) NOT NULL,
	nomeGerente VARCHAR(45) NOT NULL,
  PRIMARY KEY(idLoja)
);

CREATE TABLE dimData (
	idData VARCHAR(8) NOT NULL,
	data DATE NOT NULL,
	diaDaSemana VARCHAR(15) NOT NULL,
	mes VARCHAR(15) NOT NULL,
	ano INT NOT NULL,
	finalSemana CHAR(1) NOT NULL,
	feriado CHAR(1) NOT NULL,
  PRIMARY KEY(idData)
);

CREATE TABLE dimProduto (
	idProduto INT NOT NULL,
	nomeProduto VARCHAR(45) NOT NULL,
	pesoProduto INT NOT NULL,
  	medicamento CHAR(1) NOT NULL,
	conveniencia CHAR(1) NOT NULL,
	nomeDistribuidor VARCHAR(30) NOT NULL,
	nomeCategoria VARCHAR(30) NOT NULL,
	nomeMarcaConveniencia VARCHAR(30) NOT NULL,
	possuiGenerico VARCHAR(15) NOT NULL,
	generico VARCHAR(15) NOT NULL,
	nomeLaboratorio VARCHAR(20) NOT NULL,
	nomeTipoTarja VARCHAR(45) NOT NULL,
  PRIMARY KEY(idProduto)
);

CREATE TABLE FatoItemVenda (
	_idDimData VARCHAR(8) NOT NULL,
	_idDimProduto INT NOT NULL,
	_idDimLoja INT NOT NULL,
	_idDimConvenio INT NOT NULL,
	qtde INT NOT NULL,
	valorProdutoVenda DECIMAL(4,2) NOT NULL,
	custoProdutoVenda DECIMAL(4,2) NOT NULL,
	valorTotal DECIMAL(4,2) NOT NULL,
	custoProduto DECIMAL(4,2) NOT NULL,
  PRIMARY KEY(_idDimData, _idDimProduto, _idDimLoja, _idDimConvenio),
  FOREIGN KEY (_idDimData) REFERENCES dimData(idData),
  FOREIGN KEY (_idDimProduto) REFERENCES dimProduto(idProduto),
  FOREIGN KEY (_idDimLoja) REFERENCES dimLoja(idLoja),
  FOREIGN KEY (_idDimConvenio) REFERENCES dimConvenio(idConvenio)
);