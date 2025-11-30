----livro+livro_autor+autor

select
     l.id_livro,
     l.titulo,
     A.nome AS autor
 from livro l
 JOIN Livro_autor LA
 ON l.id_livro = LA.id_livro
 JOIN Autor A
 ON LA.id_autor = A. id_autor;
     
 ------livro+copias
 select
 
    l.titulo,
    C.id_copias,
    C.estado_conservacao,
    C.disponibilidade
FROM livro l
JOIN Copias C
ON l.id_livro = C.id_livro;

-------emprestimo+leitor+copias+livro
select
      
    E.id_emprestimo,
    le.id_leitor,
    le.nome AS nome_leitor,
    l.titulo AS livro,
    C.estado_conservacao,
    C.disponibilidade,
    E.data_retirada,
    E.previsao_devolucao,
    E.data_devolucao
from Emprestimo E
JOIN leitor le 
ON E.id_leitor = le.id_leitor
JOIN Copias C
ON E.id_copias = C.id_copias
JOIN Livro L
ON C.id_livro = l.id_livro;

-------lIVRO+AUTOR+COPIAS+LIVRO_AUTOR

select

   l.titulo AS livro,
   A.nome AS Autor,
   C.id_copias,
   C.disponibilidade,
   C.estado_conservacao
from livro l
JOIN livro_autor LA
ON l.id_livro = LA.id_livro
JOIN AUTOR A
ON LA.id_autor = A.id_autor
LEFT JOIN Copias C ON L.id_livro = C.id_livro;

 -------- filtrar categoria---
 select
   L.titulo AS Livro,
   L.categoria,
   L.ano_publicacao,
   C.disponibilidade,
   C.estado_conservacao   
From livro L
Join copias C
ON L.id_livro = c.id_livro
Where l.categoria = 'ROMANCE';

select
UPPER (categoria)
FROM Livro;
