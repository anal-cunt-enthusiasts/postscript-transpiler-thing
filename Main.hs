module Main where

{-# LANGUAGE ExtendedDefaultRules #-}

import qualified Math as M
import Statements     as S

--import System.IO

main :: IO ()
main = do
    -- I should add some real file IO
    putStrLn "%!PS-Adobe-2.0 EPSF-2.0"
    putStrLn $ M.matheval  (M.Sin (M.I 4) (M.Add (M.I 2) (M.F 0.5))) ++ " ="
    putStrLn $ S.logiceval (S.Or (S.Eq (I 2) (I 5)) (S.Eq (I 6) (I 6))) ++ " ="
   
--    putStrLn $ matheval (Rand) ++ " ="
    
    {-
    writeFile "result.ps" contents
        where contents = matheval (Add (Num 2) (Num 4))
-}
     
    --putStrLn "%!PS-Adobe-2.0 EPSF-2.0" ++ putStrLn $ matheval (Add (Num 2) (Num 4))
