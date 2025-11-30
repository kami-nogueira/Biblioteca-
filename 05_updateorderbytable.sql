update Leitor
set nome = 'JOAO DOS SANTOS'
where id_leitor = 2;

select * from leitor

select * from leitor
order BY nome;

------ quantos emprestimos cada pessoa fez-----
  select Le.nome AS leitor,
   COUNT(E.id_emprestimo) AS total_emprestimos
FROM Leitor Le
JOIN emprestimo E ON Le.id_leitor = E.id_leitor
Order BY Le.nome;


  select Le.nome AS leitor,
   COUNT(E.id_emprestimo) AS total_emprestimos
FROM Leitor Le
JOIN emprestimo E ON Le.id_leitor = E.id_leitor
GROUP BY Le.nome
HAVING COUNT(E.id_emprestimo) < 2;

