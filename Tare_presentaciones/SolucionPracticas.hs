-- Seccion de importaciones de librerias.
import Test6
import Data.Array
import qualified Data.Set as Set

-- ********************************************************************************************************************
-- Progrmas del equipo 2.

programa01_equipo2 = listArray ((1,1),(2,3)) [1..6]

programa02_equipo2 = array (1,5) [(i,2*i) | i <- [1..5]]

programa03_equipo2 :: Int ->  Array Int Int
programa03_equipo2 n = a where
		    a = array (0,n)
		         ([(0,1),(1,1)] ++ [(i,a!(i-1)+a!(i-2)) | i <- [2..n]])


-- ********************************************************************************************************************
-- Progrmas del equipo 3.

programa01_equipo3 ::[Int]->Int
programa01_equipo3 [] = 0
programa01_equipo3 (x:xs) | x==7=1 + programa01_equipo3(xs) | otherwise = programa01_equipo3(xs)

programa02_equipo3 ::String->String
programa02_equipo3 "" = ""
programa02_equipo3 n|k=="a"||k=="e"||k=="i"||k=="o"||k=="u"=k++(programa02_equipo3 (tail n))
     |otherwise=""++(programa02_equipo3 (tail n))
     where k=take 1 n

vc::[String]->[String]
vc []=[]
vc (x:xs)=(programa02_equipo3 x):(vc xs)


programa03_equipo3 ::Int->Int->Int->Bool
programa03_equipo3 a b 0=True
programa03_equipo3 a b n|(a+b)==n=True
    |a+b>n=False
    |otherwise=programa03_equipo3  b (a+b) n

programa03_equipo3_fibonacci ::[Int]->[Int]
programa03_equipo3_fibonacci []=[]
programa03_equipo3_fibonacci (x:xs)|k==True=x:programa03_equipo3_fibonacci xs
    |otherwise=programa03_equipo3_fibonacci  xs
    where k=programa03_equipo3 0 1 x 



-- ********************************************************************************************************************
-- Programas equipo 4

programa01_equipo4 = writeFile "prueba.txt" programa01_equipo4_write
programa01_equipo4_write = "escu" ++ "ela"

programa02_equipo4 = do
        foo <- putStrLn "Hola, Que color te gusta?"
	color <- getLine
	putStrLn ("Hola, me gusta el color " ++ color ++ " , amigo!")



programa03_equipo4 :: IO ()
programa03_equipo4 = do
       putStrLn "Piensa un numero entre el 1 y el 100."
       programa03_equipo4_adivina 1 100
       putStrLn "Fin del juego"

programa03_equipo4_adivina :: Int -> Int -> IO ()
programa03_equipo4_adivina a b = do
       putStr ("Es " ++ show programa03_equipo4_conjetura ++ " ? [mayor/menor/exacto] ")
       s <- getLine
       case s of
         	"mayor" -> programa03_equipo4_adivina (programa03_equipo4_conjetura+1) b
         	"menor" -> programa03_equipo4_adivina a (programa03_equipo4_conjetura-1)
         	"exacto" -> return ()
         	__ -> programa03_equipo4_adivina a b
    where
      programa03_equipo4_conjetura = (a+b) `div` 2
	  
-- ********************************************************************************************************************
-- Programas equipo 6
eq6r1 = eq6p1
eq6r2 = eq6p2
eq6r3 = eq6p3

-- ********************************************************************************************************************
-- Programas equipo 7
programa01 = Set.fromList [2,3,4] `Set.isSubsetOf` Set.fromList [1,2,3,5,7]

set = Set.fromList "9,3,8,1"
programa02 = do
        print set
        print $ Set.insert 7 $ Set.fromList [9,3,8,1]
        print $ Set.size set
        print $ Set.delete 9 $ Set.fromList [9,3,8,1]

set02 = Set.fromList "The old man left his garbage can out and now his trash is all over my lawn!"
programa03 = do
        print $ set02

-- ********************************************************************************************************************
-- Programas equipo 8

programa01_equipo8_firstX :: (Int , Int ) ->Int
programa01_equipo8_firstX (x , y) = x
programa01_equipo8_firstY :: (Int , Int , Int ) -> Int
programa01_equipo8_firstY (x , y, z) = y

programa02_equipo8 :: Int -> (Int , Int)
programa02_equipo8 x = (x - 1, x + 1)

programa03_equipo8_names ::(String,String,String)
programa03_equipo8_names =("Ana","Fernando","Pablo")
programa03_equipo8_Pri (x,_,_) = x
programa03_equipo8_Seg (_,y,_) = y
programa03_equipo8_Ter (_,_,z) = z
programa03_equipo8_select (x,y,z) = programa03_equipo8_Pri (x,y,z) ++ " " ++ programa03_equipo8_Seg (x,y,z) ++ " " ++ programa03_equipo8_Ter (x,y,z)
programa03_equipo8 = putStr (programa03_equipo8_select(programa03_equipo8_names) ++ "\n")


