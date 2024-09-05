evenSquares :: [Int]
evenSquares = [n ^ 2 | n <- [1..20], even n]

main :: IO ()
main = do
    let output = evenSquares 
    print output