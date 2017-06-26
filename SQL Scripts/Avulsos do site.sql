
-- Encontrar alunos que informaram na secretaria

SELECT 
    *
FROM
    test.aprovados
WHERE
    aprovado LIKE '%ADRIANE FALCAO DE ARAUJO%'
        OR aprovado LIKE '%BEATRIZ MONTEIRO LEAL%'
        OR aprovado LIKE '%BRUNA RODRIGUES SANTANA%'
        OR aprovado LIKE '%BRUNO CALIL MARINHO%'
        OR aprovado LIKE '%DANIEL BORCHE MAYLINCH%'
        OR aprovado LIKE '%FERNANDO SINKEVICIUS CORREIA DE MELO%'
        OR aprovado LIKE '%GABRIELLY PEREIRA FIGUEIRA%'
        OR aprovado LIKE '%HELENA SILVA MELAO%'
        OR aprovado LIKE '%ISABELA PINHEIRO DE RAMOS MADEIRA%'
        OR aprovado LIKE '%JOYCE MENDES GONCALVES ALMEIDA%'
        OR aprovado LIKE '%LEONARDO YAMAMOTO%'
        OR aprovado LIKE '%LUANA SANTOS RANGEL%'
        OR aprovado LIKE '%MARIA CAROLINE BASTOS FISCHER%'
        OR aprovado LIKE '%NAYARA MARIA DE OLIVEIRA GOMES SILVA%'
        OR aprovado LIKE '%RAFAEL DA SILVA DOMINGOS%'
        OR aprovado LIKE '%SAMANTHA RUIVO SIDOTI%'
        OR aprovado LIKE '%THAIS RODRIGUES DE FREITAS%'
        OR aprovado LIKE '%THIAGO FELICIANO FARIA%'
        OR aprovado LIKE '%VITOR FISCHER DE OLIVERA%';
