-- Trabalho Pratico Integrado de estatistica
-- Grupo 4
-- Tema: Estatistica de uma lista

module Main where

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
            -- Aqui teremos funcoes nas fazes que seguem
            putStrLn $ "Lista de numeros: " ++ show listaNumeros