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
	date_key int not null,
	full_date date,
	day_of_week tinyint,
	day_num_in_month tinyint,
	day_num_overall smallint,
	day_name varchar(9),
	day_abbrev char(3),
	weekday_flag varchar(10),
	week_num_in_year tinyint,
	week_num_overall smallint,
	week_begin_date date,
	week_begin_date_key int,
	month tinyint,
	month_num_overall int,
	month_name varchar(9),
	month_abbrev char(3),
	quarter tinyint,
	year smallint,
	yearmo int,
	fiscal_month tinyint,
	fiscal_quarter tinyint,
	fiscal_year int,
	last_day_in_month_flag varchar(20),
	same_day_year_ago_date date,
primary key (date_key));

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
	_idDimData INT NOT NULL,
	_idDimProduto INT NOT NULL,
	_idDimLoja INT NOT NULL,
	_idDimConvenio INT NOT NULL,
	qtde INT NOT NULL,
	valorProdutoVenda DECIMAL(4,2) NOT NULL,
	custoProdutoVenda DECIMAL(4,2) NOT NULL,
	custoProduto DECIMAL(4,2) NOT NULL,
    PRIMARY KEY(_idDimData, _idDimProduto, _idDimLoja, _idDimConvenio),
    FOREIGN KEY (_idDimData) REFERENCES dimData(date_key),
    FOREIGN KEY (_idDimProduto) REFERENCES dimProduto(idProduto),
    FOREIGN KEY (_idDimLoja) REFERENCES dimLoja(idLoja),
    FOREIGN KEY (_idDimConvenio) REFERENCES dimConvenio(idConvenio)
);