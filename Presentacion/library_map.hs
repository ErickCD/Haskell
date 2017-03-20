import qualified Data.Map as Map

phoneBook =
    [("bety","555-2938")
    ,("bonnie","452-2928")
    ,("patsy","493-2928")
    ,("lucille","205-2928")
    ,("wendy","939-8282")
    ,("penny","853-2492")
    ]

mapFromList = Map.fromList [("Perro","ff")]
mapIsEmpty = Map.empty
mapInsert = Map.insert 3 100 Map.empty
mapInsertMore = Map.insert 5 100 . Map.insert 4 200 . Map.insert 3 100 $ Map.empty
mapIsNull = Map.null Map.empty