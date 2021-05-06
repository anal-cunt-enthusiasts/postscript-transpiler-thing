module Statements where

import Data.Char   (toLower)
import Text.Printf (printf)

--type PSBool = "true" | "false"

-- Logical Expression
--data LE = Cond PSBool
data LE = Cond Bool
        | I Int
        | F Float
        | Not   LE
        | And   LE LE
        | Or    LE LE
        | Eq    LE LE
        deriving (Show)

addunaryop :: LE -> String -> String
addunaryop a operator = printf "%s %s" (logiceval a) operator

addbinop :: LE -> LE -> String -> String
addbinop a b operator = printf "%s %s %s" (logiceval a) (logiceval b) operator

logiceval :: LE -> String
-- naive implementation
--logiceval (Cond c) = map toLower $ show c
logiceval (I n)    = show n
logiceval (F f)    = show f
logiceval (Eq a b) = addbinop a b "eq"
logiceval (Or a b) = addbinop a b "or"
logiceval (Not b)  = addunaryop b "not"
logiceval (And a b) = addbinop a b "and"
--logiceval ( a b) = addlogicop a b "" 
