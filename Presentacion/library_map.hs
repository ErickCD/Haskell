import qualified Data.Map as Map

-- Se puede llamar a la función con el mismo nombre
phoneBook =
    [("bety","555-2938")
    ,("bonnie","452-2928")
    ,("patsy","493-2928")
    ,("lucille","205-2928")
    ,("wendy","939-8282")
    ,("penny","853-2492")
    ]

-- Extrae el mapa (directorio) de una lista, vasicamente devuelve el mismo valor pero en directorio	
mapFromList = Map.fromList [("Perro","ff")]

-- Retorna una lista vacia
mapIsEmpty = Map.empty

-- Inseta en un directorio
mapInsert = Map.insert 3 100 Map.empty

mapInsertMore = Map.insert 5 100 . Map.insert 4 200 . Map.insert 3 100 $ Map.empty
mapIsNull = Map.null Map.empty