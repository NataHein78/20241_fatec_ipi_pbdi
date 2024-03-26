DO $$
DECLARE
	n1 NUMERIC(5,2);
	n2 INTEGER;
	limite_inferior INTEGER := 5;
	limite_superior INTEGER := 17;
BEGIN
	-- 0 <= n < 1 (intervalor real)
	n1 := random();
	RAISE NOTICE 'N1: %', n1;
	-- 1 <= n < 10 (real)
	n1 := 1 + random() * 9;
	RAISE NOTICE 'N1: %', n1;
	-- 1 <= n < 10 (inteiro)
	n2 := 1 + floor(random() * 9);
	RAISE NOTICE '%', n2;
	-- simular o lançamento de uma moeda ( 0 ou 1)
	RAISE NOTICE '%', floor(random() * 2);
	-- simular o lançamento de um dado (1 a 6)
	RAISE NOTICE '%', 1 + floor(random() * 6);
	-- 17 <= n <= 33(inteiro)
	RAISE NOTICE '%', 17 + floor(random() * 17);
	-- limite_inferior <= n <= limite_superior
	RAISE NOTICE '%', limite_inferior + floor(random() * (limite_superior - limite_inferior + 1));
	
END;
$$




-- DO $$
-- DECLARE
-- 	codigo integer :=1;
-- 	nome_completo VARCHAR(200) := 'João Santos';
-- 	salario NUMERIC (11, 2) := 20.5;
-- BEGIN
-- 	RAISE NOTICE 'Meu código é %, me chamo % e meu salário é %',
-- 	codigo, nome_completo, salario;
-- END;
-- $$
	
	
-- DO
-- $$
-- BEGIN
-- 	--placeholders
-- 	RAISE NOTICE '% + % = %', 2, 2, 2 + 2;
-- 	RAISE NOTICE 'Meu primeiro bloco anômino';
-- END;
-- $$