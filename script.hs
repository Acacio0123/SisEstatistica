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
            putStrLn ("Soma: " ++ show (calcularSoma listaNumeros))
            putStrLn ("Média: " ++ show (calcularMedia listaNumeros))

            putStrLn $ "Lista de numeros: " ++ show listaNumeros