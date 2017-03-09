{-Crear la funcion (es) necesesaria para contar los digitos de un numero, la suma de sus digitos y el 
producto de sus digitos en el resultado de la funcion debe de ser personalizado -}

--Función recursiva que cuenta los digitos //"otherwise" es una palabra reservada
contar::Int -> Int
contar n | n < 10 = 1
		| otherwise = 1 + contar (n `div` 10)
		
--Función que suma el valor de los digitos
sumdig :: Int -> Int
sumdig d | d < 10 = d
		| otherwise = mod d 10 + sumdig(d `div` 10)
		
--Función que multiplica el valor de sus digitos
prodig :: Int -> Int
prodig s | s < 10 = s
		| otherwise = mod s 10 * prodig(s `div` 10)

--Función que imprime el resultado personalizado		
imprime:: Int -> String		
imprime v ="Numero de digitos: "++show(contar v) ++ ", la suma de sus digitos es: " ++ show(sumdig v)++ ", el producto es: "++ show(prodig v)