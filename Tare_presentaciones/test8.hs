module Test8 where

---------------------------------------------------
--Equipo 5
---------------------------------------------------
		-------------------------------------------
		--Programa 1.- 
		-------------------------------------------
funcionx :: (Int , Int ) -> Int
funcionx (x , y) = x

funciony :: (Int , Int , Int ) -> Int
funciony(x , y, z) = y

		-------------------------------------------
		--Programa 2
		-------------------------------------------
sumaResta :: Int -> (Int , Int)
sumaResta x = (x - 1, x + 1)

		-------------------------------------------
		--Programa 3
		-------------------------------------------
nombres::(String,String,String)
nombres=("Ana","Fernando","Pablo")

selecPrim(x,_,_)=x
selecSeg(_,y,_)=y
selecTer(_,_,z)=z