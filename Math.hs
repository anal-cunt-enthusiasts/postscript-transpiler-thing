module Math where

import Text.Printf

-- Math Expression
data ME = I Int
          | F Float
          | Ln  ME
          | Neg ME
          | Abs ME
          | Add ME ME
          | Sub ME ME
          | Mul ME ME
          | Div ME ME
          | Mod ME ME
          | Sin ME ME
          | Cos ME ME
          | Exp ME ME
          | Log ME ME
          | IDiv ME ME
          | Atan ME ME
          | Ceil ME
          | Floor ME 
          | Trunc ME
          | Round ME
          | Rand
          deriving (Show)

addunaryop :: ME -> String -> String
addunaryop n operator = printf "%s %s" (matheval n) operator

addbinop :: ME -> ME -> String -> String
addbinop a b operator = printf "%s %s %s" (matheval a) (matheval b) operator

matheval :: ME -> String
matheval (I n)     = show n
matheval (F n)     = show n
matheval (Ln n)    = addunaryop n "ln"
matheval (Abs n)   = addunaryop n "abs"
matheval (Neg n)   = addunaryop n "neg"
matheval (Add a b) = addbinop a b "add"
matheval (Sub a b) = addbinop a b "sub"
matheval (Mul a b) = addbinop a b "mul"
matheval (Div a b) = addbinop a b "div"
matheval (Sin a b) = addbinop a b "sin"
matheval (Cos a b) = addbinop a b "cos"
matheval (Mod a b) = addbinop a b "mod"
matheval (Exp a b) = addbinop a b "exp"
matheval (Log a b) = addbinop a b "log"
matheval (IDiv a b)= addbinop a b "idiv"
matheval (Atan a b)= addbinop a b "atan"
matheval (Ceil n)  = addunaryop n "ceil"
matheval (Floor n) = addunaryop n "Floor"
matheval (Trunc n) = addunaryop n "Trunc"
matheval (Round n) = addunaryop n "Round"
matheval (Rand)    = printf "rand"

