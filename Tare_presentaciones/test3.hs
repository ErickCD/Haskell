module Test3 where

---------------------------------------------------
--Equipo 3
---------------------------------------------------
		-------------------------------------------
		--Programa 1.- Mostrar cuantas veses se repite un numero(en 
		--este caso cuantas veses se repite el 7), mostrarlo
		-------------------------------------------
eq3p1::[Int]->Int
eq3p1 []=0
eq3p1 (x:xs) |x==7=1 + eq3p1(xs)
   |otherwise=eq3p1(xs)

		-------------------------------------------
		--Programa 2.- Programa que extrae las vocales
		--de una cadena, eq3p2 "erad", "ea"
		-------------------------------------------
eq3p2::String->String
eq3p2 ""=""
eq3p2 n|k=="a"||k=="e"||k=="i"||k=="o"||k=="u"=k++(eq3p2 (tail n))
     |otherwise=""++(eq3p2 (tail n))
     where k=take 1 n		
		-------------------------------------------
		--Programa 3.- Crear un programa que dada una lista de números 
		--enteros, devuelve solo aquellos numeros que pertenecen a la 
		--serie de fibonacci.
		-------------------------------------------
ver::Int->Int->Int->Bool
ver a b 0=True
ver a b n|(a+b)==n=True
    |a+b>n=False
    |otherwise=ver b (a+b) n

eq3p3::[Int]->[Int]
eq3p3 []=[]
eq3p3 (x:xs)|k==True=x:eq3p3 xs
    |otherwise=eq3p3 xs
    where k=ver 0 1 x
	
	