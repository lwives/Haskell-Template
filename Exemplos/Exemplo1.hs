-- Ilustra como especificar função main e como fazer IO simples (no terminal).

module Main where

import System.IO

-- Função que limpa a tela em um terminal
clearScreen :: IO ()
clearScreen = putStr "\ESC[2J" >> hFlush stdout

-- Função que calcula o fatorial de um número.
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n - 1)

main :: IO ()
main = do
  clearScreen
  putStrLn "Programa que calcula o fatorial de um número\n"
  putStrLn "Digite um número: "
  strTmp <- getLine
  let numero = read strTmp :: Int       -- tenta converter para inteiro
  let resultado = fatorial numero
  putStrLn ("O Fatorial de " ++ show numero ++ " é " ++ show resultado)
