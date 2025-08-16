sucesor :: Int -> Int
sucesor n = n + 1                  -- devuelve el número siguiente

antecesor :: Int -> Int
antecesor n = n - 1                -- devuelve el número anterior

suma :: Int -> Int -> Int
suma a 0 = a                       -- caso base: sumar 0 no cambia nada
suma a b
    | b > 0     = suma (sucesor a) (antecesor b)  -- a+1, b-1 hasta que b=0
    | otherwise = suma (antecesor a) (sucesor b)  -- manejar negativos

resta :: Int -> Int -> Int
resta a 0 = a                      -- caso base: restar 0 no cambia nada
resta a b = resta (antecesor a) (antecesor b)     -- reducimos ambos hasta que b=0

multiplicacion :: Int -> Int -> Int
multiplicacion _ 0 = 0             -- todo número por 0 es 0
multiplicacion a b
    | b > 0     = suma a (multiplicacion a (antecesor b))  -- suma repetida
    | otherwise = -(multiplicacion a (-b))                 -- si b es negativo

division :: Int -> Int -> Int
division _ 0 = error "No se puede dividir entre 0"          -- evitar división por 0
division a b
    | a < b     = 0                    -- cuando a<b ya no se puede seguir restando
    | otherwise = sucesor (division (resta a b) b)  -- resta repetida contando cuántas veces

main :: IO ()
main = do
    print (suma 5 3)              -- 8
    print (resta 5 3)             -- 2
    print (multiplicacion 5 3)    -- 15
    print (division 10 2)         -- 5
    print (division 9 2)          -- 4
