module Main where

import Test.HUnit
import Exercicio01 (listavezesx)

testListavezesx :: Test
testListavezesx = TestList [
    "teste 1: lista vazia" ~: listavezesx [] 5 ~?= ([] :: [Int]),
    "teste 2: numeros positivos" ~: listavezesx [1, 2, 3] 2 ~?= [2, 4, 6],
    "teste 3: numero negativo" ~: listavezesx [5, 10, 15] (-1) ~?= [-5, -10, -15],
    "teste 4: multiplicar por zero" ~: listavezesx [100, 200] 0 ~?= [0, 0]
    ]

main :: IO ()
main = runTestTT testListavezesx >>= print
