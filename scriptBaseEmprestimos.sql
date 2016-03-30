-- DATABASE emprestimos;

CREATE TABLE usuarios
(
   codigo serial NOT NULL,
   nome VARCHAR(40),
   senha VARCHAR(20),
   PRIMARY KEY (codigo)
);

CREATE TABLE categorias
(
   codigo serial NOT NULL,
   descricao VARCHAR (40),
   PRIMARY KEY (codigo)
);


CREATE TABLE itens
(
   codigo serial NOT NULL,
   descricao VARCHAR (40),
   codigo_categorias INT NOT NULL,
   PRIMARY KEY (codigo),
   FOREIGN KEY (codigo_categorias) REFERENCES categorias (codigo)
);

CREATE TABLE pessoas
(
   codigo serial NOT NULL,
   nome VARCHAR (50),
   email VARCHAR (40),
   telefone VARCHAR (13),
   PRIMARY KEY (codigo)
);

CREATE TABLE emprestimos
(
   codigo serial NOT NULL,
   codigo_pessoas INT NOT NULL,
   data_emprestimo DATE,
   data_devolucao DATE,
   PRIMARY KEY (codigo),
   FOREIGN KEY (codigo_pessoas) REFERENCES pessoas (codigo)
);

CREATE TABLE itens_emprestimos
(
   codigo serial NOT NULL,
   descricao VARCHAR (40),
   quantidade INT,
   codigo_itens INT NOT NULL,
   codigo_emprestimos INT NOT NULL,
   PRIMARY KEY (codigo),
   FOREIGN KEY (codigo_itens) REFERENCES itens (codigo),
   FOREIGN KEY (codigo_emprestimos) REFERENCES emprestimos (codigo)
);
