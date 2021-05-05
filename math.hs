module Math where

import Text.Printf

-- Math Expression
data ME = Num Int
        | Add ME ME
        | Sub ME ME
        deriving (Show, Eq)
        
matheval :: ME -> String
matheval (Num n)   = show n
matheval (Add a b) = printf "%s %s add =\n" (matheval a) (matheval b)
matheval (Sub a b) = printf "%s %s sub =\n" (matheval a) (matheval b)
