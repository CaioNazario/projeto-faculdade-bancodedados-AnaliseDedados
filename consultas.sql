CREATE DATABASE IF NOT EXISTS cttu;

USE cttu;

-- Qual é a distribuição de indivíduos por faixa de escolaridade?

-- Agrupar por Escolaridade e contar registros.
-- Existe correlação entre escolaridade e renda mensal?
--Cruzar Escolaridade × Renda Mensal.

-- Qual a média de idade por ocupação?
-- Agrupar por Ocupação e calcular média de Idade.

-- Qual a proporção de gêneros por estado civil?
-- Agrupar por Estado Civil e Gênero.

-- Quais são as cinco cidades com maior número de indivíduos com renda acima de 5 
-- salários mínimos?
-- Filtrar Renda Mensal > '5 a 10 SM' e '> 10 SM' e agrupar por Cidade.

-- Quais estados possuem maior concentração de indivíduos com nível superior completo?
-- Filtrar Escolaridade == 'Superior Completo' e agrupar por Estado.

-- Qual a ocupação mais comum entre os indivíduos com ensino médio completo?
-- Filtrar Escolaridade == 'Médio Completo' e contar por Ocupação.

-- Há mais indivíduos solteiros ou casados entre os desempregados?
-- Filtrar Ocupação == 'Desempregado' e agrupar por Estado Civil.

-- Qual é a média de idade dos indivíduos aposentados e casados em cada estado?
-- Filtrar Ocupação == 'Aposentado' e Estado Civil == 'Casado', agrupar por Estado.

-- Desenhe um perfil médio do “cidadão brasileiro” com base nessa amostra.

-- Criar uma descrição baseada nos dados agregados: escolaridade mais comum, ocupação mais 
-- frequente, estado mais representado, etc.