
-- Limpar a tabela

ALTER TABLE `test`.`aprovados` 
DROP COLUMN `id`,
DROP PRIMARY KEY;

SET @folder = 'C:\\Aprovados\\';

delete FROM test.aprovados;

-- C:\\Users\\Audiovisual\\Google Drive\\Objetivo\\Aprovados 2016\\Backup

LOAD DATA LOCAL INFILE CONCAT(@folder + 'Aprovados Unespar 2017.csv') INTO TABLE aprovados CHARACTER SET utf8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

delete from aprovados where pp like '%pub%priv%';
update aprovados set pp = 'Pública' where pp like '%pub%';
update aprovados set pp = 'Privada' where pp like '%pri%';

ALTER TABLE `test`.`aprovados` 
ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT AFTER `pp`,
ADD PRIMARY KEY (`id`);

-- Relatório de células em branco

SELECT 
    *
FROM
    aprovados
WHERE
    TRIM(aprovado) <> ''
        AND (TRIM(curso) = '' OR TRIM(faculdade) = ''
        OR TRIM(pp) = '')
ORDER BY aprovado;

-- Resultado de Aprovados

SELECT 
    nome AS 'Nome do aluno',
    tel1 AS 'Telefone 1',
    tel2 AS 'Telefone 2',
    curso AS 'Curso',
    faculdade AS 'Faculdade',
    pp AS 'Pública ou Privada'
FROM
    alunos,
    aprovados
WHERE
    nome = aprovado
ORDER BY nome;
