# Operaciones Básicas en Python y Haskell

Este proyecto implementa operaciones matemáticas básicas (**suma, resta, multiplicación y división**) usando únicamente las funciones de **sucesor (n+1)** y **antecesor (n-1)**.  
La idea es simular cómo funcionan las operaciones aritméticas desde lo más elemental.

---

##  Estructura del Proyecto
- `Suceciones_operaciones.py` → Implementación en **Python**
- `operacionesPeanos.hs` → Implementación en **Haskell**

---

##  Ejecución en Python

### 1. Abrir con Google Colab
1. Sube el archivo `operaciones.py` a [Google Colab](https://colab.research.google.com/). o en su defecto utiliza el siguiente link: https://colab.research.google.com/drive/1IhoX-1ImZqX3eFv2muM5k2FqwyqSSpzm?usp=sharing
2. Copia el código dentro de una celda de Colab.
3. Ejecuta la celda.

### 2. Ejemplo de salida

- Suma: 8
- Resta: 2
- Multiplicación: 15
- División: 5
- División: 4


##  Ejecución en Haskell
### 1. Compilar y ejecutar con GHC:
Primero abre la terminal en la carpeta donde esté tu archivo operacionesPeanos.hs y escribe:
ghc -o operaciones operacionesPeanos.hs

### 1.1. Ejecutar el programa:
- En Windows: .\operaciones.exe
- En Linux/Mac: ./operaciones

### 2. Usando GHCi (modo interactivo)
- Abre la terminal en la carpeta donde tengas el archivo.
- Ejecuta: ghci operacionesPeanos.hs


## 🧪 Ejemplos de uso en GHCi

Al cargar el archivo en **GHCi** (`ghci operacionesPeanos.hs`), podemos probar las funciones de la siguiente forma:

```haskell
Prelude> suma 5 3
Prelude> resta 7 2
Prelude> multiplicacion 4 3
Prelude> division 10 2
Prelude> division 9 2
