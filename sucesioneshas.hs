-- Definición de la funcion sucesora
sucesor :: Int -> Int
sucesor n = n + 1   -- devuelve el siguiente numero

-- Definición de la funcion predecesora
predecesor :: Int -> Int
predecesor n = n - 1   -- devuelve el numero anterior

-- Suma de dos enteros positivos usando la sucesora
suma :: Int -> Int -> Int
suma a 0 = a   -- caso base: sumar 0 no cambia el valor
suma a b = suma (sucesor a) (predecesor b)   -- aplica sucesor a y resta 1 a b

-- Resta de dos enteros positivos usando la predecesora
resta :: Int -> Int -> Int
resta a 0 = a   -- caso base: restar 0 no cambia el valor
resta a b = resta (predecesor a) (predecesor b)   -- reduce ambos hasta que b sea 0

-- Multiplicacion de dos enteros positivos usando sumas repetidas
multiplicacion :: Int -> Int -> Int
multiplicacion _ 0 = 0   -- caso base: todo numero por 0 es 0
multiplicacion a b = suma a (multiplicacion a (predecesor b))   -- suma a, b veces

-- División de dos enteros positivos usando restas sucesivas
division :: Int -> Int -> Int
division _ 0 = error "No se puede dividir entre 0"   -- controla división entre cero
division a b
    | a < b     = 0   -- si a es menor que b, el cociente es 0
    | otherwise = sucesor (division (resta a b) b)   -- cuenta cuantas veces se puede restar b de a

-- Suma de números reales
addReal :: Float -> Float -> Float
addReal x y = x + y   -- suma normal para valores reales

-- Función principal con pruebas
main :: IO ()
main = do
    print (suma 5 3)              -- resultado: 8
    print (resta 5 3)             -- resultado: 2
    print (multiplicacion 5 3)    -- resultado: 15
    print (division 10 2)         -- resultado: 5
    print (division 9 2)          -- resultado: 4
    print (addReal 5.5 3.2)       -- resultado: 8.7

