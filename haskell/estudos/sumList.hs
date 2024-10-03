sumList :: [Int] -> Int
sumList [] = 0
sumList (h:t) = h + sumList t

main :: IO ()
main = do
    input <- readLn :: IO [Int] 
    let output = sumList input
    print output