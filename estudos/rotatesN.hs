rotatesN :: [Int] -> Int -> [Int]
rotatesN list n = take (length list) (drop n (cycle list))

main :: IO ()
main = do
    list <- readLn :: IO [Int] 
    n <- readLn :: IO Int
    let output = rotatesN list n
    print output