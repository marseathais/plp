bmi :: Float -> Float -> String
bmi weight height
    | bmi <= 18.5 = "Underweight"
    | bmi <= 25.0 = "Regular"
    | otherwise = "Overweight"
    where bmi = weight / height ^ 2

main :: IO ()
main = do
    weight <- readLn :: IO Float 
    height <- readLn :: IO Float 
    let output = bmi weight height
    print output