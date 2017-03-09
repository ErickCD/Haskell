{-

1.- Implementar una función con el nombre media5, dicha función debe de recibir 5 parámetro, la función debe de
	calcular la media aritmética de 5 número.
2.- Defina la función volumen de esfera que permita calcular el volumen de la esfera, de radio "r" debe de
	recibir un parámetro "r".
3.- Una función que permita obtener el último digito de un número entero: Ejemplo: 523 --> 3
4.- Función que permita obtener el máximo de 5 números.
5.- Función que determine si 4 números son diferentes.

 -}
 
 --Programa1 media aritmética de 5 numeros
med :: Fractional x => x -> x -> x -> x -> x -> x
med g b c d e = (g + b + c + d + e)/5

--Programa2 volumen de una esfera
volumen :: Floating  x => x -> x
volumen n = (3/4)* pi * n ^ 3
	
 --Programa3 obtiene el ultimo digito de un numero
ultimodig :: Int -> Int
ultimodig n = mod n 10
 
 --Programa4 determina el maximo de 5 numeros
maximo :: Ord v => v -> v -> v -> v -> v -> v
maximo a b c d e = max a ( max b (max c ( max d e)))

