maxThree :: Int -> Int -> Int -> Int
maxThree x y z 
  | x >= y && x >= z = x
  | y >= z = y
  | otherwise = z

main :: IO ()
main = do
    n1 <- readLn :: IO Int
    n2 <- readLn :: IO Int
    n3 <- readLn :: IO Int
    let output = maxThree n1 n2 n3
    print output