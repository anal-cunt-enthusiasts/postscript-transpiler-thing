module Main where

import Math
import Text.Printf

--import System.IO

main :: IO ()
main = do
    putStrLn "%!PS-Adobe-2.0 EPSF-2.0"
    putStrLn $ matheval (Sin (I 4) (Add (I 2) (F 0.5))) ++ " ="
    putStrLn $ matheval (Rand) ++ " ="
    
    {-
    writeFile "result.ps" contents
        where contents = matheval (Add (Num 2) (Num 4))
-}
     
    --putStrLn "%!PS-Adobe-2.0 EPSF-2.0" ++ putStrLn $ matheval (Add (Num 2) (Num 4))
