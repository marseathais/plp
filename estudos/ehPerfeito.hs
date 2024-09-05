ehPerfeito :: Int -> Bool
ehPerfeito n = sum (listaDivisores n) == n 

listaDivisores :: Int -> [Int]
listaDivisores n = [d | d <- [1..(n - 1)], n `mod` d == 0]

main :: IO ()
main = do
    number <- readLn :: IO Int 
    let output = ehPerfeito number
    print output