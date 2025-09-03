module Exercicio06 (produtoInterno) where

-- Usando funções de ordem superior ('map', 'fold'...), elabore uma função que receba 
-- duas listas de números reais (representando vetores Euclidianos) e calcule o produto 
-- interno entre esses vetores. Lembre-se de que o produto interno é calculado através 
-- somatório dos produtos dos elementos dos vetores.
-- Considere que os valores dos vetores estão normalizados entre 0.0 e 1.0). 

-- Exemplo: produtoInterno [0.1, 0.4, 0.9] [0.2, 0.4, 0.5] --> 0.63 

-- Dica: a grande maioria das funções de ordem superior só trabalha com 1 lista 
-- (então a dica é tentar agrupar várias listas em uma só, por exemplo, em uma 
-- lista de pares ordenados).

-- Opcional: se desejar aumentar o grau de complexidade, utilize também uma 
-- função anônima (recursiva)!

produtoInterno :: [Int] -> [Int] -> [Int]
produtoInterno ls1 ls2 = undefined -- Implemente aqui