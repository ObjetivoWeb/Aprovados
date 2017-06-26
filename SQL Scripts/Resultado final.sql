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

SELECT * FROM `test`.`alunos` WHERE nome LIKE '%GRECO%';

SELECT * FROM test.aprovados where aprovado like '%YANKA GRECO GUIMARAES%';
