mdc :: Int -> Int -> Int
mdc x y 
    | x == 0 = abs y
    | otherwise = mdc (mod (abs y) (abs x)) (abs x)

mmc :: Int -> Int -> Int
mmc x y = abs (x * y) `div` mdc x y 

main :: IO ()
main = do
    n1 <- readLn :: IO Int
    n2 <- readLn :: IO Int
    let output = mmc n1 n2
    print output