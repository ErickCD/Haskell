module Test4 where

---------------------------------------------------
--Equipo 4
---------------------------------------------------
		-------------------------------------------
		--Programa 1.- Crear un programa que lea un archivo .txt, 
		--y escriba en el mismo archivo una frase u oración.
		-------------------------------------------
eq4p1 = writeFile "prueba.txt" write
write = "A " ++ "test"
		-------------------------------------------
		--Programa 2.- Crear un programa en el cual preguntara el color
		--que te gusta, y el usuario introducirá el color y lo agregara 
		--a una cadena predefinida en el programa, utilizando putStrLn y getLine.
		-------------------------------------------

eq4p2:: IO ()		
eq4p2 = do
		foo <- putStrLn "Hola, ¿que color te gusta?" 
		color <- getLine
		putStrLn ("¡Hola!, me gusta el color: "++ color ++ ", amigo.")


		-------------------------------------------
		--Programa 3.- Crear un programa le pide al usuario que piense un número
		--entre 1 y 100, el programa tratara de adivinar el número que el usuario 
		--haya pensado planteándole conjeturas a las que el usuario responde con 
		--mayor, menor o exacto según que el número que la maquina haya propuesto. 
		-------------------------------------------

eq4p3 :: IO ()
eq4p3 = do
		putStrLn "Piensa un numero entre el 1 y el 100."
		adivina 1 100
		putStrLn "Fin del juego"
	   

adivina :: Int -> Int -> IO ()
adivina a b =
    do putStr ("Es " ++ show conjetura ++ "? [mayor/menor/exacto] ")
       s <- getLine
       case s of
         "mayor"  -> adivina (conjetura+1) b
         "menor"  -> adivina a (conjetura-1)
         "exacto" -> return ()
         _        -> adivina a b
    where
      conjetura = (a+b) `div` 2
