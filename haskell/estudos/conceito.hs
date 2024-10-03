conceito :: Float -> Char
conceito nota 
    | nota >= 9.0 = 'A'
    | nota >= 7.5 = 'B'
    | nota >= 6 = 'C'
    | nota >= 4.0 = 'D'
    | otherwise = 'E'

main :: IO ()
main = do
    nota <- readLn :: IO Float 
    let output = conceito nota
    print output