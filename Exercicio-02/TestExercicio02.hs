module Main where

import Test.HUnit
import Exercicio02 (ocorrencias)

testOcorrencias :: Test
testOcorrencias = TestList [
    "teste 1: numero com 2 ocorrencias" ~: ocorrencias [1, 2, 3, 2] 2 ~?= 2,
    "teste 2: numero com 1 ocorrencia" ~: ocorrencias [1, 5, 10] 5 ~?= 1,
    "teste 3: numero sem ocorrencias" ~: ocorrencias [1, 2, 3] 4 ~?= 0,
    "teste 4: lista vazia" ~: ocorrencias [] 10 ~?= 0,
    "teste 5: numero aparece no inicio da lista" ~: ocorrencias [9, 8, 7, 9, 6] 9 ~?= 2,
    "teste 6: numero aparece no final da lista" ~: ocorrencias [1, 2, 3, 3] 3 ~?= 2
    ]

main :: IO ()
main = runTestTT testOcorrencias >>= print