import qualified Data.Map as Map

mapFromList = Map.fromList [("betty", "555-2938")
							,("bonnie","452-2928")
							,("patsy", "493-2928")
							,("lucille", "205-2928")]

emptyMap = Map.empty

insertMap = Map.insert 3 100 Map.empty

mInsertMap = Map.insert 5 600 (Map.insert 4 200(Map.insert 3 100 Map.empty))

dMapInsert = Map.insert 5 600 . Map.insert 4 200 . Map.insert 3 100 $ Map.empty




