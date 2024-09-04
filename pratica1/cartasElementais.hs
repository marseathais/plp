main :: IO()
main = do
    elemento1 <- getLine
    poder1 <- getLine
    
    elemento2 <- getLine
    poder2 <- getLine
    
    let saida = batalha(elemento1, poder1)(elemento2, poder2)
    print saida
    
batalha :: (String, String) -> (String, String) -> String
batalha (elemento1, poder1) (elemento2, poder2)
    | elemento1 == elemento2 = if poder1 == poder2 
            then "empate"
            else if poder1 > poder2
                then "vencedor: carta 1"
                else "vencedor: carta 2"
    | (elemento1, elemento2) `elem`[("fogo", "planta"), ("agua", "fogo"), ("planta", "agua")] = "vencedor: carta 1"
    | (elemento1, elemento2) `elem`[("planta", "fogo"), ("fogo", "agua"), ("agua", "planta")] = "vencedor: carta 2"
    | otherwise = "carta invalida"