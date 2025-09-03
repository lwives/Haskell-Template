module Main where

import Test.HUnit
import Exercicio04 (positivos)

testPositivos :: Test
testPositivos = TestList [
    "teste 1: lista com positivos e negativos" ~: positivos [1, 2, -3, 4] ~?= [True, True, False, True],
    "teste 2: lista com zero" ~: positivos [10, 0, -5] ~?= [True, False, False],
    "teste 3: lista com apenas positivos" ~: positivos [1, 2, 3] ~?= [True, True, True],
    "teste 4: lista com apenas negativos e zero" ~: positivos [-1, -2, 0] ~?= [False, False, False],
    "teste 5: lista vazia" ~: positivos [] ~?= [],
    "teste 6: lista com um unico elemento" ~: positivos [50] ~?= [True]
    ]

main :: IO ()
main = runTestTT testPositivos >>= print