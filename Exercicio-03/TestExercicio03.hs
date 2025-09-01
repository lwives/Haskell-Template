module Main where

import Test.HUnit
import Exercicio03 (powlist)

testPowlist :: Test
testPowlist = TestList [
    "teste 1: lista vazia" ~: powlist [] 2 ~?= ([] :: [Int]),
    "teste 2: expoente 2" ~: powlist [2, 3, 4] 2 ~?= [4, 9, 16],
    "teste 3: expoente 3" ~: powlist [2, 3] 3 ~?= [8, 27],
    "teste 4: numeros negativos" ~: powlist [(-2), (-3)] 3 ~?= [(-8), (-27)]
    ]

main :: IO ()
main = runTestTT testPowlist >>= print
