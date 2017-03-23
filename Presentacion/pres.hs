-- Se puede llamar a la funcion como tal y devoverá solo el texto.
phoneBook = [("betty", "555-2938")
			,("bonnie","452-2928")
			,("patsy", "493-2928")
			,("lucille", "205-2928")
			,("wendy", "939-8282")
			,("penny", "853-2492")]
			
			
{-
Para poder llamar a ésta funcion se debe de envia un valor y la lista, ejemplo:
		findKey "lucille" phoneBook 
Debe de devolver:
		Just "205-2928"
-}

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs) = if key == k then Just v else findKey key xs

-- By Clair