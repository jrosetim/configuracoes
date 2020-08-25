seleciona todas as tabelas contendo o nome

SELECT table_name 
FROM information_schema.tables
WHERE table_name like '%receita%'
AND table_type='BASE TABLE';

-----------------------------------------------------------------------
Todos os campos de uma tabela

SELECT column_name, data_type, character_maximum_length
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE table_name = 'tribreceitapadrao';

-----------------------------------------------------------------------