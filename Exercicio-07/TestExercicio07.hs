module Main where

import Test.HUnit
import Test.HUnit.Approx ( (~?=~) )
import Exercicio07 (similaridade)

testSimilaridade :: Test
testSimilaridade = TestList [
    -- Exemplo do enunciado
    "teste 1: vetores de exemplo" ~: similaridade [0.1, 0.4, 0.9] [0.2, 0.4, 0.5] ~?=~ 0.63 / (0.547722557505 * 0.7348469228349534),

    -- Casos de teste adicionais
    "teste 2: vetores identicos" ~: similaridade [1.0, 1.0, 1.0] [1.0, 1.0, 1.0] ~?=~ 1.0,
    "teste 3: vetores ortogonais (produto interno 0)" ~: similaridade [1.0, 0.0] [0.0, 1.0] ~?=~ 0.0,
    "teste 4: um vetor vazio" ~: similaridade [1.0, 2.0] [] ~?=~ 0.0,
    "teste 5: ambos os vetores vazios" ~: similaridade [] [] ~?=~ 0.0
    ]

main :: IO ()
main = runTestTT testSimilaridade >>= print