# Sistema de Gerenciamento de Biblioteca

## Descrição

Este projeto consiste em um sistema de banco de dados para uma biblioteca, onde são armazenadas informações sobre usuários, livros, empréstimos, endereços e contatos dos usuários.

## Funcionalidades

- Criação de um banco de dados chamado BIBLIOTECA.
- Definição de tabelas: USUARIO, ENDERECO, CONTATO, ACERVO_LIVROS, USUARIO_LIVRO e EMPRESTIMO_DEVOLUCAO.
- Estabelecimento de relacionamentos entre as tabelas conforme necessário.
- Implementação de procedimentos armazenados para adicionar registros de forma simplificada em algumas tabelas.
- Inserção de dados de exemplo nas tabelas principais: USUARIO, ENDERECO, CONTATO, ACERVO_LIVROS e EMPRESTIMO_DEVOLUCAO.

## Como Utilizar

1. Execute o script SQL fornecido em um ambiente compatível com MySQL ou outro sistema de gerenciamento de banco de dados que suporte a sintaxe SQL utilizada.
2. Após a execução do script, o banco de dados BIBLIOTECA será criado e as tabelas serão criadas e populadas com dados de exemplo.
3. Você pode utilizar os procedimentos armazenados ADD_USUARIO, ADD_ENDERECO, ADD_CONTATO, ADD_LIVRO, ADD_USUARIO_LIVRO e ADD_EMPRESTIMO_DEVOLUCAO para adicionar novos registros de forma simplificada.
4. Explore as funcionalidades do sistema de gerenciamento de biblioteca e utilize os dados de exemplo para testar.

## Aviso

Este projeto ainda está em desenvolvimento e pode passar por ajustes e melhorias adicionais. Alterações futuras podem incluir aprimoramentos na estrutura do banco de dados, implementação de novas funcionalidades e otimizações de desempenho.
