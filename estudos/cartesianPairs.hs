cartesianPairs :: Int -> Int -> Int -> Int -> [(Int, Int)]
cartesianPairs a b c d = [(x, y) | x <- [a..b], y <- [c..d]]

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    let output = cartesianPairs a b c d
    print output