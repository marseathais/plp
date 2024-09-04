mdc :: Int -> Int -> Int
mdc x y 
    | x == 0 = abs y
    | otherwise = mdc (mod (abs y) (abs x)) (abs x)

main :: IO ()
main = do
    number1 <- readLn :: IO Int
    number2 <- readLn :: IO Int
    let output = mdc number1 number2
    print output