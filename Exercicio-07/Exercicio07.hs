module Exercicio07 (produtoInterno) where

-- Motores de busca (como Google, Yahoo, Bing e outros) são baseados em teorias, 
-- algoritmos e métodos desenvolvidos em uma área chamada de Recuperação de Informações
-- (Information Retrieval). Nessa área, diversos modelos de representação de documentos 
-- foram desenvolvidas. Um dos modelos mais conhecidos é o modelo Espaço-Vetorial, de 
-- Gerald Salton. 

-- Nesse modelo, os documentos (ou páginas Web) são representados como pontos em um 
-- espaço Euclidiano. As dimensões desse espaço são dadas pelas palavras presentes em 
-- todos os documentos (i.e., cada palavra da coleção de documentos é considerada uma 
-- dimensão). A representação dos documentos no espaço é feita, portanto, através de 
-- um vetor de n dimensões, onde cada dimensão é uma palavra com posição fixa no vetor.
-- Todos os vetores possuem a mesma quantidade de dimensões, cada uma com sua posição 
-- (normalmente em ordem alfabética):

-- [palavra1, palavra2, palavra3, ... palavra_n] 

-- Para representar um documento, cada dimensão representa a força (ou peso) da palavra 
-- naquele documento. Caso a palavra não se encontre no documento, ela recebe o peso 0.0. 
-- Caso ela esteja presente, pode-se utilizar uma fórmula de medição de peso. 
-- Existem muitas equações que podem ser utilizadas para calcular o peso (ver tf-idf e 
-- suas variações), sendo uma das mais simples a frequência relativa (i.e., o número 
-- de ocorrências da palavra no documento dividido pelo número de palavras do documento). 

-- Usando funções elaboradas nos exercícios anteriores (norma e produto interno), elabore 
-- uma função que receba duas listas de números reais (representando os vetores de 
-- palavras dos documentos) e calcule a similaridade entre esses dois documentos, 
-- conforme a descrição seguinte (tal definição leva em conta que os valores dos vetores
-- estão normalizados entre 0.0 e 1.0): 

-- sim(A,B) = produtoInterno(A,B) / (norma(A) * norma(B))

-- Perceba que a definição leva em conta o cálculo do cosseno entre os dois vetores 
-- (detalhes em: http://en.wikipedia.org/wiki/Cosine_similarity). 

similaridade :: [Double] -> [Double] -> Double
similaridade ls1 ls2 = undefined -- Implemente aqui