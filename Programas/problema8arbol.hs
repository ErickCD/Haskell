data Arbol a = Hoja | Nodo a (Arbol a) (Arbol a) deriving (Show, Eq)
				
arbol = Nodo 5
			(Nodo 3
					(Nodo 2 Hoja Hoja)
					(Nodo 4 Hoja Hoja))
			
			(Nodo 9
					(Nodo 8 Hoja Hoja)
					(Nodo 10 Hoja Hoja))
					
-- Función que permite calcular el nivel del árbol
nivelArbol :: Arbol a -> Int
nivelArbol Hoja = 0
nivelArbol (Nodo x izq der) = 1 + max (nivelArbol izq) (nivelArbol der)

--------------------------------
--Recorridos en el arbol binario
--------------------------------

-- Recorrido Pre-Orden RID
recorridoPreorden :: Arbol a -> [a]
recorridoPreorden Hoja = []
recorridoPreorden (Nodo raiz izq der) =
					raiz : (recorridoPreorden izq ++ recorridoPreorden der)

-- Recorrido Pos-Orden RDI
recorridoPosOrden :: Arbol a -> [a]
recorridoPosOrden Hoja = []
recorridoPosOrden (Nodo raiz izq der) =
					raiz : (recorridoPosOrden der ++ recorridoPosOrden izq)

-- Recorrido InOrden izq raiz der
recorridoInOrden :: Arbol a -> [a]
recorridoInOrden Hoja = []
recorridoInOrden (Nodo raiz izq der) =
					recorridoInOrden izq ++ [raiz] ++ recorridoInOrden der

--Número de nodos del árbol
nodosArbol :: Arbol a -> Int
nodosArbol Hoja = 0
nodosArbol (Nodo raiz izq der) = 1 + nodosArbol izq + nodosArbol der

--Numero de hojas
numeroHojas :: Arbol a -> Int
numeroHojas Hoja = 1
numeroHojas (Nodo raiz izq der) = numeroHojas izq + numeroHojas der

--Sumar todos los datos del árbol
sumDatosArbol ::  Arbol a -> [a]
sumDatosArbol Hoja = []
sumDatosArbol (Nodo raiz izq der) = raiz: (sumDatosArbol izq ++ sumDatosArbol der)

sumaDatosArbol = sum (sumDatosArbol arbol)
					
-- Implementar una función para calcular el número de nodos que tiene el árbol A

{-
-Definir/crear las funciones:
	Recorrido en preorden
	Recorrido en posorden
	Recorrido en inorden
	Nivel del árbol
	------------------------------------
	Número de nodos del árbol
	La profundidad del árbol binario
	Número de hojas
	Comprobar si un dato pertenece al árbol binario
	Sumar todos los datos del árbol
	------------------------------------
	Crear un programa que permita generar un árbol a partir
	de un archivo de texto plano. El arhivo de texto plano
	debe de contener la estructura del árbol
-}


