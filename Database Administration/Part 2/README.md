<div align="center">
<h1> Instruções / Instructions 👇🏼 </h1>
</div>

<div align="center">
<h3> 🇧🇷 </h3>
</div>

Ainda no contexto do sistema para lojas, após os ajustes de segurança, observaram-se outras necessidades, para as quais devem ser criadas sub-rotinas em banco de dados (stored functions, stored procedures e triggers).

Realize as seguintes ações:

1. Crie um stored procedure que receba id de cliente, data inicial e data final e que mostre a lista de compras realizadas pelo referido cliente entre as datas informadas (incluindo essas datas), mostrando nome do cliente, id da compra, total, nome e quantidade de cada produto comprado. No script, inclua o código de criação e uma chamada ao procedure.
2. Crie uma stored function que receba id de funcionário, data inicial e data final e retorne a comissão total desse funcionário no período indicado. No script, inclua o código de criação e uma chamada à function.
3. Crie uma stored function que receba id de cliente e retorne se o cliente é "PREMIUM" ou "REGULAR". Um cliente é "PREMIUM" se já realizou mais de R$ 10 mil em compras nos últimos dois anos. Um cliente é "REGULAR" se ao contrário. No script, inclua o código de criação e uma chamada à function.
4. Crie um trigger que atue sobre a tabela "usuário" de modo que, ao incluir um novo usuário, aplique automaticamente MD5() à coluna "senha".

------------------------------------------------------------------------------------------------------------------------------------------------------------------

<div align="center">
<h3> 🇺🇸 </h3>
</div>
Still in the context of the system for stores, after the security adjustments, other needs were observed, for which subroutines must be created in the database (stored functions, stored procedures and triggers).

Perform the following actions:

1. Create a stored procedure that receives customer id, start date and end date and that shows the list of purchases made by that customer between the informed dates (including these dates), showing customer name, purchase id, total, name and quantity of each product purchased. In the script, include the creation code and a call to the procedure.
2. Create a stored function that receives employee id, start date and end date and returns the total commission for that employee in the indicated period. In the script, include the creation code and a call to the function.
3. Create a stored function that receives the customer id and returns whether the customer is "PREMIUM" or "REGULAR". A customer is "PREMIUM" if they have made more than R$10,000 in purchases in the last two years. A customer is "REGULAR" if the other way around. In the script, include the creation code and a call to the function.
4. Create a trigger that acts on the "user" table so that, when adding a new user, it automatically applies MD5() to the "password" column.
