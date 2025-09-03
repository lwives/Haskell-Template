module Main where

import Test.HUnit
import Test.HUnit.Approx ( (~?=~) )
import Exercicio08 (distanciaManhattan)

testDistanciaManhattan :: Test
testDistanciaManhattan = TestList [
    "teste 1: vetores de exemplo" ~: distanciaManhattan [1.0, 2.0] [3.0, 1.0] ~?=~ 3.0,
    "teste 2: vetores de tamanhos diferentes" ~: distanciaManhattan [1.0, 2.0, 3.0] [1.0, 2.0] ~?=~ 0.0,
    "teste 3: vetores com 1 elemento" ~: distanciaManhattan [5.0] [2.0] ~?=~ 3.0,
    "teste 4: vetores vazios" ~: distanciaManhattan [] [] ~?=~ 0.0,
    "teste 5: valores negativos" ~: distanciaManhattan [(-1.0), 5.0] [(-2.0), 3.0] ~?=~ 3.0
    ]

main :: IO ()
main = runTestTT testDistanciaManhattan >>= print