# Sistema de Gerenciamento de Biblioteca

Este é um sistema de banco de dados para uma biblioteca, projetado para armazenar e gerenciar informações sobre usuários, livros, empréstimos, devoluções, endereços e contatos dos usuários.

## Funcionalidades

- Cadastro de usuários com informações pessoais, endereço e contatos.
- Registro de livros disponíveis no acervo da biblioteca.
- Controle de empréstimos e devoluções de livros.
- Monitoramento de multas por atraso na devolução de livros.

## Estrutura do Banco de Dados

### Tabelas Principais

1. **USUARIO**: Armazena informações sobre os usuários da biblioteca.
2. **ENDERECO**: Contém os endereços dos usuários.
3. **CONTATO**: Registra os contatos dos usuários.
4. **ACERVO_LIVROS**: Mantém o registro dos livros disponíveis na biblioteca.
5. **EMPRESTIMO**: Registra os empréstimos de livros para os usuários.
6. **DEVOLUCAO**: Armazena as devoluções de livros pelos usuários.

### Tabelas de Apoio

1. **RELATORIO**: Utilizada para gerar relatórios sobre empréstimos e devoluções.
2. **MULTA**: Registra as multas aplicadas aos usuários por atraso na devolução de livros.

### Restrições e Triggers

- Restrições de chave estrangeira foram aplicadas para garantir integridade referencial entre as tabelas.
- Um trigger foi implementado para inserir automaticamente registros na tabela RELATORIO após cada novo empréstimo.

## Procedimentos Armazenados

Um procedimento armazenado chamado `ADD_MULTA` foi criado para aplicar multas automaticamente aos usuários que atrasarem a devolução de livros.

## Como Utilizar

1. Clone este repositório ou baixe o arquivo SQL do banco de dados.
2. Execute o script SQL em um ambiente compatível com MySQL ou outro sistema de gerenciamento de banco de dados que suporte a sintaxe SQL utilizada.
3. Após a execução do script, o banco de dados BIBLIOTECA será criado e estará pronto para uso.
4. Utilize os procedimentos armazenados `ADD_MULTA` para aplicar multas manualmente aos usuários.
5. Explore as funcionalidades do sistema e adapte conforme necessário para atender aos requisitos específicos da sua biblioteca.

## Aviso

Este projeto ainda está em desenvolvimento e pode passar por ajustes e melhorias adicionais. Alterações futuras podem incluir aprimoramentos na estrutura do banco de dados, implementação de novas funcionalidades e otimizações de desempenho.
