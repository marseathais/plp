main :: IO()
main = do
    pontosAtual <- getLine
    pontosNivel2 <- getLine
    
    let saida = calculaNivelAtual (read pontosAtual) (read pontosNivel2)
    print saida
    
calculaNivelAtual :: Int -> Int -> Int
calculaNivelAtual atual nivel2 
    | atual == nivel2 = 2
    | atual < (nivel2 * 2) = 1
    | otherwise = 1 + calculaNivelAtual atual (nivel2 * 2)

