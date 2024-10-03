main :: IO()
main = do
    texto <- getLine

    let saida = expande texto
    print saida

expande :: String -> String
expande [] = []
expande (c:[]) = [c]
expande (h:t) 
    | ehNumerico (head t) = replicate (charToInt (head t)) h ++ expande (drop 1 t)
    | otherwise = h : expande t

ehNumerico :: Char -> Bool
ehNumerico n = n `elem` ['1', '2', '3', '4', '5', '6', '7', '8', '9']

charToInt :: Char -> Int
charToInt c 
    | c == '2' = 2
    | c == '3' = 3
    | c == '4' = 4
    | c == '5' = 5
    | c == '6' = 6
    | c == '7' = 7
    | c == '8' = 8
    | c == '9' = 9