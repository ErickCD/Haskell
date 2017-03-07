import Data.Char
import Data.List

--Serie de números de 1 - n
ser1 ::Integer->Integer->String 
ser1 a 0="" 
ser1 a n=show(a)++" - "++ser1 (a+1) (n-1)
ser ::Integer->String 
ser n = (ser1 1 n)

--Determina valor nulo
par::Int->Bool
par x = if mod x 2 == 0 then True else False


--Constantes a mayuscula
upperIni :: String -> String
upperIni [] = []
upperIni (x:xs) = toUpper x : aux xs
    where aux (x:xs) = toUpper x : aux xs
          aux []     = []

--Constantes a minusculas		  
lowerIni :: String -> String
lowerIni [] = []
lowerIni (x:xs) = toLower x : aux xs
    where aux (x:xs) = toLower x : aux xs
          aux []     = []