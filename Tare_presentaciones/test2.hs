module Test2 where

import Data.Array

---------------------------------------------------
--Equipo 2 Array 
---------------------------------------------------
		-------------------------------------------
		--Programa 1.- Crear un programa donde genere 
		--una lista que contenga una sucesión de números 
		--donde el rango sea del 1 al 6.
		-------------------------------------------
eq2p1 = listArray ((1,1),(2,3)) [1..6]
		-------------------------------------------
		--Programa 2.- Crear un programa donde genere un 
		--vector que contenga números, donde se especifique 
		--el índice de los elementos del vector.  El vector 
		--debe ser de dimensión 5, donde el valor de cada 
		--índice sea multiplicado por x, cuando x es igual a 2.
		-------------------------------------------
eq2p2 = array (1,5) [(i,2*i) | i <- [1..5]]		
		-------------------------------------------
		--Programa 3.- Crear un programa donde se genere una 
		--función, el cual debe estar formado por los n primeros 
		--números de la sucesión Fibonacci. Puede usar un vector 
		--para llegar a la solución.
		-------------------------------------------
		-- ingresar eq2p3 6
eq2p3 :: Int ->  Array Int Int
eq2p3 n  = a where
	a = array (0,n)
	     ([(0,1),(1,1)] ++ 
	     	[(i,a!(i-1)+a!(i-2)) | i <- [2..n]])
			