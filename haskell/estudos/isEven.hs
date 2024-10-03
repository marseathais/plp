isEven :: (a -> b) -> [Int] -> [Bool]
isEven func = map even 

main :: IO ()
main = do
    list <- readLn :: IO [Int] 
    let output = isEven even list
    print output