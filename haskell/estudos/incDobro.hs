double :: Int -> Int
double x = 2 * x

incDouble :: Int -> Int
incDouble x = double x + 1

main :: IO ()
main = do
    input <- readLn :: IO Int
    let output = incDouble input
    print (output)
