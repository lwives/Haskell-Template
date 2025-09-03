module Main where

import Test.HUnit
import Test.HUnit.Approx ( (~?=~) )
import Exercicio05 (norma)

testNorma :: Test
testNorma = TestList [
    "teste 1: vetor com 4 elementos" ~: norma [0.1, 0.2, 0.3, 0.4] ~?=~ 0.547722557505,
    "teste 2: vetor de um elemento" ~: norma [0.5] ~?=~ 0.5,
    "teste 3: vetor com valores zero" ~: norma [0.0, 0.0, 0.0] ~?=~ 0.0,
    "teste 4: vetor com um unico valor nao zero" ~: norma [0.0, 0.8, 0.0] ~?=~ 0.8,
    "teste 5: vetor vazio" ~: norma [] ~?=~ 0.0
    ]

main :: IO ()
main = runTestTT testNorma >>= print