<div align="center">
<h1> Instruções / Instructions 👇🏼 </h1>
</div>

<div align="center">
<h3> 🇧🇷 </h3>
</div>
Um dos clientes - uma loja de eletrônicos do sistema para vendas oferecido pela empresa de desenvolvimento de software onde você trabalha - relatou problemas graves com o banco de dados. Os problemas foram:

- Um acesso indevido aconteceu no banco de dados. As hipóteses são de SQL injection ou de uso indevido de login e senha de funcionário.
- O acesso indevido apagou dados das tabelas de venda e pagamento.
- Um dos funcionários da loja emite periodicamente alguns relatórios com consultas diretas ao banco de dados. Essa pessoa, ao tentar ajudar, acabou removendo ainda duas tabelas. Nota-se que ela usava usuário root.
- O último backup anterior ao desastre aconteceu duas semanas antes. Houve perda de dados, embora, felizmente, a partir das notas fiscais físicas, a loja tenha conseguido recadastrar boa parte das vendas desse período.

Diante dessa situação, a equipe de desenvolvimento precisa agir baseada em procedimentos que diminuam os riscos de um desastre semelhante acontecer no futuro.

A partir de um banco de dados auxiliar disponíbilizado em aula, crie:

1. Crie um usuário específico para relatórios. Crie role para ele, com acesso apenas à consulta em tabelas (nem dados, nem estrutura podem ser alterados).
2. Crie usuário e role para funcionário, o qual pode manipular as tabelas de venda, cliente e produto, mas não deve ter acesso (nem para consulta) a funcionário e cargo e não deve ser capaz de realizar alterações de estrutura em nenhuma tabela.
3. Escolha um método de criptografia ou hash para aplicar às senhas dos usuários. Atualize a tabela "usuário" aplicando a criptografia ou hash ao campo de senha em todos os registros.
4. Elabore um plano de backups regular, montando um script de servidor Linux para rodar periodicamente (especifique o período) ou um agendamento usando uma ferramenta automatizada.

Para os itens 1, 2 e 3, grave em scripts .sql os comandos utilizados. Para o item 4, envie um relatório com evidências do plano de backup, informando ainda a periodicidade recomendada.

<div align="center">
<h3> 🇺🇸 </h3>
</div>
One of the customers - an electronics store on the system for sales offered by the software development company where you work - reported serious problems with the database. The problems were:

- An improper access occurred in the database. Chances are SQL injection or misuse of employee login and password.
- Improper access erased data from the sales and payment tables.
- One of the store's employees periodically issues some reports with direct queries to the database. This person, when trying to help, ended up removing two tables. Note that she used the root user.
- The last backup before the disaster happened two weeks before. There was data loss, although, fortunately, from the physical invoices, the store was able to re-register a good part of the sales of that period.

Faced with this situation, the development team needs to act based on procedures that reduce the risk of a similar disaster happening in the future.

From an auxiliary database available in class, create:

1. Create a specific user for reports. Create role for it, with access only to query tables (neither data nor structure can be changed).
2. Create user and role for employee, which can manipulate the sales, customer and product tables, but must not have access (even for querying) to employee and title and must not be able to make structural changes to any tables.
3. Choose an encryption or hashing method to apply to user passwords. Update the "user" table by encrypting or hashing the password field in all records.
4. Make a plan for regular backups, setting up a Linux server script to run periodically (specify the period) or a schedule using an automated tool.

For items 1, 2 and 3, record the commands used in .sql scripts. For item 4, send a report with evidence of the backup plan, also informing the recommended periodicity.
