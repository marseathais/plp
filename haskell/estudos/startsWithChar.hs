startsWithChar :: [String] -> Char -> [String]
startsWithChar [] _ = []
startsWithChar list c = [str | str <- list, head str == c]

main :: IO ()
main = do
    list <- readLn :: IO [String] 
    n <- getChar
    let output = startsWithChar list n
    print output