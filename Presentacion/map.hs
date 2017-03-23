import qualified Data.Map as Map

-- Combiente una lista a un diccionario de datos.
mapFromList = Map.fromList [("betty", "555-2938")
							,("bonnie","452-2928")
							,("patsy", "493-2928")
							,("lucille", "205-2928")]

-- Función que comprueba si una lista está vacia							
emptyMap = Map.empty

-- Funcion que inserta 3 y 100 en una lista vacia
insertMap = Map.insert 3 100 Map.empty

-- Funcion que inserta datos
mInsertMap = Map.insert 5 600 (Map.insert 4 200(Map.insert 3 100 Map.empty))

-- Funcion que inserta datatos como la anterior pero de distinta forma
dMapInsert = Map.insert 5 600 . Map.insert 4 200 . Map.insert 3 100 $ Map.empty




