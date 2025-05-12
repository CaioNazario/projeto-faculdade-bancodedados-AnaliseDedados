-- Active: 1746995649327@@localhost@3306@socioecon

-- Qual é a distribuição de indivíduos por faixa de escolaridade?
-- Agrupar por Escolaridade e contar registros.
SELECT escolaridade, COUNT(*) AS quantidade
FROM socio_economico
GROUP BY escolaridade;

-- Existe correlação entre escolaridade e renda mensal?
--Cruzar Escolaridade × Renda Mensal.
SELECT Escolaridade, 
       AVG(Renda_Mensal) AS Media_Renda, 
       COUNT(*) AS Total_Pessoas
FROM socio_economico
GROUP BY Escolaridade
ORDER BY Escolaridade ASC;

SELECT Escolaridade, Renda_Mensal, COUNT(*) AS quantidade
FROM socio_economico
GROUP BY Escolaridade, Renda_Mensal
ORDER BY  Renda_Mensal;

-- Qual a média de idade por ocupação?
-- Agrupar por Ocupação e calcular média de Idade.
SELECT Ocupacao, AVG(Idade) AS Media_Idade
FROM socio_economico
GROUP BY Ocupacao;

-- Qual a proporção de gêneros por estado civil?
-- Agrupar por Estado Civil e Gênero.

SELECT Estado_Civil, Genero, COUNT(*) AS quantidade
FROM socio_economico
GROUP BY Estado_Civil, Genero
ORDER BY Estado_Civil ASC, Genero ASC;

-- Quais são as cinco cidades com maior número de indivíduos com renda acima de 5 salários mínimos?
-- Filtrar Renda Mensal > '5 a 10 SM' e '> 10 SM' e agrupar por Cidade.

SELECT Cidade, Renda_Mensal, COUNT(*) AS Quantidade
FROM socio_economico
WHERE Renda_Mensal IN ('5 a 10 SM', '> 10 SM')
GROUP BY Cidade, Renda_Mensal
ORDER BY Quantidade DESC
LIMIT 5;

-- Quais estados possuem maior concentração de indivíduos com nível superior completo?
-- Filtrar Escolaridade == 'Superior Completo' e agrupar por Estado.

SELECT Estado, COUNT(*) AS Quant
FROM socio_economico
WHERE Escolaridade = "Superior Completo"
GROUP BY Estado, Escolaridade
ORDER BY Quant DESC;

-- Qual a ocupação mais comum entre os indivíduos com ensino médio completo?
-- Filtrar Escolaridade == 'Médio Completo' e contar por Ocupação.

SELECT Ocupacao, COUNT(*) AS Quant
FROM socio_economico
WHERE Escolaridade = "Médio Completo"
GROUP BY Ocupacao, Escolaridade
ORDER BY Quant DESC;

-- Há mais indivíduos solteiros ou casados entre os desempregados?
-- Filtrar Ocupação == 'Desempregado' e agrupar por Estado Civil.

SELECT Estado_Civil, Ocupacao, COUNT(*) AS Quant
FROM socio_economico
WHERE Ocupacao = "Desempregado" AND Estado_Civil IN ('Solteiro', "Casado")
GROUP BY Estado_Civil
ORDER BY Quant DESC;

-- Qual é a média de idade dos indivíduos aposentados e casados em cada estado?
-- Filtrar Ocupação == 'Aposentado' e Estado Civil == 'Casado', agrupar por Estado.
SELECT AVG(Idade) AS M_idade, Estado, Ocupacao,Estado_Civil
FROM socio_economico
WHERE Ocupacao = "Aposentado" AND Estado_Civil = "Casado"
GROUP BY Estado
ORDER BY Estado ASC;

-- Desenhe um perfil médio do “cidadão brasileiro” com base nessa amostra.

-- Criar uma descrição baseada nos dados agregados: escolaridade mais comum, ocupação mais frequente, estado mais representado, etc.

--Escolaridade
SELECT Escolaridade, COUNT(*) as quant
FROM socio_economico
GROUP BY Escolaridade
ORDER BY quant DESC
LIMIT 3;

--Ocupação
SELECT Ocupacao, COUNT(*) as quant
FROM socio_economico
GROUP BY Ocupacao
ORDER BY quant DESC
LIMIT 3;

--Estado mais representado
SELECT Estado, COUNT(*) AS quant
FROM socio_economico
GROUP BY Estado
ORDER BY quant DESC
LIMIT 3;

--Faixa etária mais comum
SELECT
  CASE
    WHEN Idade BETWEEN 18 AND 24 THEN '18-24'
    WHEN Idade BETWEEN 25 AND 34 THEN '25-34'
    WHEN Idade BETWEEN 35 AND 44 THEN '35-44'
    WHEN Idade BETWEEN 45 AND 59 THEN '45-59'
    ELSE '60+'
  END AS Faixa_Etaria,
  COUNT(*) AS quant
FROM socio_economico
GROUP BY Faixa_Etaria
ORDER BY quant DESC
LIMIT 3;

--Gênero Predominante
SELECT Genero, COUNT(*) AS quant
FROM socio_economico
GROUP BY Genero
ORDER BY quant DESC
LIMIT 3;


--Faixa de renda
SELECT Renda_Mensal, COUNT(*) as quant
FROM socio_economico
GROUP BY `Renda_Mensal`
ORDER BY quant DESC;
