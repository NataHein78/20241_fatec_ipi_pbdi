DO $$
DECLARE
	n1 INTEGER;
	n2 NUMERIC(3,1);
	n3 NUMERIC(3,1);
	a1 NUMERIC(3,1);
	b2 NUMERIC(3,1);
	c3 NUMERIC(3,1);

BEGIN
	-- 1 | GERANDO VALOR INTEIRO E GERANDO / 1 <= n < 100 (intervalor inteiro)
	n1 := 1 + floor(random() * 99);
	RAISE NOTICE '% inteiro', n1;
	-- 2 | GERANDO VALOR REAL E EXIBINDO 
	n2 := 1 + random() * 9;
	RAISE NOTICE '% Real', n2;
	-- 3 | 20 <= n <= 30
	n2 := 20 + floor(random()) * 11;
	n3 := n2 * 1.8 + 32;
	RAISE NOTICE 'Temperatura % ℉', n3;
	-- 4 | program de valores reais a,b,c mostre delta
	
	a1 := 1 + floor(random() * 9);
	b2 := 1 + floor(random() * 9);
	c3 := 1 - floor(random() * 9);
	RAISE NOTICE '%, %, %', a1, b2, c3;
	
	n2 := b2^2;
	
	RAISE NOTICE '∆ %', n2 -4 * (a1 * c3);
	
END;
$$