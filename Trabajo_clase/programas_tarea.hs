import qualified Data.Map as Map

-- Lista basica de usuario para utilizar
lista = [("juan", "20")
		,("Maria","19")
		,("Julian", "20")
		,("Betty", "18")
		,("John", "22")]

{- 
Primer programa
Convierte de una lista a un directorio por Map
-}
mapFromList = Map.fromList lista


{-
Segundo programa
Utiliza el directorio creado anteriormente y le anexa:
("Miriam", "20") y ("Erik", "18")
-}
insertMap = Map.insert "Miriam" "20"(Map.insert "Erik" "18" mapFromList)

{-
Tercer programa
Con el ultimo directorio creado se hace un programa que dado un valor busca que exista.

Ejemplo:
					finalTercero "Erik"
Y el resultado sería:
					El usuario Erik si existe
o
					El usuario Erick no existe
-}

--Esta parte de la funcion solo compruba que el valor exista en el directorio y
--Devuelve un True o un False
tercero :: String -> Bool
tercero x = Map.member x $ insertMap

finalTercero :: String -> String
finalTercero x = if (tercero x) == True then show("El usuario " ++ x ++ " si existe") else
 show("El usuario " ++ x ++ " no existe")
