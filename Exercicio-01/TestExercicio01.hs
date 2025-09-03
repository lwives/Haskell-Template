module Main where

import Test.HUnit
import Exercicio01 (pertenceLst)

testPertenceLst :: Test
testPertenceLst = TestList [
    "teste 1: numero no meio da lista" ~: pertenceLst [1, 2, 3, 4] 3 ~?= True,
    "teste 2: numero nao na lista" ~: pertenceLst [1, 2, 3, 4] 5 ~?= False,
    "teste 3: lista vazia" ~: pertenceLst [] 10 ~?= False,
    "teste 4: numero eh o primeiro elemento" ~: pertenceLst [1, 2, 3, 4] 1 ~?= True,
    "teste 5: numero eh o ultimo elemento" ~: pertenceLst [1, 2, 3, 4] 4 ~?= True,
    "teste 6: lista com numeros negativos" ~: pertenceLst [-5, 0, 5] (-5) ~?= True,
    "teste 7: numero nao pertence a lista vazia" ~: pertenceLst [] 0 ~?= False
    ]

main :: IO ()
main = runTestTT testPertenceLst >>= print