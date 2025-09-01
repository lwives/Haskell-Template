module Main where

import Test.HUnit
import Exercicio02 (invertelst)

testInvertelst :: Test
testInvertelst = TestList [
    "teste 1: lista vazia" ~: invertelst ([] :: [Int]) ~?= [],
    "teste 2: lista de numeros" ~: invertelst [1, 2, 3, 4] ~?= [4, 3, 2, 1],
    "teste 3: lista de strings" ~: invertelst ["a", "b", "c"] ~?= ["c", "b", "a"],
    "teste 4: lista com um elemento" ~: invertelst [10] ~?= [10]
    ]

main :: IO ()
main = runTestTT testInvertelst >>= print
