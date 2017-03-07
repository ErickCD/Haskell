--Funcion suma
suma :: Int -> Int
suma n = n + 10

--Funcion principal
resultado :: Int -> String
resultado n = "La suma "++show(n)++" + 10 es "++ show(suma n)