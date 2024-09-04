main :: IO()
main = do
    lista <- getLine

    let saida = encontraMenorDistancia (read lista)
    print saida

encontraMenorDistancia :: [Int] -> Int
encontraMenorDistancia (n:[]) = n
encontraMenorDistancia (h:t) = min ((head t) - h) (encontraMenorDistancia t)