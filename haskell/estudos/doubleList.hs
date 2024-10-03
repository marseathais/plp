doubleList :: [Int] -> [Int]
doubleList lista = [2 * x | x <- lista]

main :: IO ()
main = do
    input <- readLn :: IO [Int] 
    let output = doubleList input
    print output