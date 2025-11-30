---------Insert-------
INSERT INTO Leitor (nome, telefone, nome_da_rua, numero, cidade, estado)
VALUES
('KAMILA NOGUEIRA', '1199999-0000', 'RUA HEITOR DOS SANTOS','9', 'SAO PAULO', 'SP'),
('JOAO SANTOS', '1198888-1111', 'RUA JULIO SANTIAGO', '15', 'SAO PAULO', 'SP'),
('MARIA DO CARMO', '1197777-2222', 'RUA PROFESSORA MARIA', '22', 'SAO PAULO', 'SP');


INSERT INTO Livro (titulo, ano_publicacao, categoria)
VALUES
('A ROSA DO POVO', '1945', 'POESIA'),
('MEMORIAS POSTUMAS DE BRAS CUBAS', '1881', 'ROMANCE E FICCAO'),
('A HORA DA ESTRELA', '1977', 'ROMANCE');



INSERT INTO Autor (nome)
VALUES
('CARLOS DRUMMOND DE ANDRADE'),
('MACHADO DE ASSIS'),
('CLARICE LISPECTOR');


INSERT INTO Copias (disponibilidade, estado_conservacao, id_livro)
VALUES
('INDISPONIVEL', 'USADO - BOM', '1'),
('DISPONIVEL', 'USADO - DANIFICADO', '2'),
('DISPONIVEL', 'USADO - REGULAR', '3');

UPDATE Copias
SET disponibilidade = 'DISPONIVEL'
WHERE id_copias = 1;

UPDATE Copias
SET disponibilidade = 'INDISPONIVEL'
WHERE id_copias = 2;

UPDATE Copias
SET disponibilidade = 'DISPONIVEL'
WHERE id_copias = 3;

select * from Copias;

INSERT INTO Emprestimo (data_retirada, previsao_devolucao, data_devolucao, id_leitor, id_copias)
VALUES
('12-10-2025', '12-11-2025', '15-11-2025', '2', '1'),
('14-10-2025', '14-11-2025', '12-11-2025', '1', '3'),
('19-09-2025', '19-10-2025', 'em aberto', '3', '2');
 

INSERT INTO Livro_Autor (id_livro, id_autor)
VALUES
('1', '1'),
('2', '2'),
('3', '3');

 