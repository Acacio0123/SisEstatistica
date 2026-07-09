-- Trabalho Pratico Integrado de estatistica
-- Grupo 4
-- Tema: Estatistica de uma lista

module Main where

-- Função que calcula a soma de todos os elementos da lista
calcularSoma :: [Double] -> Double
calcularSoma [] = 0
calcularSoma xs = sum xs

-- Função que calcula a média aritmética da lista
calcularMedia :: [Double] -> Double
calcularMedia xs = calcularSoma xs / fromIntegral (length xs)

-- Função para encontrar o maior valor da lista
obterMaior :: [Double] -> Double
obterMaior xs = maximum xs

-- Função para encontrar o menor valor da lista
obterMenor :: [Double] -> Double
obterMenor xs = minimum xs

-- Função para contar a quantidade de elementos na lista
contarElementos :: [Double] -> Int
contarElementos xs = length xs

-- funcao principal
main :: IO ()

main = do 
    putStrLn "==============================================================="
    putStrLn "Sistema de Estatistica de listas"

    -- Leitura de linha digitada pelo utilizador

    entrada <- getLine

    -- Converter a string de entrada buma lista de numeros Double 
    let listaNumeros = map read (words entrada) :: [Double]

    -- validacao 
    if null listaNumeros
        then putStrLn "erro: a lista nao pode estar vazia"
        else do 
            putStrLn "\n===========   RESULTADOS    ============"

            -- Aqui coloco as funcoes que calculam a soma e a media da lista de numeros
            putStrLn "\n--- Resultados ---"
            putStrLn $ "0. Lista de numeros: " ++ show listaNumeros
            putStrLn ("1. Soma: " ++ show (calcularSoma listaNumeros))
            putStrLn ("2. Média: " ++ show (calcularMedia listaNumeros))
            putStrLn ("3. Maior Valor: " ++ show (obterMaior listaNumeros))
            putStrLn ("4. Menor Valor: " ++ show (obterMenor listaNumeros))
            putStrLn ("5. Quantidade de elementos   : " ++ show (contarElementos listaNumeros))