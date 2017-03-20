{-
1.- Definir una funcion que determine el máximo común divisor mediante el algoritmo
de euclides.
2.- Crear una funcion que calcule la serie de fibonacci.
3.- Definir una funcion que calcule la pontencia de cualquier número siendo n la base
y x el exponente.
4.- Crear un programa que dado un número natural como entrada obtenga
el primer digito, el último digito y la cantidad de impares que contiene el numero
y la canti de pares, la suma de sus digitos pares y la suma de sus digitos impares
y que ademas determine si es o no un número primo.
-}



--MCD mediante el algoritmo de euclides
mcd :: Int -> Int -> Int
mcd a 0 = a 
mcd a b = mcd b ( mod a b)

{-
se espera
0   -> 0
0 0 -> 1
0 1 -> 1
1 1 -> 2
1 2 -> 3
2 3 -> 5
3 5 -> 8
-}

--Codigo fibonacci
sf :: Integer -> Integer -> Integer -> Integer -> String
sf a b c d | c > d = ""
			| otherwise = show(a) ++ ", " ++ sf b (a + b) (c + 1) d
			
sfc :: Integer -> String
sfc a = sf 0 1 0 (a - 1)

-- Potencia de un número
potencia :: Floating a => a -> a -> a 
potencia n x = n ** x

{- Programa grande con requisitos:
- Primer digito
- Ultimo digito
- Cantidad pares
- Cantidad impares
- Suma de numeros pares
- suma de numeros impares
- Si es primo o no
-}

-- Primer digito de un numero
{-
primerd :: (Ord a) => [a] -> a
primerd (x:xs) = x
-}

primerd :: [Int] -> Int
primerd n = head n


-- Ultimo digito de un numero
{-
ultimod :: (Ord a) => [a] -> a
ultimod [x] = x
ultimod (x: xs) = ultimod( xs )
-}
ultimod :: [Int] -> Int
ultimod n = last n

-- Cantidad pares
cantP :: [Int] -> Int -> Int
cantP [] n =  n
cantP (x: xs) n = cantP xs (n + (numP  x ))


numP :: Int -> Int
numP n = if (mod n 2) ==  0 then 1 else 0

-- Cantidad inpares
cantIn :: [Int] -> Int -> Int
cantIn [] n = n
cantIn (x: xs) n = cantIn xs (n + (numIn  x ))

numIn :: Int -> Int
numIn n = if (mod n 2) ==  0 then 0 else 1

-- Funcion principal del ultimo programa
numeroNat ::[Int] -> String
numeroNat (x) = "El primer digito es: " ++ show(primerd x) ++
 ", ultimo digito: " ++ show(ultimod x) ++
 ", cantidad de pares: " ++ show(cantP x 0) ++
 ", cantidad de inpares: " ++ show (cantIn x 0) ++
 ", suma pares"

