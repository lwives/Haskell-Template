module Main where

import Test.HUnit
import Test.HUnit.Approx ( (~?=~) )
import Exercicio06 (produtoInterno)

testProdutoInterno :: Test
testProdutoInterno = TestList [
    "teste 1: vetor do exemplo" ~: produtoInterno [0.1, 0.4, 0.9] [0.2, 0.4, 0.5] ~?=~ 0.63,
    "teste 2: vetores de tamanhos diferentes" ~: produtoInterno [0.5, 0.5] [0.1, 0.1, 0.1] ~?=~ 0.1,
    "teste 3: vetores com 1 elemento" ~: produtoInterno [0.5] [0.4] ~?=~ 0.2,
    "teste 4: vetores vazios" ~: produtoInterno [] [] ~?=~ 0.0,
    "teste 5: vetor vazio e nao vazio" ~: produtoInterno [1, 2] [] ~?=~ 0.0
    ]

main :: IO ()
main = runTestTT testProdutoInterno >>= print