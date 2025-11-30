<div align = "center">

# 📚 Sistema de Banco de Dados – Biblioteca *Origem do Saber*
### Projeto Acadêmico – Faculdade UNICID

Esse projeto tem como objetivo modelar e implementar um *sistema de banco de dados para uma biblioteca*, contemplando cadastro de leitores, livros, autores e demais operações necessárias para o funcionamento de uma biblioteca.
O foco principal é a *modelagem do banco de dados*, incluindo:

- Criação do *minimundo*;
- Construção do **DER**
- Conversão para o modelo lógico;
- Criação das tabelas em SQL;
- Inserção de dados;
- Consultas com 'JOIN', 'GROUP BY', 'ORDER BY', 'COUNT', entre outras.


## 📌 Estrutura do Banco de Dados

### **Entidades principais**

- Leitor;
- Livro;
- Autor;
- Emprestimo;
- Copias.

  ### **Relacionamentos**
- Leitor 1:N Empréstimo  
- Livro N:N Autor  
- Livro 1:N Exemplar  
- Empréstimo N:1 Exemplar
