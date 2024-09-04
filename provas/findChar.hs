findChar :: String -> Char -> Bool
findChar "" _ = False
findChar (h:t) c
  | h == c = True
  | otherwise = findChar t c

main :: IO ()
main = do
    str <- getLine
    c <- getChar
    let output = findChar str c 
    print output 

