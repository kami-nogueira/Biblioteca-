BEGIN TRANSACTION;

------------------ TABELA LEITOR ------------------
CREATE TABLE Leitor (
id_leitor INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
telefone TEXT(15),
estado TEXT(50),
cidade TEXT(50),
nome_da_rua TEXT(50),
numero INTEGER
);

------------------ TABELA AUTOR -------------------
CREATE TABLE Autor (
id_autor INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT(30) NOT NULL
);

------------------ TABELA LIVRO -------------------
CREATE TABLE Livro (
id_livro INTEGER PRIMARY KEY AUTOINCREMENT,
titulo TEXT(100),
ano_publicacao TEXT(10),
categoria TEXT(15)
);

------------------ TABELA COPIAS ------------------
CREATE TABLE Copias (
id_copias INTEGER PRIMARY KEY AUTOINCREMENT,
disponibilidade TEXT(10),
estado_conservacao TEXT(10),
id_livro INTEGER NOT NULL,
FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

------------------ TABELA EMPRESTIMO --------------
CREATE TABLE Emprestimo (
id_emprestimo INTEGER PRIMARY KEY AUTOINCREMENT,
data_retirada TEXT(15),
previsao_devolucao TEXT(15),
data_devolucao TEXT(15),
id_leitor INTEGER NOT NULL,
id_copias INTEGER NOT NULL,
FOREIGN KEY (id_leitor) REFERENCES Leitor(id_leitor),
FOREIGN KEY (id_copias) REFERENCES Copias(id_copias)
);

------------------ TABELA LIVRO_AUTOR --------------
CREATE TABLE Livro_Autor (
id_livro INTEGER NOT NULL,
id_autor INTEGER NOT NULL,
FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
PRIMARY KEY (id_livro, id_autor)
);
