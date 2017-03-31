module Test6 where

import Data.Matrix
import Data.Matrix as X

---------------------------------------------------
--Equipo 6
---------------------------------------------------
		-------------------------------------------
		--Programa 1.- Genere una matriz de 3x3 automáticamente 
		--con los valores de i+4 y almacénelo en X y obtenga el 
		--elemento en la posición 2 2
		-------------------------------------------
eq6p12 = X.fromList 2 3 [4..12]
eq6p1 = getElem 2 2 (X.fromList 3 3 [4..12])

		-------------------------------------------
		--Programa 2.- 2.	Genere una matriz de 6x6 
		--automáticamente con los valores de i+6 y almacénelo 
		--en Y y obtenga la submatriz con dimensiones de 3x3.
		-------------------------------------------
eq6p2 = X.fromList 6 6 [6..41]
eq6p21 = getElem 2 2 (X.fromList 6 6 [6..41])
eq6p22 = submatrix 4 6 4 6 (X.fromList 6 6 [6..41])
		
		-------------------------------------------
		--Programa 3
		-------------------------------------------
eq6p3 = submatrix 4 6 4 6 (X.fromList 6 6 [6..41]) <|> X.fromList 3 3 [4..12]