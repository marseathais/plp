splitList :: [t] -> Int -> [[t]] 
splitList [] _ = []
splitList list n = 
    if length list >= n 
        then take n list : splitList (drop n list) n
        else 
            [list]

main :: IO ()
main = do
    list <- readLn :: IO [Int] 
    n <- readLn :: IO Int
    let output = splitList list n
    print output