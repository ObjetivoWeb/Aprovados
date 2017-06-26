
-- Encontrar dados faltando
-- Este script serve apenas para navegar mais rápido sem precisar carregar tudo

SET @inicio = 3000;
SET @limite = 4000;

SELECT * FROM aprovados where id > @inicio and id < @limite;

select * FROM aprovados;
