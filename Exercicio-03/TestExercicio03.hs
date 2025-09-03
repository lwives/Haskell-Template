module Main where

import Test.HUnit
import Exercicio03 (replica)

testReplica :: Test
testReplica = TestList [
    "teste 1: replica 2 3" ~: replica 2 3 ~?= [2, 2, 2],
    "teste 2: replica 5 1" ~: replica 5 1 ~?= [5],
    "teste 3: replicacao zero" ~: replica 10 0 ~?= [],
    "teste 4: replicando numero negativo" ~: replica (-1) 2 ~?= [-1, -1],
    "teste 5: replicacao com quantidade negativa" ~: replica 7 (-3) ~?= [],
    "teste 6: replicando o numero 0" ~: replica 0 5 ~?= [0, 0, 0, 0, 0]
    ]

main :: IO ()
main = runTestTT testReplica >>= print