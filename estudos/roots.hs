roots :: Float -> Float -> Float -> [Float]
roots a b c 
    | delta > 0 = []
    | delta == 0 = [-b / (2 * a)] 
    | otherwise = [(-b + sqrt delta) / (2 * a), (-b - sqrt delta) / (2 * a)]
    where delta = b ^ 2 - 4 * a * c
    
main :: IO ()
main = do
    a <- readLn :: IO Float
    b <- readLn :: IO Float
    c <- readLn :: IO Float

    let output = roots a b c
    print output