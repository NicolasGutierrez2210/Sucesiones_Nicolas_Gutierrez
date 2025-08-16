def sucesor(n):
    return n + 1      # devuelve el numero siguiente

def antecesor(n):
    return n - 1       # devuelve el numero anterior

def suma(a, b):
    if b == 0:
        return a        # caso base: sumar 0 no cambia nada
    elif b > 0:
        return suma(sucesor(a), antecesor(b))  # a+1, b-1 hasta que b=0
    else:
        return suma(antecesor(a), sucesor(b))  # manejar negativos

def resta(a, b):
    if b == 0:
        return a        # caso base: restar 0 no cambia nada
    else:
        return resta(antecesor(a), antecesor(b))  # reducimos ambos hasta que b=0

def multiplicacion(a, b):
    if b == 0:
        return 0        # todo número por 0 es 0
    elif b > 0:
        return suma(a, multiplicacion(a, antecesor(b)))  # suma repetida
    else:
        return -multiplicacion(a, -b)  # si b es negativo

def division(a, b):
    if b == 0:
        raise ValueError("No se puede dividir entre 0")
    if a < b:
        return 0        # cuando a<b ya no se puede seguir restando
    else:
        return sucesor(division(resta(a, b), b))  # resta repetida contando cuántas veces

print("Suma:", suma(5, 3))                 # 8
print("Resta:", resta(5, 3))               # 2
print("Multiplicación:", multiplicacion(5, 3))  # 15
print("División:", division(10, 2))        # 5
print("División:", division(9, 2))         # 4
