<div align="center">
<h1> Instruções / Instructions 👇🏼 </h1>
</div> 

<div align="center">
<h3> 🇧🇷 </h3>
</div>  
Com o banco de dados para o sistema hospitalar completamente montado, é necessário incluir dados para realizar os devidos testes e validar sua viabilidade quanto a sistema. Nesta etapa, também é importante realizar a separação de alguns scripts iniciais para o banco, com os dados que serão necessários a um povoamento inicial do sistema

Parte 1:

Crie scripts de povoamento das tabelas desenvolvidas na Atividade 2. Observe as seguintes regras:

1. Inclua ao menos dez médicos de ao menos sete especialidades (considere a afirmação de que "entre as especialidades há pediatria, clínica geral, gastroenterologia e dermatologia");
2. Inclua ao menos 15 pacientes;
3. Registre 20 consultas de diferentes pacientes e diferentes médicos (alguns pacientes realizam mais que uma consulta). As consultas devem ter ocorrido entre 01/01/2015 e 01/01/2022;
4. Inclua ao menos quatro convênios médicos, associe ao menos cinco pacientes e cinco consultas;
5. Registre ao menos sete internações. Pelo menos dois pacientes devem ter se internado mais de uma vez. Ao menos três quartos devem ser cadastrados. As internações devem ter ocorrido entre 01/01/2015 e 01/01/2022;
6. Considerando que "a princípio o hospital trabalha com apartamentos, quartos duplos e enfermaria", inclua ao menos esses três tipos com valores diferentes;
7. Inclua dados de dez profissionais de enfermaria;
8. Os dados de tipo de quarto, convênio e especialidade são essenciais para a operação do sistema e, portanto, devem ser povoados assim que o sistema for instalado.

Crie um script para o povoamento básico (os itens essenciais para a implantação do sistema) e outro script para o povoamento geral de dados. Aplique dados o mais próximos possível da realidade.

O script pronto deve estar estruturado de tal maneira que sua execução total - sem alterações - seja bem-sucedida.

Parte 2:

Realize algumas alterações nas tabelas e nos dados usando comandos de atualização e exclusão:

1. Crie uma coluna "em atividade" para os médicos, indicando se ele ainda está atuando no hospital ou não. Crie script para atualizar ao menos dois médicos como inativos e os demais em atividade.
2. Crie script para atualizar as datas de alta nas internações em quartos de enfermaria para três dias após a entrada.
3. Crie script para excluir o último convênio cadastrado e todas as consultas realizadas com esse convênio.

Crie um novo script com essas operações em SQL solicitadas.


<div align="center">
<h3> 🇺🇸 </h3>
</div> 
With the database for the hospital system completely assembled, it is necessary to include data to carry out the necessary tests and validate its viability as a system. At this stage, it is also important to perform the separation of some initial scripts for the database, with the data that will be necessary for an initial population of the system

Part 1:

Create populating scripts for the tables developed in Activity 2. Observe the following rules:

1. Include at least ten physicians from at least seven specialties (consider the statement that "among the specialties there are pediatrics, general practice, gastroenterology and dermatology");
2. Include at least 15 patients;
3. Register 20 appointments from different patients and different doctors (some patients have more than one appointment). Consultations must have taken place between 01/01/2015 and 01/01/2022;
4. Include at least four medical plans, associate at least five patients and five appointments;
5. Record at least seven admissions. At least two patients must have been admitted more than once. At least three quarters must be registered. Admissions must have occurred between 01/01/2015 and 01/01/2022;
6. Considering that "at first the hospital works with apartments, double rooms and a ward", include at least these three types with different values;
7. Include data from ten nursing professionals;
8. Room type, insurance, and specialty data are critical to system operation and therefore must be populated as soon as the system is installed.

Create a script for basic population (the essentials for system deployment) and another script for general data population. Apply data as close to reality as possible.

The finished script must be structured in such a way that its total execution - without changes - is successful.

Part 2:

Perform some changes to tables and data using update and delete commands:

1. Create an "in activity" column for doctors, indicating whether he is still working in the hospital or not. Create a script to update at least two doctors as inactive and the others as active.
2. Create script to update discharge dates on ward room admissions to three days after entry.
3. Create a script to delete the last registered health insurance and all consultations carried out with that health insurance.

Create a new script with these requested SQL operations.
