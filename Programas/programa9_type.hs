-- Uso de type - Permite renombrar un tipo de dato existente en haskell

type Entero = Integer
type DeEnteroEnEntero = Entero -> Entero

cinco :: Entero
cinco = 5

sucesor :: DeEnteroEnEntero
sucesor n = n + 1

--Tipos enumerados
--uso de data
data DiaSemana = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado
				| Domingo deriving Show
-- Función unDia
unDia :: DiaSemana
unDia = Martes

diasLaborales :: [DiaSemana]
diasLaborales = [Lunes, Martes, Miercoles, Jueves, Viernes]

--uso de constructores de datos de DiaSemana como patrones
esFinDeSemana :: DiaSemana -> Bool
esFinDeSemana Sabado = True
esFinDeSemana Domingo = True
esFinDeSemana _ = False

-- Definiciones de tipos - Producto
type Nombre = String
type Apellido1 = String
type Apellido2 = String
type Edad = Integer

--Forma uno para definir un constructor
{-data Persona = UnaPersona Nombre Apellido1 Apellido2 Edad deriving Show

alexis :: Persona
alexis = UnaPersona "Alexis" "Elizalde" "Mendoza" 21
-}

--Forma dos para definir un constructor
data Persona = UnaPersona {nombre :: Nombre, 
							apellido1 :: Apellido1,
							apellido2 :: Apellido2,
							edad :: Edad
							}
							deriving Show

jacky :: Persona
jacky = UnaPersona{
					nombre = "Jacqueline",
					apellido1 = "Morales",
					apellido2 = "Hernandez",
					edad = 21
					}
{-
Implemente una función que permita determinar si un día está congelado
trabajando bajo dos escalas (°C y °F). Para el caso de grados Centigrados
o grados celcius, considere que el día estará congelado, si el grado 
ingresado, es menor o igual a cero. Para el caso de °F considere que
será un dia congelado si el grado o grados será menor a 32°. Utilice
comparación de patrones, la palabra en Data y operadores relacionales.
-}

data centigrados = 

-- Instalación de GTK+ siguiente clase.