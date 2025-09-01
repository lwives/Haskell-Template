-- Este é um arquivo de exemplo para demonstrar algumas funções básicas em Haskell.

-- Função que recebe um número e retorna ele multiplicado por 2.
multiplicaPorDois :: Int -> Int
multiplicaPorDois x = x * 2

-- Função que recebe dois números e retorna a soma deles.
somaDoisNumeros :: Int -> Int -> Int
somaDoisNumeros x y = x + y

-- Função que calcula o fatorial de um número.
-- A função usa recursão.
-- O caso base (n = 0) retorna 1.
-- O caso recursivo (n > 0) retorna n multiplicado pelo fatorial de (n-1).
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)


