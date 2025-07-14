# criando índices em banco de dados

💡 Objetivo

Este projeto simula um banco de dados relacional para uma plataforma de e-commerce. O principal foco é a criação de índices otimizados para acelerar consultas, além da aplicação de procedures com lógica condicional para manipulação de dados de forma prática e segura.

Também foram elaboradas consultas SQL para responder a perguntas de negócio comuns em sistemas de vendas online.

 Arquivos do Projeto:

   - e-commerce01.sql: Criação do banco de dados e das tabelas.

   - e-commerce02.sql: Inserção de dados fictícios para testes.

   - consultas.sql: Consultas SQL para responder às perguntas do enunciado.

   - indices.sql: Criação dos índices com base nas consultas realizadas.

   - procedures.sql: Procedure com controle condicional para inserir, atualizar, excluir e consultar dados de cliente.

   - exemplo de uso.sql: Exemplos de chamadas da procedure manage_client.

  ---

🔍 Consultas Realizadas

   - Qual o departamento com maior número de pessoas?

   - Quais são os departamentos por cidade?

   - Qual a relação de empregados por departamento?

Essas consultas estão no arquivo consultas.sql e foram otimizadas com o uso de índices.
⚙️ Índices Criados

Os índices foram definidos com base nas consultas mais executadas e junções mais utilizadas.
Índices utilizados:

 
       idx_company_name_hash
    HASH no campo company_name da tabela thirdpartyseller.
    Motivo: otimizar agrupamentos por nome de empresa.

    idx_location_btree
    BTREE no campo location da tabela thirdpartyseller.
    Motivo: melhorar agrupamentos e filtros por cidade.

    idx_product_order_composto
    BTREE nos campos idproduct, idorders, idcustomer da tabela product_order.
    Motivo: acelerar junções com a tabela thirdpartyseller.

    idx_company_location
    BTREE composto entre company_name e location.
    Motivo: facilitar buscas combinadas por empresa e cidade.

---

🔁 Procedure: manage_client

A procedure manage_client permite realizar diferentes operações na tabela client, de acordo com o valor da variável de controle p_option.
Opção	Ação
1	Inserir cliente
2	Atualizar cliente
3	Excluir cliente
4	Consultar cliente

---

Exemplos de chamada da procedure estão no arquivo exemplo de uso.sql.
✅ Como Executar o Projeto

   - Execute e-commerce01.sql para criar as tabelas.

   - Execute e-commerce02.sql para inserir os dados de teste.

   - Execute indices.sql para aplicar os índices otimizados.

   - Execute consultas.sql para visualizar os resultados.

   - Execute procedures.sql para criar a procedure manage_client.

   - Execute exemplo de uso.sql para testar a procedure com diferentes ações.

---

🔎 Conclusão

Este projeto demonstra, na prática, como a criação de índices pode melhorar significativamente o desempenho de consultas em banco de dados, além de aplicar boas práticas com procedures para a manipulação segura e organizada dos dados.

Todos os nomes de tabelas e colunas foram padronizados em letras minúsculas, e os dados utilizados são fictícios, mas representativos de um ambiente real de e-commerce.

---
📄 Licença

Este projeto está licenciado sob a Licença MIT. Sinta-se livre para usar, estudar e contribuir!

---

## ✨ Autor

- Isabela Veronese 
- [LinkedIn](https://www.linkedin.com/in/isabela-veronese-11058a260)

